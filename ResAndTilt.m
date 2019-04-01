function [line,fitresult,gof,FWHM,peak] = ResAndTilt(node,pos)

load('G:\Cal\Cal','Cal');

sens = Cal.sens;

Img = load_mat();
Img = shift_fov( Cal, Img );

Proj = Img.dat(:,:,node);
Proj = ((Proj - min(Proj))*((max(sens)-min(sens))/(max(Proj)-min(Proj))))+min(sens);

switch pos
    case 'pm'
        X{1} = 75:194;
        line{1} = sum(Proj(X{1},75:215),2);
        reLine{1} = resample(line{1},128,120);
        sumLine{1} = sum(reshape(reLine{1},8,16));
        reX{1} = resample(X{1},128,120);
        sumX{1} = mean(reshape(reX{1},8,16)); 
        
        X{2} = 300:359;
        line{2} = sum(Proj(X{2},75:215),2);
        reLine{2} = resample(line{2},64,60);
        sumLine{2} = sum(reshape(reLine{2},8,8));
        reX{2} = resample(X{2},64,60);
        sumX{2} = mean(reshape(reX{2},8,8));
        
        [fitresult{1}, gof{1}] = FitGauss1(sumX{1},sumLine{1},median(sumX{1}));
        [fitresult{2}, gof{2}] = FitGauss1(sumX{2},sumLine{2},median(sumX{2}));
        sigma{1} = fitresult{1}.c1/sqrt(2);
        sigma{2} = fitresult{2}.c1/sqrt(2);
        FWHM{1} = 2*sqrt(2*log(2))*sigma{1}*0.2;
        FWHM{2} = 2*sqrt(2*log(2))*sigma{2}*0.2;
        
        peak{1} =  fitresult{1}.b1*0.2 + 20 ;
        peak{2} =  fitresult{2}.b1*0.2 - 20 ;
        
    case 'c'
        X = 181:285;
        line = sum(Proj(X,75:215),2);
        reLine = resample(line,104,105);
        sumLine = sum(reshape(reLine,8,13));
        reX = resample(X,104,105);
        sumX = mean(reshape(reX,8,13));
        
        [fitresult, gof] = FitGauss1(sumX,sumLine,median(sumX));
        sigma = fitresult.c1/sqrt(2);
        FWHM = 2*sqrt(2*log(2))*sigma*0.2;
        
        peak =  fitresult.b1*0.2; 
end


end


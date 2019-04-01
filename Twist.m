function [line,fitresult,gof,peak] = Twist(node,pos)

load('G:\Cal\Cal','Cal');

sens = Cal.sens;

Img = load_mat();
Img = shift_fov( Cal, Img );

Proj = Img.dat(:,:,node);
Proj = ((Proj - min(Proj))*((max(sens)-min(sens))/(max(Proj)-min(Proj))))+min(sens);

switch pos
    case 'pm'
        X = 105:194;
        line{1} = sum(Proj(X,30:70),2);
        reLine{1} = resample(line{1},96,90);
        sumLine{1} = sum(reshape(reLine{1},8,12));
        reX = resample(X,96,90);
        sumX = mean(reshape(reX,8,12)); 
        
        line{2} = sum(Proj(X,180:220),2);
        reLine{2} = resample(line{2},96,90);
        sumLine{2} = sum(reshape(reLine{2},8,12));

        
        [fitresult{1}, gof{1}] = FitGauss2(sumX,sumLine{1});
        [fitresult{2}, gof{2}] = FitGauss2(sumX,sumLine{2});
%         sigma{1} = fitresult{1}.c1/sqrt(2);
%         sigma{2} = fitresult{1}.c2/sqrt(2);
%         FWHM{1} = 2*sqrt(2*log(2))*sigma{1}*0.2;
%         FWHM{2} = 2*sqrt(2*log(2))*sigma{2}*0.2;
        
%         sigma{3} = fitresult{2}.c1/sqrt(2);
%         sigma{4} = fitresult{2}.c2/sqrt(2);
%         FWHM{3} = 2*sqrt(2*log(2))*sigma{3}*0.2;
%         FWHM{4} = 2*sqrt(2*log(2))*sigma{4}*0.2;
        
        peak{1} =  fitresult{1}.b1*0.2;
        peak{2} =  fitresult{1}.b2*0.2;
        peak{3} =  fitresult{2}.b1*0.2;
        peak{4} =  fitresult{2}.b2*0.2;
        
    case 'c'
        X = 225:254;
        line{1} = sum(Proj(X,30:70),2);
        reLine{1} = resample(line{1},32,30);
        sumLine{1} = sum(reshape(reLine{1},8,4));
        reX = resample(X,32,30);
        sumX = mean(reshape(reX,8,4)); 
        
        line{2} = sum(Proj(X,180:220),2);
        reLine{2} = resample(line{2},32,30);
        sumLine{2} = sum(reshape(reLine{2},8,4));
        
        [fitresult{1}, gof{1}] = FitGauss1(sumX,sumLine{1},median(sumX));
        [fitresult{2}, gof{2}] = FitGauss1(sumX,sumLine{2},median(sumX));
        
%         sigma{1} = fitresult{1}.c1/sqrt(2);
%         sigma{2} = fitresult{2}.c1/sqrt(2);
%         FWHM{1} = 2*sqrt(2*log(2))*sigma{1}*0.2;
%         FWHM{2} = 2*sqrt(2*log(2))*sigma{2}*0.2;
        
        peak{1} =  fitresult{1}.b1*0.2;
        peak{2} =  fitresult{2}.b1*0.2;
end


end


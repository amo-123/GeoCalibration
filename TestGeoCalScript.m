load('G:\Cal\Cal');

sens = Cal.sens;
%%
node = 1;
Img = load_mat();

Proj = Img.dat(:,:,node);
Proj = ((Proj - min(Proj))*((max(sens)-min(sens))/(max(Proj)-min(Proj))))+min(sens);

mTen = Proj(1:240,75:215);
pTen = Proj(241:end,75:215);
%%

Img = load_mat();

Proj = Img.dat(:,:,node);
Proj = ((Proj - min(Proj))*((max(sens)-min(sens))/(max(Proj)-min(Proj))))+min(sens);

mFive = Proj(1:240,75:215);
pFive = Proj(241:end,75:215);
%%
Img = load_mat();

Proj = Img.dat(:,:,node);
Proj = ((Proj - min(Proj))*((max(sens)-min(sens))/(max(Proj)-min(Proj))))+min(sens);

Cen = Proj(121:360,75:215);
%%
Data = {pTen;pFive;Cen;mFive;mTen};
%%

figure, imagesc(Data{1}), colorbar;
figure, imagesc(Data{2}), colorbar;
figure, imagesc(Data{3}), colorbar;
figure, imagesc(Data{4}), colorbar;
figure, imagesc(Data{5}), colorbar;

%%
% [val,locs] = findpeaks(sum(Data{1},2),'MINPEAKHEIGHT', 20);
% %%
% x = 0:length(sum(Data{1}));
% x = x(locs);
% 
% %%
% figure, plot(sum(Data{1},2),'.r'), hold on, plot(x,val,'ob');

% ptLine = sum(Data{1},2);
% [fitresult, gof] = FitGauss1(ptLine);



%%
figure, plot(sum(Data{1},2),'.r');
figure, plot(sum(Data{2},2),'.r');
figure, plot(sum(Data{3},2),'.r');
figure, plot(sum(Data{4},2),'.r');
figure, plot(sum(Data{5},2),'.r');
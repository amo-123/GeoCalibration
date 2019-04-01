

FWHM = {};
peak = {};

[~,~,~,FWHM{1},peak{1}] = ResAndTilt(1,'pm');
[~,~,~,FWHM{2},peak{2}] = ResAndTilt(1,'pm');


Det1FWMH = [FWHM{1,1}{1},FWHM{1,2}{1},FWHM{1,3},FWHM{1,2}{2},FWHM{1,1}{2}];

Det1Peak = [peak{1,1}{1},peak{1,2}{1},peak{1,3},peak{1,2}{2},peak{1,1}{2}];

Pos = [-100,-50,0,50,100];

%%


FWHM = {};
peak = {};

[~,~,~,FWHM{1},peak{1}] = ResAndTilt(5,'pm');
[~,~,~,FWHM{2},peak{2}] = ResAndTilt(5,'pm');
[~,~,~,FWHM{3},peak{3}] = ResAndTilt(5,'c');

Det5FWMH = [FWHM{1,1}{1},FWHM{1,2}{1},FWHM{1,3},FWHM{1,2}{2},FWHM{1,1}{2}];

Det5Peak = [peak{1,1}{1},peak{1,2}{1},peak{1,3},peak{1,2}{2},peak{1,1}{2}];

%%


FWHM = {};
peak = {};

[~,~,~,FWHM{1},peak{1}] = ResAndTilt(10,'pm');
[~,~,~,FWHM{2},peak{2}] = ResAndTilt(10,'pm');
[~,~,~,FWHM{3},peak{3}] = ResAndTilt(10,'c');

Det10FWMH = [FWHM{1,1}{1},FWHM{1,2}{1},FWHM{1,3},FWHM{1,2}{2},FWHM{1,1}{2}];

Det10Peak = [peak{1,1}{1},peak{1,2}{1},peak{1,3},peak{1,2}{2},peak{1,1}{2}];

%%


FWHM = {};
peak = {};

[~,~,~,FWHM{1},peak{1}] = ResAndTilt(15,'pm');
[~,~,~,FWHM{2},peak{2}] = ResAndTilt(15,'pm');
[~,~,~,FWHM{3},peak{3}] = ResAndTilt(15,'c');

Det15FWMH = [FWHM{1,1}{1},FWHM{1,2}{1},FWHM{1,3},FWHM{1,2}{2},FWHM{1,1}{2}];

Det15Peak = [peak{1,1}{1},peak{1,2}{1},peak{1,3},peak{1,2}{2},peak{1,1}{2}];

%%


FWHM = {};
peak = {};

[~,~,~,FWHM{1},peak{1}] = ResAndTilt(20,'pm');
[~,~,~,FWHM{2},peak{2}] = ResAndTilt(20,'pm');
[~,~,~,FWHM{3},peak{3}] = ResAndTilt(20,'c');

Det20FWMH = [FWHM{1,1}{1},FWHM{1,2}{1},FWHM{1,3},FWHM{1,2}{2},FWHM{1,1}{2}];

Det20Peak = [peak{1,1}{1},peak{1,2}{1},peak{1,3},peak{1,2}{2},peak{1,1}{2}];
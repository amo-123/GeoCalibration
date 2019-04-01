
peak = {};

[~,~,~,peak{1}] = Twist(1,'pm');
[~,~,~,peak{2}] = Twist(1,'pm');
[~,~,~,peak{3}] = Twist(1,'c');

PeakPosdet1 = [[peak{1,1}{1},peak{1,2}{1};peak{1,1}{3},peak{1,2}{3}]';...
    [peak{1,1}{2},peak{1,2}{2};peak{1,1}{4},peak{1,2}{4}]';...
    [peak{1,3}{1},peak{1,3}{2}]];
%%
TPos = [50,200];

figure;
plot(TPos,PeakPosdet20);
xlim([25,225]);
legend
%%
peak = {};

[~,~,~,peak{1}] = Twist(5,'pm');
[~,~,~,peak{2}] = Twist(5,'pm');
[~,~,~,peak{3}] = Twist(5,'c');

PeakPosdet5 = [[peak{1,1}{1},peak{1,2}{1};peak{1,1}{3},peak{1,2}{3}]';...
    [peak{1,1}{2},peak{1,2}{2};peak{1,1}{4},peak{1,2}{4}]';...
    [peak{1,3}{1},peak{1,3}{2}]];

peak = {};

[~,~,~,peak{1}] = Twist(10,'pm');
[~,~,~,peak{2}] = Twist(10,'pm');
[~,~,~,peak{3}] = Twist(10,'c');

PeakPosdet10 = [[peak{1,1}{1},peak{1,2}{1};peak{1,1}{3},peak{1,2}{3}]';...
    [peak{1,1}{2},peak{1,2}{2};peak{1,1}{4},peak{1,2}{4}]';...
    [peak{1,3}{1},peak{1,3}{2}]];

peak = {};

[~,~,~,peak{1}] = Twist(15,'pm');
[~,~,~,peak{2}] = Twist(15,'pm');
[~,~,~,peak{3}] = Twist(15,'c');

PeakPosdet15 = [[peak{1,1}{1},peak{1,2}{1};peak{1,1}{3},peak{1,2}{3}]';...
    [peak{1,1}{2},peak{1,2}{2};peak{1,1}{4},peak{1,2}{4}]';...
    [peak{1,3}{1},peak{1,3}{2}]];

peak = {};

[~,~,~,peak{1}] = Twist(20,'pm');
[~,~,~,peak{2}] = Twist(20,'pm');
[~,~,~,peak{3}] = Twist(20,'c');

PeakPosdet20 = [[peak{1,1}{1},peak{1,2}{1};peak{1,1}{3},peak{1,2}{3}]';...
    [peak{1,1}{2},peak{1,2}{2};peak{1,1}{4},peak{1,2}{4}]';...
    [peak{1,3}{1},peak{1,3}{2}]];
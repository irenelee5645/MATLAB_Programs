
disp('Program started');
disp('First enter data points in the form [x, y]');
cc=input('how many data points will you enter?');
count=0;
px=[];
py=[];
pc=[];
dis=[];

for r=1:cc
    count=count+1;
    fprintf('enter point %d', count);
    in=input(' :');
    px=[px, in(1)];
    py=[py, in(2)];
end

for r=1:count
    pc=[pc, 1];
end
mx= [px(1) px(2) px(3)];
my=[0 0 0];
mc= [1 2 3];

for r=1:20
    plotcolor;
    relocate;
end

plotcolor;



hold on;
axis([xmin xmax ymin ymax]);
plot(handles.plot1,mx(1),my(1),'b+');
plot(handles.plot1,mx(2),my(2),'r+');
plot(handles.plot1,mx(3),my(3),'y+');

for r = 1:count
    for k=1:3
    d=sqrt((mx(k)-px(r))^2+(my(k)-py(r))^2);
    dis=[dis d];
    end
    mind=min(dis,[],'all');
    for k=1:3
        if mind==dis(k)
            pc(r)=k;
        end
    end
    dis=[];
end

for r=1:count
    if pc(r)==1
        plot(handles.plot1,px(r),py(r),'bo');
    elseif pc(r)==2
        plot(handles.plot1,px(r),py(r),'ro');
    else
        plot(handles.plot1,px(r), py(r),'yo');
    end
    
end
hold off;


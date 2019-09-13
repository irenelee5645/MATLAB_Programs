dbluec=[];
dredc=[];
dyellowc=[];

for r=1:count
    if pc(r)== 1
        dbluec=[dbluec r];
    elseif pc(r)==2
        dredc=[dredc r];
    else
        dyellowc=[dyellowc r];
    end
    
end

bym=[py(dbluec(1)) py(dbluec(1))]; %bym = [maximum y, minimum y]
bxm=[px(dbluec(1)) px(dbluec(1))];
rym=[py(dredc(1)) py(dredc(1))];
rxm=[px(dredc(1)) px(dredc(1))];
yym=[py(dyellowc(1)) py(dyellowc(1))];
yxm=[px(dyellowc(1)) px(dyellowc(1))];
   
for k=1:length(dbluec)
    if bym(1)< py(dbluec(k))
       bym(1)=py(dbluec(k));
    end
    if bym(2)> py(dbluec(k))
       bym(2)=py(dbluec(k));
    end
    if bxm(1)< px(dbluec(k))
       bxm(1)=px(dbluec(k));
    end
    if bxm(2)> px(dbluec(k))
       bxm(2)=px(dbluec(k));
    end
    
end
for k=1:length(dredc)
    if rym(1)< py(dredc(k))
       rym(1)=py(dredc(k));
    end
    if rym(2)> py(dredc(k))
       rym(2)=py(dredc(k));
    end
    if rxm(1)< px(dredc(k))
       rxm(1)=px(dredc(k));
    end
    if rxm(2)> px(dredc(k))
       rxm(2)=px(dredc(k));
    end
    
end
for k=1:length(dyellowc)
    if yym(1)< py(dyellowc(k))
       yym(1)=py(dyellowc(k));
    end
    if yym(2)> py(dyellowc(k))
       yym(2)=py(dyellowc(k));
    end
    if yxm(1)< px(dyellowc(k))
       yxm(1)=px(dyellowc(k));
    end
    if yxm(2)> px(dyellowc(k))
       yxm(2)=px(dyellowc(k));
    end
    
end

mx(1)=sum(bxm)/2;
my(1)=sum(bym)/2;
plot(mx(1),my(1),'b+');
hold on;
mx(2)=sum(rxm)/2;
my(2)=sum(rym)/2;
plot(mx(2),my(2),'r+');
mx(3)=sum(yxm)/2;
my(3)=sum(yym)/2;
plot(mx(3),my(3),'y+');



hold off;
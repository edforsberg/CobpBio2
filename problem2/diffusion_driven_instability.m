L = 128;
a = 3;
b = 8;
Du = 1; 
Dv = 3.4; 
dt = 0.01; 
latice = ones(L,L);
u = latice.*a + (-0.1 + rand([L L])*0.2)*a;
v = latice.*(b/a)+(-0.1 + rand([L L])*0.2)*(b/a);
timeSteps = 1000; 
snapFrame =  50; 


for i = 1:timeSteps 
    if(i == snapFrame) 
        snapShot = u; 
    end
    nextU = du(u,v,a,b,Du,dt); 
    nextV = dv(u,v,b,Dv,dt); 
    u = nextU; 
    v = nextV;    
end

colormap hot
contourf(snapShot,'edgecolor','none');

%su(snapShot, 'EdgeColor','none','LineStyle','none','FaceLighting','phong'); 

colorbar

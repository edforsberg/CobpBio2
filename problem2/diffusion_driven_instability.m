L = 128;
a = 3;
b = 8;
Du = 1; 
Dv = 2.3; %3 5 9
dt = 0.01; 
latice = zeros(L,L);
u = a;
v = b/a;
timeSteps = 1000; 
snapShot =  500; 


for i = 1:timeSteps 
    if(i == snapShot) 
        snapframe = u; 
    end
    nextU = du(u,v,a,b,Du,dt); 
    nextV = dv(u,v,b,Dv,dt); 
    u = nextU; 
    v = nextV;    
end

surf(snapframe); 
% 2) diffusion driven instability
L = 128;
a = 3;
b = 8;
Du = 1; 
Dv = 9; % 2.3 3 5 9
dt = 0.01; 
latice = ones(L,L);
u = latice.*a + (-0.1 + rand([L L])*0.2)*a;
v = latice.*(b/a)+(-0.1 + rand([L L])*0.2)*(b/a);
timeSteps = 10001; 
snapFrames =  [10, 10000]; 
snapShots = cell(1,numel(snapFrames)); 

frame = 1; 
colormap pink
for i = 1:timeSteps 
    if(ismember(i,snapFrames)) 
        snapShots{1,frame} = u;
        frame = frame+1; 
    end
    nextU = du(u,v,a,b,Du,dt); 
    nextV = dv(u,v,b,Dv,dt); 
    u = nextU; 
    v = nextV;    

end

subplot(1,2,1)
contourf(cell2mat(snapShots(1)), 'edgecolor', 'none'); 
axis equal
title(sprintf('Transient state: u(t = %d), Dv = %g, dt = %g',snapFrames(1),Dv,dt)); 
caxis([0 10])
colorbar;
drawnow;
colorbar
subplot(1,2,2)
contourf(cell2mat(snapShots(2)), 'edgecolor', 'none'); 
axis equal
title(sprintf('Steady state: u(t = %d), Dv = %g, dt = %g',snapFrames(2),Dv,dt)); 
caxis([0 10])
colorbar;
drawnow;
colorbar

function nextS = SusceptibleProgression(I,S,dt)
a = 0.1; 
b = 1; 
c = 0.5; 
K = 30; 
D =1; 
sFunc = b.*(I+S)-c.*S-S.*(S+I)./K+a.*I.*S; 
sDiff = D*Diffusion(S); 
sDot = sFunc+sDiff; 
nextS = S+sDot*dt; 
end
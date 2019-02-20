function nextS = SusceptibleProgression(a,b,c,K,D,I,S,dt)
sFunc = b.*(I+S)-c.*S-S.*(S+I)./K-a.*I.*S; 
sDiff = D*Diffusion(S); 
sDot = sFunc+sDiff; 
nextS = S+sDot*dt; 
end
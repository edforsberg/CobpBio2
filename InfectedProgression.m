function nextI = InfectedProgression(I,S,dt)
a = 0.1; 
c = 0.5; 
K = 30; 
D = 1; 
iFunc = -c.*I-I.*(I+S)./K+a.*S.*I; 
iDiff = D*Diffusion(I); 
iDot = iFunc+iDiff; 
nextI = I+iDot*dt; 
end
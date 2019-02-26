function nextI = InfectedProgression(a,c,K,D,I,S,dt)
iFunc = -c.*I-I.*(I+S)./K+a.*S.*I; 
iDiff = D*Diffusion(I); 
iDot = iFunc+iDiff; 
nextI = I+iDot*dt; 
end
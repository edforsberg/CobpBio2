function iDot = InfectedProgression(I,S)

a = 0.1; 
b = 1; 
c = 0.5; 
K = 30; 
D =1; 
iFunc = -c*I-I.*(I+S)./K+a.*S.*I; 
iDiff = Diffusion(I); 
iDot = iFunc+iDiff; 
end
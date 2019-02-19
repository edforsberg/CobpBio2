%Problem 1, Travelling waves

t = 100; 
x = 20; 
dt = 0.1; 
I = zeros(x,1); 
S = zeros(x,1); 
S(round(x/2)) = 5; 
I(round(x/2)) = 5;

sProg = zeros(x,t); 
for i = 1:t
    sProg(:,i) = S; 
    nextS = SusceptibleProgression(I,S,dt); 
    nextI = InfectedProgression(I,S,dt); 
    nextS(nextS<0) = 0; 
    nextI(nextI<0) = 0;
    S = nextS; 
    I = nextI;    
end
surf(1:t,1:x,sProg)
%contour(sProg);


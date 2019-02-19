%Problem 1, Travelling waves

t = 100; 
x = 100; 
I = zeros(x,1); 
S = zeros(x,1); 

heatMap = zeros(x,t); 
for i = t
    heatMap(:,i) = S; 
    nextS = SusceptibleProgression(I,S); 
    nextI = InfectedProgression(I,S); 
    
    
    
    
end

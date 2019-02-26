function nextV = dv(u,v,b,Dv,dt)
vFunc = b*u-u.^2.*v;
vDiff = Dv*Diffusion(v); 
vDot = vFunc+vDiff; 
nextV = v+vDot*dt; 
end
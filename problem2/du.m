function nextU = du(u,v,a,b,Du,dt)
uFunc = a-(b+1)*u+u.^2.*v; 
uDiff = Du*Diffusion(u); 
uDot = uFunc+uDiff; 
nextU = u+uDot*dt; 
end
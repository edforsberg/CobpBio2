function res = Diffusion(lattice)
    res = del2([lattice(1,:); lattice(:,1) lattice lattice(:,end); lattice(end,:)]);
end
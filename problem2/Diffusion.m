function res = Diffusion(lattice)
    periodic_lattice = [lattice(:,end) lattice lattice(:,1)];
    periodic_lattice = [periodic_lattice(end,:); periodic_lattice; periodic_lattice(1,:)];
    periodic_lattice(1,1) = 0;
    periodic_lattice(1,end) = 0;
    periodic_lattice(end,1) = 0;
    periodic_lattice(end,end) = 0;
    periodic_lattice = del2(periodic_lattice);
    res = periodic_lattice(2:end-1,2:end-1);
end
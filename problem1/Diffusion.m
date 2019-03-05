function nextPopulation = Diffusion(population)
    population = [population(end); population; population(1)];
    nextPopulation = del2(population);    
    nextPopulation = nextPopulation(2:101);
end

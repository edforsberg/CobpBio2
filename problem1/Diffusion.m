function nextPopulation = Diffusion(population)
    %nextPopulation = [0; diff(diff(population)); 0];
%     nextPopulation = zeros(size(population));
%     N = length(population);
% 
%     for i = 1:N
%         nextPopulation(i) = population(mod(i,N)+1) - 2*population(i) + population(mod(i,N)+1);
%     end

    population = [population(end); population; population(1)];
    nextPopulation = del2(population);
    
    nextPopulation = nextPopulation(2:101);
    
end

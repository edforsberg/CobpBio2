function nextPopulation = Diffusion(population)
    nextPopulation = zeros(size(population));
    
    N = length(population);
    for i = 1:N
        
        if (i == 1)
            prevIndex = N;
        else
            prevIndex = i-1;
        end
        
        if (i == N)
            nextIndex = 1;
        else
            nextIndex = i+1;
        end
        
        nextPopulation(i) = population(nextIndex) - 2*population(i) + population(prevIndex);
    end
    
end

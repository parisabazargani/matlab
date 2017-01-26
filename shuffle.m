function indices = shuffle(indices)
    rand = randperm(size(indices,2));
    for i=1:size(rand,2)
       X(i) = indices(rand(i)); 
    end
    indices = X;
end
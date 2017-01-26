function X = convertIdToIndixes(id,diameter)
    i = floor((id-1)/(diameter*diameter))+1;
    temp = mod((id-1),(diameter*diameter));    
    j = floor((temp)/diameter)+1;    
    temp = mod(temp,diameter);
    k = temp+1;
    
    X(1) = i;
    X(2) = j;
    X(3) = k;
end 
function dist = distance(source,destination,diameter)
    X = convertIdToIndixes(source,diameter);
    Y = convertIdToIndixes(destination,diameter);
    dist = norm(X-Y);
end
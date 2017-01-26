function cube = clearCube(cube)
    for i=1:size(cube,2)
        cube(i).isWhite = false;
    end
end
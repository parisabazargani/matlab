function cube = createCube(diameter)
index = 1;
    for i=1:diameter
       for j=1:diameter 
           for k=1:diameter
            %cube(i,j,k) = Voxel(index)
            %cube(i,j,k).neighbors = getNeighboursID(i,j,k,diameter);
            cube(index) = Voxel(index);
            cube(index).neighbors = getNeighboursID(i,j,k,diameter);
            index = index + 1;
           end
       end
    end    
end
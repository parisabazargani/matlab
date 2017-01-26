function indices = getGrayMatterHasDataIndices(cube)
indices = [];
counter =1;
    for i=1:size(cube,2)
       if(~cube(i).isWhite && cube(i).hasData==1)
          indices(counter) = i;
          counter = counter+1;
       end
    end
end
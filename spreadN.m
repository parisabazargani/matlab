function cube = spreadN(cube,n)
% counter = 0;
% for i=1:size(cube,2)
%     if(cube(i).isWhite~=1)
%         counter = counter+1;
%     end
% end
% if(counter<n)
%    disp('N could not be bigger than gray matter voxel number');
%    return;
% end

counter = 1;
indices= [];
for i=1:size(cube,2)
    if(cube(i).isWhite==0 && cube(i).hasData==0)
        indices(counter) = i;
        counter = counter +1;
    end
end

if(size(indices,2)<n)
   disp('N could not be bigger than gray matter voxel number\n');
   return;
end

indices = shuffle(indices);
for i=1:n
    cube(indices(i)).hasData=true;
end
end
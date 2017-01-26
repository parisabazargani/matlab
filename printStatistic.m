function printStatistic(cube)
white = 0;
data = 0;
gray = 0;
for i=1:size(cube,2)
    if(cube(i).isWhite==1)
        white = white+1;
    else
        gray=gray+1;
    end
    if(cube(i).hasData==1)
        data=data+1;
    end
end
fprintf('Result:\n');
fprintf('Number of White Voxels = %d\n',white);
fprintf('Number of Gray Voxels = %d\n',gray);
fprintf('Number of Voxels which have data = %d\n',data);

end
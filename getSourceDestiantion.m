function [source,dest,cube] = getSourceDestiantion(cube,diameter)
grayMatterIndices = getGrayMatterHasDataIndices(cube);
grayMatterIndices = shuffle(grayMatterIndices);
source = 0;
dest = 0;
for i=1:size(grayMatterIndices,2)
    if(cube(grayMatterIndices(i)).state==0)
        source = grayMatterIndices(i);
        cube(source).state = true;
        break;
    end
end

for i=1:size(grayMatterIndices,2)
    if(grayMatterIndices(i)~=source)
        if (cube(grayMatterIndices(i)).state==0)
            if(distance(source,grayMatterIndices(i),diameter)>=floor((diameter/2)))
                dest = grayMatterIndices(i);
                cube(dest).state = true;
                break;
            end
        end
    end    
end

if(source==0 || dest ==0)
   fprintf('Can not continue\n');
   return;
end
end
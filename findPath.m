function [path cube]= findPath(cube,source,dest,diameter)
path(1)=source;    
counter = 2;
while (true)    
    n = cube(source).neighbors;
    promising = 0;
    minDistance = 10000000;
    found = false;
    for i=1:size(n,2)
        if(n(i)==dest)
            promising = n(i);
            found=true;
            break;
        end        
        if(cube(n(i)).hasData==1)
        %if(size(cube(n(i)).cell,2)~=0)
            continue;
        end
        if(cube(n(i)).state==1)
           continue; 
        end
        found = true;
        if(minDistance>distance(n(i),dest,diameter))
            minDistance = distance(n(i),dest,diameter);
            promising = n(i);
        end
    end
    if(found==false && promising~=dest)
       for i=2:size(path,2)
            cube(source).state=false;
       end
       path = [];
       %fprintf('No Path')
       break;
    end
            
    path(counter) = promising;
    counter = counter+ 1;
    if(promising==dest)        
        return;
    end
    source = promising; 
    cube(source).state=true;
end

end
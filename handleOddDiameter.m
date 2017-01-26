function cube = handleOddDiameter(cube,diameter,whiteDiameter)
if(whiteDiameter==0)
   return; 
end
coreId = ceil((diameter*diameter*diameter)/2);
counter = 1;
counter2= 1;

import java.util.LinkedList

mainQueue = LinkedList();
mainQueue.add(coreId);
whiteMaterIndices(counter2) = coreId;
while(counter<ceil(whiteDiameter/2))
    tempQueue = mainQueue.clone();
    while(~tempQueue.isEmpty())
        nodeId = tempQueue.poll();
        whiteMaterIndices(counter2) = nodeId;
        counter2 =counter2+1;
        n = cube(nodeId).neighbors;
        for i=1:size(n,2)
            if(~mainQueue.contains(n(i)))
                mainQueue.add(n(i));       
            end
        end
    end
    counter = counter + 1;
end
while(~mainQueue.isEmpty())
    nodeId = mainQueue.poll();
    whiteMaterIndices(size(whiteMaterIndices,2)+1) = nodeId;
end
for i=1:size(whiteMaterIndices,2)
    cube(whiteMaterIndices(i)).isWhite = true;
end

end
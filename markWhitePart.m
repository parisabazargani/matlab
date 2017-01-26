function cube = markWhitePart(cube,diameter,percentage)
whiteCoreDiameter = ceil(diameter*percentage);
coreId = ceil((diameter*diameter*diameter)/2);

counter = 1;
counter2= 1;

import java.util.LinkedList

mainQueue = LinkedList();
mainQueue.add(coreId)
while(counter<=ceil(whiteCoreDiameter/2))                
    tempQueue = mainQueue.clone();
    while(~tempQueue.isEmpty())
        nodeId = tempQueue.poll();        
        whiteMaterIndices(counter2) = nodeId;
        counter2 =counter2+1;
        n = cube(nodeId).neighbors;
        for i=1:size(n,2)
            mainQueue.add(n(i));
        end
    end
    counter = counter + 1; 
    %size(mainQueue)
    %pause();
end 
    
    
    
%     while(~tempQueue.isEmpty())
%        mainQueue.add(tempQueue.poll()); 
%        n = cube(nodeId).neighbors;
%        for i=1:size(n,2)
%             mainQueue.add(n(i));
%        end
%     end    
%     counter = counter + 1;

while(~mainQueue.isEmpty())
    nodeId = mainQueue.poll();
    whiteMaterIndices(size(whiteMaterIndices,2)+1) = nodeId;
end
size(unique(whiteMaterIndices))
for i=1:size(whiteMaterIndices,2)
    cube(whiteMaterIndices(i)).isWhite = true;
end
end

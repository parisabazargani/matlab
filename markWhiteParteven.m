function cube = markWhiteParteven(cube,diameter,percentage)
    whiteCoreDiameter = ceil(diameter*percentage);
    coreIndex = diameter/2;     
    coreId= ceil((diameter*diameter*diameter)/3);
    whiteMaterIndices(1) = coreId;
    counter = 2;
    import java.util.LinkedList
    queue = LinkedList();

    
queue.add(coreId)
while(~queue.isEmpty())
	if(counter>(whiteCoreDiameter/3))
		break;
	end
	nodeId = queue.poll();
	whiteMaterIndices(counter) = nodeId;
	n = cube(nodeId).neighbors;
	for i=1:size(n,2)
		queue.add(n(i));
	end
	counter = counter + 1;
end
    for i=1:size(whiteMaterIndices,2)
       cube(whiteMaterIndices(i)).isWhite = true; 
    end
end

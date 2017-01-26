function cube = markWhitePartV2(cube,diameter,percentage)
    maxNumberOfVoxels = diameter*diameter*diameter;
    whiteMatterVoxelNumber = ceil(maxNumberOfVoxels * percentage);
    whiteMatterDiameter=0;
    for i=1:70
        min = i*i*i;
        max = (i+1)*(i+1)*(i+1);        
        if(whiteMatterVoxelNumber>=min && whiteMatterVoxelNumber<=max)
           whiteMatterDiameter = i;
           break; 
        end
    end    
    if(mod(diameter,2)==0)
       if(mod(whiteMatterDiameter,2)~=0)
          whiteMatterDiameter = whiteMatterDiameter-1; 
       end
    else
        if(mod(whiteMatterDiameter,2)==0)
          whiteMatterDiameter = whiteMatterDiameter-1; 
       end
    end            
    if(whiteMatterDiameter <0)
        whiteMatterDiameter =0;
    end
    %fprintf('White matter diameter %d\n',whiteMatterDiameter);
    if(mod(whiteMatterDiameter,2)==0)
       cube = handleEvenDiameter(cube,diameter,whiteMatterDiameter);
    else
        cube = handleOddDiameter(cube,diameter,whiteMatterDiameter);
    end
    
end
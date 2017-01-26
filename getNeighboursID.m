function neighbours = getNeighboursID(i,j,k,diameter)
index = 1;
    maxNumber = diameter*diameter*diameter;
    currentId = convertIndexToId(i,j,k,diameter);
    for x=i-1:i+1
       for y=j-1:j+1
          for z=k-1:k+1
              if(x<=0 || x>diameter)
                 continue; 
              elseif(y<=0 || y>diameter)
                      continue;
              elseif(z<=0 || z>diameter)
                          continue;
              end
                  
              
              id = convertIndexToId(x,y,z,diameter);
              %fprintf('%d %d %d %d\n',x,y,z,id);
              %disp(id,x,y,z);
              %fprintf('%d %d\n',id,currentId);
              if(id==currentId)
                 continue; 
              end
                  
              if (id >0 && id<=maxNumber) 
                  
                  
                  neighbours(index)=id;
                  index = index + 1;    
              end
          end
               
       end
    end
   
end
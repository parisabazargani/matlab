clc;
clear;
profile on;
tic;

diameter = 30;
percentage = 0.45;
n = 2000;

profile on;

cube = createCube(diameter);
fprintf('%d*%d*%d=%d cube has been create.\n',diameter,diameter,diameter,diameter*diameter*diameter);
cube = markWhitePartV2(cube,diameter,percentage);
fprintf('White Matter has been selecetd.\n');
cube = spreadN(cube,n);
fprintf('%d cell has been randomly spread over the gray matter.\n',n);
printStatistic(cube);
[source,destination,cube] = getSourceDestiantion(cube,diameter);
fprintf('Source voxel id is %d\n',source);
fprintf('Destination voxel id is %d\n',destination);

result=zeros(1,10);
i = 1;
for perc=0:0.05:0.45
    cube = clearCube(cube);
    cube = markWhitePartV2(cube,diameter,percentage);

    C = 300;
    found = 0;
    for i=1:C
        [path cube]= findPath(cube,source,destination,diameter);
        if(size(path,2)~=0)
            found = found + 1;
        else
            break;
        end
    end    
    result(1,i) = found;
    i=i+1;
end
result
plot(0:0.05:0.45,result(1,:)');

fprintf('C is %d\n',C);
fprintf('Number of pathes which has been found %d\n',found);
fprintf('Percentage %f\n',found*100/C);

toc;
profile viewer;
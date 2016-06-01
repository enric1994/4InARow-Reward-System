function [ playsDatabase,prizesDatabase ] =PlayAndLearn(iterations )
s = zeros(1,iterations);

playsDatabase=ones(8,8,2);
prizesDatabase=ones(2,8);
playsDatabase(8,2,2)=0;
playsDatabase(8,2,1)=0;
for i=1:iterations
    tic
   fprintf('%d / %d \n',i,iterations);
[newPlaysDatabase,newPrizesDatabase]=fourInARow(playsDatabase,prizesDatabase);
    playsDatabase=newPlaysDatabase;
    prizesDatabase=newPrizesDatabase;
    s(i)=toc;

end
plot(s);

end

x=load('traindata.txt'); %training data
x1=x(:,1:end-1);
y=x(:,end);
%normalization=true; %normalization if necessary
%if(normalization)
   % for i=1:size(x1,2)
  %      x1(:,i)=(x1(:,i)-max(x1(:,i)))/(max(x1(:,i))-min(x1(:,i)));
 %   end
%end
iterations=4000;
alpha=0.000001;
x1=[ones(size(y,1),1) x1];

theta=zeros(size(x1,2),1);
[theta]=costndtheta(x1,y,theta,alpha,iterations);
%y1=load('testflower.txt');
%y2=y1(:,1:3);
y2=[1,4,109,64,44,99,34.8,0.905,26];
accuracy=sigmoidfunc(y2,theta);
for i=1:size(accuracy,1)  %prediction for binary output
if (accuracy(i)>0.49)                
    accuracy(i)=1
else
    accuracy(i)=0
end
end

function [ X,Y ] = interp_line( x_start,y_start,x_stop,y_stop,step)
%outputs the interpolation points between two points given a step
X=[];
Y=[];
d=sqrt((x_start-x_stop)*(x_start-x_stop)+(y_start-y_stop)*(y_start-y_stop));

div=d./step;



if div>1
    
    %computation of direction vector
    
    vx=x_stop-x_start;
    vy=y_stop-y_start;
    
    %normalization
    ux=vx/sqrt(vx*vx+vy*vy);
    uy=vy/sqrt(vx*vx+vy*vy);
    
   if atan2(uy,ux)>0
       disp('positif')
        X(1)=x_start;
        Y(1)=y_start;

        for p=1:1:div
           X(p+1)=x_start+p*step*ux;
           Y(p+1)=y_start+p*step*uy;
  
        end
        X(p+2)=x_stop;
        Y(p+2)=y_stop;
   else
       disp('neg')
        X(1)=x_stop;
        Y(1)=y_stop;

        for i=1:1:div
           X(i+1)=x_stop-i*step*ux;
           Y(i+1)=y_stop-i*step*uy;
        end
        X(i+2)=x_start;
        Y(i+2)=y_start;
        X=fliplr(X)
        Y=fliplr(Y)
   end

else% the two given points are too close to each other

    X(2)=x_stop;
    Y(2)=y_stop;

end


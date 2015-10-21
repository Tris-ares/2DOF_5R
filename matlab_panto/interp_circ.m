function [ X,Y ] = interp_circ( x0,y0,R,ang_start,ang_stop, ang_step )
% circular interpolation

%ang_step=40 %deg

%R=0.75

%x0=0.25 %center of the arc
%y0=0

%ang_start=90    %range of arc, deg
%ang_stop=270  


X=[];
Y=[];


x_old=R*cos(ang_start*pi/180)+x0;
y_old=R*sin(ang_start*pi/180)+y0;
X(1)=x_old;
Y(1)=y_old;
cpt=2;
for theta=ang_start+ang_step:ang_step:ang_stop 
   
    
   x=R*cos(theta*pi/180);
   y=R*sin(theta*pi/180);
   %plot([x+x0 x_old],[y+y0 y_old]);
  
   x_old=x+x0;
   y_old=y+y0;
   
   X(cpt)=x_old;
   Y(cpt)=y_old;
   
   cpt=cpt+1;
   
end



end


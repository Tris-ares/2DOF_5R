function [ X,Y ] = interp_ellipse( x0,y0,a,b,ang_start,ang_stop,ang_step )
%elliptic interpolation

%ang_step=20 %deg

% x0=0 %center of the arc
% y0=0
% 
% a=0.50  %parameters for the ellipse a=halfwidth,b=halfheight
% b=0.90
% ang_start=60    %range of arc, deg
% ang_stop=310  

X=[];
y=[];

x_old=a*cos(ang_start*pi/180)+x0;
y_old=b*sin(ang_start*pi/180)+y0;

X(1)=x_old;
Y(1)=y_old;

cpt=2;
for theta=ang_start+ang_step:ang_step:ang_stop
    
    
   x=a*cos(theta*pi/180);
   y=b*sin(theta*pi/180);
   %plot([x+x0 x_old],[y+y0 y_old]);
  
   x_old=x+x0;
   y_old=y+y0;
   
   X(cpt)=x_old;
   Y(cpt)=y_old;
   
   cpt=cpt+1;
   
end

end


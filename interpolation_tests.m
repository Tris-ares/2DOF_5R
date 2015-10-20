
close all;
clear all;

%linear interpolation
x1=0;
y1=0;

x2=10;
y2=10;

step=2;

xx=x1+x2;
yy=y1+y2;

d=sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2))

div=d./step;

figure;
plot([x1 x2],[y1,y2]);
hold on
if div>1
    
    for i=0:1:div
    scatter(xx*i/div,yy*i/div)
    hold on;
    end
    scatter(x2,y2)
end

% circular interpolation

ang_step=40 %deg

R=0.75

x0=0.25 %center of the arc
y0=0

ang_start=90    %range of arc, deg
ang_finish=270  
figure;
scatter(x0,y0,50,'r+')
hold on
x_old=R*cos(ang_start*pi/180)+x0
y_old=R*sin(ang_start*pi/180)+y0
%scatter(x_old,y_old)
%hold on
for theta=90+ang_step:ang_step:ang_finish
    
    
   x=R*cos(theta*pi/180);
   y=R*sin(theta*pi/180);
   plot([x+x0 x_old],[y+y0 y_old]);
  
   x_old=x+x0;
   y_old=y+y0;
   
   
end
grid on
daspect([1,1,1])
xlim([-0.5 0.5])
ylim([-1 1])

%elliptic interpolation

ang_step=20 %deg

x0=0 %center of the arc
y0=0

a=0.50  %parameters for the ellipse a=halfwidth,b=halfheight
b=0.90
ang_start=60    %range of arc, deg
ang_finish=310  
figure;

scatter(x0,y0,50,'r+')
hold on
x_old=a*cos(ang_start*pi/180)+x0
y_old=b*sin(ang_start*pi/180)+y0
%scatter(x_old,y_old)
%hold on
for theta=ang_start+ang_step:ang_step:ang_finish
    
    
   x=a*cos(theta*pi/180);
   y=b*sin(theta*pi/180);
   plot([x+x0 x_old],[y+y0 y_old]);
  
   x_old=x+x0;
   y_old=y+y0;
   
   
end
grid on
daspect([1,1,1])
xlim([-0.5 0.5])
ylim([-1 1])


    
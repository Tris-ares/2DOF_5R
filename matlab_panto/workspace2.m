
clear all;
close all;
clc;
% workspace and tests 2

% a=0.06;
% L=0.13;
% l=0.1;
% 
% ya=0;
% yb=0;
% 
% xa=-a/2;
% xb=a/2;

a=12;
L=26;
l=20;

ya=-35;
yb=-35;
xa=-a/2;
xb=a/2;

x=0;
y=0;

P=[x y];

A=[xa ya];
B=[xb yb];
figure;
hold on;
scatter(xa,ya,'k+')
scatter(xb,yb,'k+')

for x=-30:0.5:30
    for y=-35:0.5:10
        
        %th1=f_theta1(a,l,L,x,y,xa,ya);
        %th2=f_theta2(a,l,L,x,y,xb,yb);
        [th1,th2]=get_angles_robot(x,y);
     
        if imag(th1)==0 && imag(th2)==0 
            plot(x,y,'ro');
            hold on;

            
        end;
    end;
end;
grid on;
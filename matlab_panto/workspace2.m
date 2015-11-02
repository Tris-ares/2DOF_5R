
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

a=40;
L=50;
l=100;

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
%scatter(xa,ya,'k+')
scatter(xb,yb,100,'ko','filled')

ymax=200;
xmax=220;

for x=0:1:xmax
    for y=-35:1:ymax
        
       %get intersection coordinates for the left arm
                            x_end=x;
                            y_end=y;
                            [x_1,y_1,x_2,y_2]=circles_intersec(x_end,y_end,l,xa,ya,L);

                            if x_1<x_2

                                x_pivot_left=x_1;
                                y_pivot_left=y_1;

                            else
                                x_pivot_left=x_2;
                                y_pivot_left=y_2;

                            end
                                 %get angle between 0° and left arm

                                    %create unit vector for left arm
                                    v_x=x_pivot_left-xa;
                                    v_y=y_pivot_left-ya;
                                    d=sqrt(v_x*v_x+v_y*v_y);
                                    v_x=v_x/d;
                                    v_y=v_y/d;

                                    %unit vector u=(1,0)(parallel to abscisse line, pointing toward %x>0
                                    u_x=1;
                                    u_y=0;

                                    % using dot product : vector_u.vector_v=||u||*||v||*cos(angle_between_u_and_v)

                                    angle_left=acos(u_x*v_x+u_y*v_y)*180/pi;


                            %get intersection corrdniates for the right arm

                            [x_1,y_1,x_2,y_2]=circles_intersec(x_end,y_end,l,xb,yb,L);

                            if x_1>x_2

                                x_pivot_right=x_1;
                                y_pivot_right=y_1;

                            else
                                x_pivot_right=x_2;
                                y_pivot_right=y_2;

                            end

                            %create unit vector for right arm
                                    v_x=x_pivot_right-xb;
                                    v_y=y_pivot_right-yb;
                                    d=sqrt(v_x*v_x+v_y*v_y);
                                    v_x=v_x/d;
                                    v_y=v_y/d;

                                    % using dot product : vector_u.vector_v=||u||*||v||*cos(angle_between_u_and_v)

                                    angle_right=acos(u_x*v_x+u_y*v_y)*180/pi;

                            %test singularity
                            if (y_pivot_left+y_pivot_right)/2>=y_end || imag(angle_left) ~= 0 || imag(angle_right) ~= 0
                            %disp('singularity !')
                            error=1;
                            %disp('error singularity !')
                            else 
                                %disp('ok')
                                error=0;

                            end
     
        if error
            scatter(x,y,'r*');
            
        else
            scatter(x,y,'b*');
            
        end;
        hold on;
    end;
end;

plot([5,5],[-35,ymax],'k','lineWidth',2)
for j=1:1:21
plot([5+10*j,5+10*j],[-35,ymax],'k','lineWidth',2)
end
start_y=14;
plot([0,xmax],[start_y,start_y],'k','lineWidth',2)
for i=1:1:8
    plot([0,xmax],[start_y+20*i,start_y+20*i],'k','lineWidth',2)
end
plot([0,xmax],[start_y-20,start_y-20],'k','lineWidth',2)

scatter(xb,yb,100,'ko','filled')
daspect([1 1 1 ]);
title(['a=',num2str(a),' ; L=',num2str(L),' ; l=',num2str(l),' :'])
daspect([1 1 1 ]);
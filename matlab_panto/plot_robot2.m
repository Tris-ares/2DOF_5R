function [ output_args ] = plot_robot2( x_end,y_end,flag )

a=12;
L=26;
l=20;

ya=-35;
yb=-35;

xa=-a/2;
xb=a/2;

%get intersection coordinates for the left arm

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
        
        angle_left=acos(u_x*v_x+u_y*v_y);

    %coordinates of pivot point on left arm :
    xaa=xa+L*cos(angle_left);
    yaa=ya+L*sin(angle_left);
    
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
        
        angle_right=acos(u_x*v_x+u_y*v_y);
   
    %coordinates of pivot point on left arm :
    xbb=xb+L*cos(angle_right);
    ybb=yb+L*sin(angle_right);

% % plot
hold on;
if strcmp(flag,'True')==1
    plot(x_end,y_end,'go','markers',7,'MarkerFaceColor','g');%plot points when tip is drawing
    legend('Drawing','Location','south');
else
     plot(x_end,y_end,'ro','markers',7,'MarkerFaceColor','r');%plot points when tip is not drawing
     legend('Not drawing','Location','south');
end

plot(xa,ya,'go','MarkerSize',14,'MarkerFaceColor','g');

plot(xb,yb,'go','MarkerSize',14,'MarkerFaceColor','g');

plot(xbb,ybb,'o','MarkerEdgeColor','b','MarkerFaceColor','k','MarkerSize',12,'LineWidth',3);

plot(xaa,yaa,'o','MarkerEdgeColor','b','MarkerFaceColor','k','MarkerSize',12,'LineWidth',3);
daspect([1 1 1 ]);
grid on

 %plot arms
plot([xa xaa],[ya yaa], 'lineWidth',7);

plot([xb xbb],[yb ybb], 'lineWidth',7);

plot([xbb x_end],[ybb y_end],'k', 'lineWidth',4);

plot([xaa x_end],[yaa y_end],'k', 'lineWidth',4);

daspect([1 1 1 ]);

end


function [ output_args ] = plot_robot2( x_end,y_end,flag )

% a=12;
% L=26;
% l=20;

a=40;
L=100;
l=125;

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

%get intersection corrdniates for the right arm

[x_1,y_1,x_2,y_2]=circles_intersec(x_end,y_end,l,xb,yb,L);

if x_1>x_2
    
    x_pivot_right=x_1;
    y_pivot_right=y_1;
    
else
    x_pivot_right=x_2;
    y_pivot_right=y_2;
    
end

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

plot(x_pivot_right,y_pivot_right,'o','MarkerEdgeColor','b','MarkerFaceColor','k','MarkerSize',12,'LineWidth',3);

plot(x_pivot_left,y_pivot_left,'o','MarkerEdgeColor','b','MarkerFaceColor','k','MarkerSize',12,'LineWidth',3);
daspect([1 1 1 ]);
grid on

 %plot arms
plot([xa x_pivot_left],[ya y_pivot_left], 'lineWidth',7);

plot([xb x_pivot_right],[yb y_pivot_right], 'lineWidth',7);

plot([x_pivot_right x_end],[y_pivot_right y_end],'k', 'lineWidth',4);

plot([x_pivot_left x_end],[y_pivot_left y_end],'k', 'lineWidth',4);

daspect([1 1 1 ]);

end


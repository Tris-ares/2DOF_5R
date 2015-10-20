function [ output_args ] = plot_robot( x,y )

% BEWARE : ANGLES COMPUTATIONS CHANGE WITH RELATION TO THE COORD OF A AND B 
a=12;
L=26;
l=20;

ya=-35;
yb=-35;

xa=-a/2;
xb=a/2;

%x=-4.5;
%y=9.5;

P=[x y];

A=[xa ya];
B=[xb yb];


AP=sqrt((x-xa)*(x-xa)+(y-ya)*(y-ya));
BP=sqrt((x-xb)*(x-xb)+(y-yb)*(y-yb));


% see cosine rule
theta1=pi-acos((L*L-l*l+AP*AP)/(2*L*AP))-atan2(y,a/2-x);    % only when (0,0) is between the motors


disp('theta1=');
disp(theta1*180/pi); %theta1 angle at A in degrees



theta2=acos((L*L-l*l+BP*BP)/(2*L*BP))+atan2(y,x+a/2);   % only when (0,0) is between the motors
%theta2=wrapTo2Pi(theta2)

disp('theta2=');
disp(theta2*180/pi); %theta2 angle at B i degrees

% % intermediate points :

xbb=xb+L*cos(theta2);
ybb=yb+L*sin(theta2);
%disp('lb=');
%disp(sqrt((x-xbb)*(x-xbb)+(y-ybb)*(y-ybb)));

xaa=xa+L*cos(theta1);
yaa=ya+L*sin(theta1);
%disp('la=');
%disp(sqrt((x-xaa)*(x-xaa)+(y-yaa)*(y-yaa)));

% % plot


hold on;
plot(x,y,'ro','markers',20);%plot points

plot(xa,ya,'go','MarkerSize',15,'MarkerFaceColor','g');

plot(xb,yb,'go','MarkerSize',15,'MarkerFaceColor','g');

plot(xbb,ybb,'o','MarkerEdgeColor','b','MarkerFaceColor','k','MarkerSize',15,'LineWidth',3);

plot(xaa,yaa,'o','MarkerEdgeColor','b','MarkerFaceColor','k','MarkerSize',15,'LineWidth',3);
daspect([1 1 1 ]);
grid on

 %plot arms
plot([xa xaa],[ya yaa], 'lineWidth',7);

plot([xb xbb],[yb ybb], 'lineWidth',7);

plot([xbb x],[ybb y],'k', 'lineWidth',4);

plot([xaa x],[yaa y],'k', 'lineWidth',4);

daspect([1 1 1 ]);
% xlim([-15 15])
% ylim([-2 20])

end


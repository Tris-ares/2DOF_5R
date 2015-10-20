clear all;
close all;
clc;
% workspace and tests


a=6;
L=13;
l=10;

ya=0;
yb=0;

xa=0;
xb=-a;

x=-4.5;
y=9.5;

P=[x y];

A=[xa ya];
B=[xb yb];


AP=sqrt((x-xa)*(x-xa)+(y-ya)*(y-ya));
BP=sqrt((x-xb)*(x-xb)+(y-yb)*(y-yb));

%theta1=pi-acos((BP*BP+AP*AP-a*a)/(-2*a*AP))-acos((l*l-L*L+AP*AP)/(-2*L*AP));
theta1=pi-acos((L*L-l*l+AP*AP)/(2*L*AP))-atan2(y,-x);
disp('theta1=');
disp(theta1*180/pi); %theta1 angle at A in degrees

%theta2=acos((l*l+BP*BP-L*L)/(-2*BP*L))+acos((AP*AP+BP*BP-a*a)/(-2*a*BP));
theta2=acos((L*L-l*l+BP*BP)/(2*L*BP))+atan2(y,x+a);
disp('theta2=');
disp(theta2*180/pi); %theta2 angle at B i degrees

% % intermediate points :

xbb=xb+L*cos(theta2);
ybb=yb+L*sin(theta2);
disp('lb=');
disp(sqrt((x-xbb)*(x-xbb)+(y-ybb)*(y-ybb)));

xaa=xa+L*cos(theta1);
yaa=ya+L*sin(theta1);
disp('la=');
disp(sqrt((x-xaa)*(x-xaa)+(y-yaa)*(y-yaa)));

% % plot

figure; 
hold on;
plot(x,y,'ro','markers',20);%plot points
%hold on;
plot(xa,ya,'go','MarkerSize',15,'MarkerFaceColor','g');
%hold on;
plot(xb,yb,'go','MarkerSize',15,'MarkerFaceColor','g');
%hold on;
plot(xbb,ybb,'o', 'MarkerEdgeColor','b','MarkerFaceColor','k','MarkerSize',15,'LineWidth',3);
%hold on;
plot(xaa,yaa,'o','MarkerEdgeColor','b','MarkerFaceColor','k','MarkerSize',15,'LineWidth',3);
daspect([1 1 1 ]);
grid on

%hold on; %plot arms
plot([xa xaa],[ya yaa], 'lineWidth',7);
%hold on;
plot([xb xbb],[yb ybb], 'lineWidth',7);
%hold on;
plot([xbb x],[ybb y],'k', 'lineWidth',4);
%hold on;
plot([xaa x],[yaa y],'k', 'lineWidth',4);
hold off
daspect([1 1 1 ]);
xlim([-15 15])
ylim([-2 20])



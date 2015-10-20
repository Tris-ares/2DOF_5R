close all;
clear all;
clc;

x0=0;
y0=-3;

% A

figure;
scatter(x0,y0,60,'r+');
hold on;

[X1,Y1]=interp_line(x0-5,y0-10,x0+0,y0+10,2);
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_line(x0+0,y0+10,x0+5,y0-10,2);
scatter(X2,Y2);
plot(X2,Y2);

[X3,Y3]=interp_line(x0-2.5,y0+0,x0+2.5,y0+0,2);
scatter(X3,Y3);
plot(X3,Y3);

daspect([1 1 1 ]);
grid on;
hold off;

%B

figure;
scatter(x0,y0,60,'r+');
hold on;

[X1,Y1]=interp_line(x0-2.5,y0-10,x0-2.5,y0+10,2);
scatter(X1,Y1);
plot(X1,Y1);
[X2,Y2]=interp_circ(x0-1.5,y0+6,4,-100,100,15);
plot(X2,Y2);
scatter(X2,Y2);

[X3,Y3]=interp_ellipse(x0-0.5,y0-4,5,6,-110,110,15);
plot(X3,Y3);
scatter(X3,Y3);

daspect([1 1 1 ]);
grid on;
hold off;
xlim([-5 5]);
ylim([-10 10]);

%C
figure;

[X,Y]=interp_ellipse(x0+1,y0+0,5,9,60,310,15);
plot(X,Y);
hold on;
scatter(X,Y);


daspect([1 1 1 ]);
grid on;
xlim([-5 5]);
ylim([-10 10]);

%D
figure;
hold on;
[X1,Y1]=interp_line(x0-2.5,y0-9.5,x0-2.5,y0+9.5,2);
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_ellipse(x0-2,y0+0,7,9.5,-100,105,10);
scatter(X2,Y2);
plot(X2,Y2);

hold off;
daspect([1 1 1 ]);
grid on;
xlim([-5 5]);
ylim([-10 10]);

%E
figure;
hold on;
[X1,Y1]=interp_line(x0-4.5,y0-9.5,x0-4.5,y0+9.5,2);
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_line(x0-4.5,y0+9.5,x0+4.5,y0+9.5,2);
scatter(X2,Y2);
plot(X2,Y2);


[X3,Y3]=interp_line(x0+3,y0-2,x0-4.5,y0-2,2);
scatter(X3,Y3);
plot(X3,Y3);

[X4,Y4]=interp_line(x0-4.5,y0-9.5,x0+4.5,y0-9.5,2);
scatter(X4,Y4);
plot(X4,Y4);

daspect([1 1 1 ]);
grid on;
hold off;
xlim([-5 5]);
ylim([-10 10]);

%F
figure;
hold on;
[X1,Y1]=interp_line(x0-4.5,y0-9.5,x0-4.5,y0+9.5,2);
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_line(x0-4.5,y0+9.5,x0+4.5,y0+9.5,2);
scatter(X2,Y2);
plot(X2,Y2);

[X3,Y3]=interp_line(x0-4.5,y0+0,x0+2,y0+0,1);
plot(X3,Y3);
scatter(X3,Y3);

daspect([1 1 1 ]);
grid on;
hold off;
xlim([-5 5]);
ylim([-10 10]);

%G
figure;

[X1,Y1]=interp_ellipse(x0+0,y0+0,4,9,60,350,10);
plot(X1,Y1);
hold on;
scatter(X1,Y1);

[X2,Y2]=interp_line(x0+1,y0-1.5,x0+4,y0-1.5,2);
plot(X2,Y2);
scatter(X2,Y2);

daspect([1 1 1 ]);
grid on;
hold off;
xlim([-5 5]);
ylim([-10 10]);

%H
figure;
hold on;

[X1,Y1]=interp_line(x0-4,y0-9.5,x0-4,y0+9.5,2);
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_line(x0+4,y0+9.5,x0+4,y0-9.5,2);
plot(X2,Y2);
scatter(X2,Y2);

[X3,Y3]=interp_line(x0+4,y0-2,x0-4,y0-2,2);
plot(X3,Y3);
scatter(X3,Y3);

daspect([1 1 1 ]);
grid on;
hold off;
xlim([-5 5]);
ylim([-10 10]);

% I
figure;
hold on;

[X1,Y1]=interp_line(x0+0,y0+9.5,x0+0,y0-9.5,2);
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_line(x0-1,y0-9.5,x0+1,y0-9.5,1);
plot(X2,Y2);
scatter(X2,Y2);

[X3,Y3]=interp_line(x0+1,y0+9.5,x0-1,y0+9.5,1);
plot(X3,Y3);
scatter(X3,Y3);

daspect([1 1 1 ]);
grid on;
hold off;
xlim([-5 5]);
ylim([-10 10]);

%J
figure;
hold on;

[X1,Y1]=interp_line(x0+4,y0+9.5,x0+4,y0-4,2);
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_ellipse(x0+0,y0-4,4,6,170,360,10);
plot(X2,Y2);
scatter(X2,Y2);

daspect([1 1 1 ]);
grid on;
hold off;
xlim([-5 5]);
ylim([-10 10]);

%K
figure;
hold on;

[X1,Y1]=interp_line(x0-4,y0-9.5,x0-4,y0+9.5,2);
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_line(x0-4,y0-2,x0+4.5,y0+9.5,2)
plot(X2,Y2);
scatter(X2,Y2);

[X3,Y3]=interp_line(x0-3,y0-1,x0+4.5,y0-9.5,2)
plot(X3,Y3);
scatter(X3,Y3);

daspect([1 1 1 ]);
grid on;
hold off;
xlim([-5 5]);
ylim([-10 10]);

%L
figure;
hold on;

[X1,Y1]=interp_line(x0-4,y0-9.5,x0-4,y0+9.5,2);
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_line(x0-4,y0-9.5,x0+4.5,y0+-9.5,2);
plot(X2,Y2);
scatter(X2,Y2);

daspect([1 1 1 ]);
grid on;
hold off;
xlim([-5 5]);
ylim([-10 10]);

%M
figure;
hold on;

[X1,Y1]=interp_line(x0-4,y0-9.5,x0-4,y0+9.5,2);
scatter(X1,Y1);
plot(X1,Y1);


[X2,Y2]=interp_line(x0-4,y0+9.5,x0+0,y0-3,2);
plot(X2,Y2);
scatter(X2,Y2);

[X3,Y3]=interp_line(x0+0,y0-3,x0+4,y0+9.5,2);
plot(X3,Y3);
scatter(X3,Y3);

[X4,Y4]=interp_line(x0+4,y0+9.5,x0+4,y0-9.5,2);
plot(X4,Y4);
scatter(X4,Y4);

daspect([1 1 1 ]);
grid on;
hold off;
xlim([-5 5]);
ylim([-10 10]);

%N
figure;
hold on;

[X1,Y1]=interp_line(x0-4,y0-9.5,x0-4,y0+9.5,2);
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_line(x0-4,y0+9.5,x0+4,y0-9.5,2);
plot(X2,Y2);
scatter(X2,Y2);

[X3,Y3]=interp_line(x0+4,y0-9.5,x0+4,y0+9.5,2);
plot(X3,Y3);
scatter(X3,Y3);

daspect([1 1 1 ]);
grid on;
hold off;
xlim([-5 5]);
ylim([-10 10]);

%O
figure;
hold on;

[X,Y]=interp_ellipse(x0+0,y0+0,4.5,9,0,360,15);
plot(X,Y);
scatter(X,Y);

daspect([1 1 1 ]);
grid on;
xlim([-5 5]);
ylim([-10 10]);

%P
figure;
hold on;

[X1,Y1]=interp_line(x0-4.5,y0+9.5,x0-4.5,y0-9,2);
plot(X1,Y1);
scatter(X1,Y1);

[X2,Y2]=interp_ellipse(x0-3.5,y0+4.8,8,5,-100,100,10);
plot(X2,Y2);
scatter(X2,Y2);

daspect([1 1 1 ]);
grid on;
xlim([-5 5]);
ylim([-10 10]);

%Q
figure;
hold on;

[X1,Y1]=interp_ellipse(x0+0,y0+0,4.5,9,0,360,15);
plot(X1,Y1);
scatter(X1,Y1);

[X2,Y2]=interp_line(x0+0,y0-4,x0+4.5,y0-9.5,2)
plot(X2,Y2);
scatter(X2,Y2);

daspect([1 1 1 ]);
grid on;
xlim([-5 5]);
ylim([-10 10]);

%R
figure;
hold on;

[X1,Y1]=interp_line(x0-4.5,y0+9.5,x0-4.5,y0-9,2);
plot(X1,Y1);
scatter(X1,Y1);

[X2,Y2]=interp_ellipse(x0-3.5,y0+4.8,8,5,-100,100,10)
plot(X2,Y2);
scatter(X2,Y2);

[X3,Y3]=interp_line(x0-1,y0+0,x0+4.5,y0-9.5,1)
plot(X3,Y3);
scatter(X3,Y3);

daspect([1 1 1 ]);
grid on;
xlim([-5 5]);
ylim([-10 10]);

%S
figure;
hold on;

[X1,Y1]=interp_ellipse(x0+0,y0+5,5,4,45,270,10);
plot(X1,Y1);
scatter(X1,Y1);

[X2,Y2]=interp_ellipse(x0+0,y0-4.5,5,5.5,-150,90,10);
plot(X2,Y2);
scatter(X2,Y2);

daspect([1 1 1 ]);
grid on;
xlim([-5 5])
ylim([-10 10])

%T
figure;
hold on;

[X1,Y1]=interp_line(x0+0,y0+9.5,x0+0,y0-9.5,2)
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_line(x0-5,y0+9.5,x0+5,y0+9.5,2)
plot(X2,Y2)
scatter(X2,Y2)

daspect([1 1 1 ]);
grid on;
xlim([-5 5])
ylim([-10 10])

%U
figure;
hold on;

[X1,Y1]=interp_line(x0-4.5,y0+9.5,x0-4.5,y0-6,2)
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_circ(x0+0,y0-5.5,4.5,190,350,10);
plot(X2,Y2);
scatter(X2,Y2);

[X3,Y3]=interp_line(x0+4.5,y0-6,x0+4.5,y0+9.5,2);
plot(X3,Y3);
scatter(X3,Y3);

daspect([1 1 1 ]);
grid on;
xlim([-5 5])
ylim([-10 10])

%V
figure;
hold on;

[X1,Y1]=interp_line(x0-4.5,y0+9.5,x0+0,y0-9.5,2)
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_line(x0+0,y0-9.5,x0+4.5,y0+9.5,2)
plot(X2,Y2);
scatter(X2,Y2);

daspect([1 1 1 ]);
grid on;
xlim([-5 5])
ylim([-10 10])

%W
figure;
hold on;

[X1,Y1]=interp_line(x0-4.5,y0+9.5,x0-2.5,y0-9.5,2)
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_line(x0-2.5,y0-9.5,x0+0,y0-2,2)
plot(X2,Y2);
scatter(X2,Y2);

[X3,Y3]=interp_line(x0+0,y0-2,x0+2.5,y0-9.5,2);
plot(X3,Y3);
scatter(X3,Y3);

[X4,Y4]=interp_line(x0+2.5,y0-9.5,x0+4.5,y0+9.5,2);
scatter(X4,Y4);
plot(X4,Y4);

daspect([1 1 1 ]);
grid on;
xlim([-5 5])
ylim([-10 10])

%X
figure;
hold on;

[X1,Y1]=interp_line(x0-4.5,y0+9.5,x0+4.5,y0-9.5,2)
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_line(x0-4.5,y0-9.5,x0+4.5,y0+9.5,2)
plot(X2,Y2);
scatter(X2,Y2);

daspect([1 1 1 ]);
grid on;
xlim([-5 5])
ylim([-10 10])

%Y
figure;
hold on;

[X1,Y1]=interp_line(x0-4.5,y0+9.5,x0+0,y0+0,2)
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_line(x0+4.5,y0+9.5,x0+0,y0+0,2)
plot(X2,Y2);
scatter(X2,Y2);

[X3,Y3]=interp_line(x0+0,y0+0,x0+0,y0-9.5,2)
plot(X3,Y3);
scatter(X3,Y3);

daspect([1 1 1 ]);
grid on;
xlim([-5 5])
ylim([-10 10])

%Z
figure;
hold on;

[X1,Y1]=interp_line(x0-4.5,y0+9.5,x0+4.5,y0+9.5,2)
scatter(X1,Y1);
plot(X1,Y1);

[X2,Y2]=interp_line(x0+4.5,y0+9.5,x0-4.5,y0-9.5,2)
plot(X2,Y2);
scatter(X2,Y2);

[X3,Y3]=interp_line(x0-4.5,y0-9.5,x0+4.5,y0-9.5,2)
plot(X3,Y3);
scatter(X3,Y3);

daspect([1 1 1 ]);
grid on;
xlim([-5 5])
ylim([-10 10])




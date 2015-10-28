%animation

close all;
clear all;
clc;

x0=0;
y0=0;

t_pause_draw=0.0;
t_pause_up=0.0;

Data_file=fopen('dictionnary.txt','w');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%scaling factor
s=2

%viewing factors :
vx=10
vy=30

%%
% A

figure;

subplot(1,2,2)
scatter(s*(x0), s*(y0),60,'r+');
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-5), s*(y0-10),2);

for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter A');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   
   xlim([-40 40]);
   ylim([-60 20]);
   subplot(1,2,2);
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.1);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0-5), s*(y0-10), s*(x0+0), s*(y0+10),2);

for k=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(k),Y1(k),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(k),Y1(k));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40]);
   ylim([-60 20]);
   subplot(1,2,2);
   hold on;
   scatter(X1(k),Y1(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw)
end

[X2,Y2]=interp_line(s*(x0+0), s*(y0+10), s*(x0+5), s*(y0-10),2);

for k=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(k),Y2(k),'True');
    a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(k),Y2(k));
   flag(a)=1;
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40]);
   ylim([-60 20]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw)
end


[X0,Y0]=interp_line(s*(x0+5), s*(y0-10), s*(x0-2.5), s*(y0+0),2);

for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
    a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40]);
   ylim([-60 20]);
   subplot(1,2,2);
   hold on;
   scatter(X0(i),Y0(i),'r*','LineWidth',0.1);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end



[X3,Y3]=interp_line(s*(x0-2.5), s*(y0+0), s*(x0+2.5), s*(y0+0),2);

for k=1:length(X3)
   subplot(1,2,1);
   cla;
   plot_robot2(X3(k),Y3(k),'True');   
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(k),Y3(k));
   flag(a)=1;
       
   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40]);
   ylim([-60 20]);
   subplot(1,2,2);
   hold on
   scatter(X3(k),Y3(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw)
end


[X0,Y0]=interp_line(s*(x0+2.5), s*(y0+0), s*(x0), s*(y0), 4);

for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');   
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40]);
   ylim([-60 20]);
   subplot(1,2,2);
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up);
end


daspect([1 1 1 ]);
grid on;
hold off;

fprintf(Data_file,'A\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%B

figure;
scatter(x0,y0,60,'r+');
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-2.5), s*(y0-10), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter B');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40]);
   ylim([-60 20]);
   subplot(1,2,2);
   hold on;
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up);
end

[X1,Y1]=interp_line(s*(x0-2.5), s*(y0-10), s*(x0-2.5), s*(y0+10),2);
for k=1:length(X1)
   subplot(1,2,1);
   cla;
   plot_robot2(X1(k),Y1(k),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(k),Y1(k));
   flag(a)=1;
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40]);
   ylim([-60 20]);
   subplot(1,2,2);
   hold on;
   scatter(X1(k),Y1(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw)
end


[X0,Y0]=interp_line(s*(x0-2.5), s*(y0+10), s*(x0-2.5), s*(y0-2), 4);

for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i), 'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_circ(s*(x0-1.5), s*(y0+6),s*4,-100,100,round(15/s));

for k=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(k),Y2(k),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(k),Y2(k));
   flag(a)=1;
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw)
end

[X0,Y0]=interp_line(s*(x0-2.5), s*(y0+10), s*(x0-2.5), s*(y0-9.63), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_ellipse(s*(x0-0.5), s*(y0-4),s*5,s*6,-110,110,round(15/s));

for k=1:length(X3)
   subplot(1,2,1);
   cla;
   plot_robot2(X3(k),Y3(k),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(k),Y3(k));
   flag(a)=1;
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40]);
   ylim([-60 20]);
   subplot(1,2,2);
   hold on
   scatter(X3(k),Y3(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);
end

[X0,Y0]=interp_line(s*(x0-2.5), s*(y0+2), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1);
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40]);
   ylim([-60 20]);
   subplot(1,2,2);
   hold on;
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up);
end

fprintf(Data_file,'B\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%C
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0+3.5), s*(y0+7.7), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter C');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X,Y]=interp_ellipse(s*(x0+1), s*(y0+0),s*5,s*9,60,310,round(15/s));
for i=1:length(X)
   subplot(1,2,1)
   cla;
   plot_robot2(X(i),Y(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X(i),Y(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X(i),Y(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+3.5), s*(y0-7.8), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'C\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%D
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-2.5), s*(y0+9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter D');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0-2.5), s*(y0+9.5), s*(x0-2.5), s*(y0-9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0-2.5), s*(y0-9.5), s*(x0-3.2), s*(y0-9.4), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_ellipse(s*(x0-2), s*(y0+0),s*7,s*9.5,-100,105,round(10/s));
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0-3.2), s*(y0+9.3), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'D\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%E
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4.5), s*(y0-9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter E');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0-4.5), s*(y0-9.5), s*(x0-4.5), s*(y0+9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0-4.5), s*(y0+9.5), s*(x0+4.5), s*(y0+9.5),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4.5), s*(y0+9.5), s*(x0+3), s*(y0-2), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_line(s*(x0+3), s*(y0-2), s*(x0-4.5), s*(y0-2),2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(i),Y3(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0-4.5), s*(y0-2), s*(x0-4.5), s*(y0-9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X4,Y4]=interp_line(s*(x0-4.5), s*(y0-9.5), s*(x0+4.5), s*(y0-9.5),2);
for i=1:length(X4)
   subplot(1,2,1)
   cla;
   plot_robot2(X4(i),Y4(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X4(i),Y4(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X4(i),Y4(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4.5), s*(y0-9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'E\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%F
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4.5), s*(y0-9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter F');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0-4.5), s*(y0-9.5), s*(x0-4.5), s*(y0+9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0-4.5), s*(y0+9.5), s*(x0+4.5), s*(y0+9.5),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4.5), s*(y0+9.5), s*(x0-4.5), s*(y0+0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_line(s*(x0-4.5), s*(y0+0), s*(x0+2), s*(y0+0),1);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(i),Y3(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+2), s*(y0+0), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'F\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%G
figure;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0+2), s*(y0+7.7),3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter G');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_ellipse(s*(x0+0), s*(y0+0),s*4,s*9,60,350,round(10/s));
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0+4), s*(y0-1.5), s*(x0+1), s*(y0-1.5),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+1), s*(y0-1.5), s*(x0), s*(y0),3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'G\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%H
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4), s*(y0-9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter H');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0-4), s*(y0-9.5), s*(x0-4), s*(y0+9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0-4), s*(y0+9.5), s*(x0+4), s*(y0+9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0+4), s*(y0+9.5), s*(x0+4), s*(y0-9.5),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4), s*(y0-9.5), s*(x0+4), s*(y0-2), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_line(s*(x0+4), s*(y0-2), s*(x0-4), s*(y0-2),2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(i),Y3(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0-4), s*(y0-2), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'H\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
% I
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0+0), s*(y0+9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter I');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0+0), s*(y0+9.5), s*(x0+0), s*(y0-9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+0), s*(y0-9.5), s*(x0-1), s*(y0-9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0-1), s*(y0-9.5), s*(x0+1), s*(y0-9.5),1);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+1), s*(y0-9.5), s*(x0+1), s*(y0+9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_line(s*(x0+1), s*(y0+9.5), s*(x0-1), s*(y0+9.5),1);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(i),Y3(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0-1), s*(y0+9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'I\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%J
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0+4), s*(y0+9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter J');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0+4), s*(y0+9.5), s*(x0+4), s*(y0-4),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4), s*(y0-4), s*(x0-4), s*(y0-3), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_ellipse(s*(x0+0), s*(y0-4),s*4,s*6,170,360,round(10/s));
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4), s*(y0-4), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'J\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%K
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4), s*(y0-9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter K');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0-4), s*(y0-9.5), s*(x0-4), s*(y0+9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0-4), s*(y0+9.5), s*(x0-4), s*(y0-2), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0-4), s*(y0-2), s*(x0+4.5), s*(y0+9.5),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4.5), s*(y0+9.5), s*(x0-3), s*(y0-1), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_line(s*(x0-3), s*(y0-1), s*(x0+4.5), s*(y0-9.5),2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(i),Y3(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4.5), s*(y0-9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'K\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%L
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4), s*(y0+9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter L');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0-4), s*(y0+9.5), s*(x0-4), s*(y0-9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0-4), s*(y0-9.5), s*(x0+4.5), s*(y0-9.5),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4.5), s*(y0-9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'L\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%M
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4), s*(y0-9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter M');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0-4), s*(y0-9.5), s*(x0-4), s*(y0+9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0-4), s*(y0+9.5), s*(x0+0), s*(y0-3),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_line(s*(x0+0), s*(y0-3), s*(x0+4), s*(y0+9.5),2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(i),Y3(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X4,Y4]=interp_line(s*(x0+4), s*(y0+9.5), s*(x0+4), s*(y0-9.5),2);
for i=1:length(X4)
   subplot(1,2,1)
   cla;
   plot_robot2(X4(i),Y4(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X4(i),Y4(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X4(i),Y4(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4), s*(y0-9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'M\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%N
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4), s*(y0-9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter N');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0-4), s*(y0-9.5), s*(x0-4), s*(y0+9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0-4), s*(y0+9.5), s*(x0+4), s*(y0-9.5),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X3,Y3]=interp_line(s*(x0+4), s*(y0-9.5), s*(x0+4), s*(y0+9.5),2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(i),Y3(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X0,Y0]=interp_line(s*(x0+4), s*(y0+9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'N\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%O
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0+4.5), s*(y0),3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter O');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X,Y]=interp_ellipse(s*(x0+0), s*(y0+0),s*4.5,s*9,0,360,round(20/s));
for i=1:length(X)
   subplot(1,2,1)
   cla;
   plot_robot2(X(i),Y(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X(i),Y(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X(i),Y(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X0,Y0]=interp_line(s*(x0+4.5), s*(y0), s*(x0), s*(y0),3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'O\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%P
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4.5), s*(y0-9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter P');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X1,Y1]=interp_line(s*(x0-4.5), s*(y0-9.5), s*(x0-4.5), s*(y0+9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0-4.5), s*(y0+9.5), s*(x0-5), s*(y0-0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_ellipse(s*(x0-3.5), s*(y0+4.8),s*8,s*5,-100,100,round(10/s));
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0-5), s*(y0+9.7), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'P\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%Q
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0+4.5), s*(y0),3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter Q');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_ellipse(s*(x0+0), s*(y0+0),s*4.5,s*9,0,360,round(15/s));
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4.5), s*(y0), s*(x0+4.5), s*(y0-9.5),3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0+4.5), s*(y0-9.5), s*(x0+0), s*(y0-4),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+0), s*(y0-4), s*(x0), s*(y0),3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'Q\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%R
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4.5), s*(y0-9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter R');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X1,Y1]=interp_line(s*(x0-4.5), s*(y0-9.5), s*(x0-4.5), s*(y0+9),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X0,Y0]=interp_line(s*(x0-4.5), s*(y0+9.2), s*(x0-4.5), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X2,Y2]=interp_ellipse(s*(x0-3.5), s*(y0+4.8),s*8,s*5,-100,100,round(10/s));
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X0,Y0]=interp_line(s*(x0-4.5), s*(y0+9.2), s*(x0-1), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_line(s*(x0-1), s*(y0+0), s*(x0+4.5), s*(y0-9.5),1);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(i),Y3(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X0,Y0]=interp_line(s*(x0+4.5), s*(y0-9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'R\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%S
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0+3.5), s*(y0+7.8), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter S');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_ellipse(s*(x0+0), s*(y0+5),s*5,s*4,45,270,round(10/s));
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0-0.4), s*(y0+1), s*(x0-4.3), s*(y0-7.25), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_ellipse(s*(x0+0), s*(y0-4.5),s*5,s*5.5,-150,90,round(10/s));
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+0), s*(y0+1), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'S\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%T
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0+0), s*(y0-9.5),1);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter T');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X1,Y1]=interp_line(s*(x0+0), s*(y0-9.5), s*(x0+0), s*(y0+9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X0,Y0]=interp_line(s*(x0+0), s*(y0+9.5), s*(x0-5), s*(y0+9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X2,Y2]=interp_line(s*(x0-5), s*(y0+9.5), s*(x0+5), s*(y0+9.5),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X0,Y0]=interp_line(s*(x0+5), s*(y0+9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'T\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%U
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4.5), s*(y0+9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter U');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0-4.5), s*(y0+9.5), s*(x0-4.5), s*(y0-6),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_circ(s*(x0+0), s*(y0-5.5),s*4.5,190,350,round(10/s));
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_line(s*(x0+4.5), s*(y0-6), s*(x0+4.5), s*(y0+9.5),2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(i),Y3(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4.5), s*(y0+9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'U\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%V
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4.5), s*(y0+9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter V');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0-4.5), s*(y0+9.5), s*(x0+0), s*(y0-9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0+0), s*(y0-9.5), s*(x0+4.5), s*(y0+9.5),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4.5), s*(y0+9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'V\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%W
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4.5), s*(y0+9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter W');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0-4.5), s*(y0+9.5), s*(x0-2.5), s*(y0-9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0-2.5), s*(y0-9.5), s*(x0+0), s*(y0-2),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_line(s*(x0+0), s*(y0-2), s*(x0+2.5), s*(y0-9.5),2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(i),Y3(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X4,Y4]=interp_line(s*(x0+2.5), s*(y0-9.5), s*(x0+4.5), s*(y0+9.5),2);
for i=1:length(X4)
   subplot(1,2,1)
   cla;
   plot_robot2(X4(i),Y4(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X4(i),Y4(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X4(i),Y4(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4.5), s*(y0+9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'W\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%X
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4.5), s*(y0+9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter X');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0-4.5), s*(y0+9.5), s*(x0+4.5), s*(y0-9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4.5), s*(y0-9.5), s*(x0-4.5), s*(y0-9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0-4.5), s*(y0-9.5), s*(x0+4.5), s*(y0+9.5),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4.5), s*(y0+9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'X\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%Y
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4.5), s*(y0+9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter Y');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X1,Y1]=interp_line(s*(x0-4.5), s*(y0+9.5), s*(x0+0), s*(y0+0),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0+4.5), s*(y0+9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X2,Y2]=interp_line(s*(x0+4.5), s*(y0+9.5), s*(x0+0), s*(y0+0),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X3,Y3]=interp_line(s*(x0+0), s*(y0+0), s*(x0+0), s*(y0-9.5),2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(i),Y3(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X0,Y0]=interp_line(s*(x0+0), s*(y0-9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'Y\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%Z
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4.5), s*(y0+9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter Z');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X1,Y1]=interp_line(s*(x0-4.5), s*(y0+9.5), s*(x0+4.5), s*(y0+9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X2,Y2]=interp_line(s*(x0+4.5), s*(y0+9.5), s*(x0-4.5), s*(y0-9.5),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X3,Y3]=interp_line(s*(x0-4.5), s*(y0-9.5), s*(x0+4.5), s*(y0-9.5),2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(i),Y3(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X0,Y0]=interp_line(s*(x0+4.5), s*(y0-9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


fprintf(Data_file,'B\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;


%%
%N0
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0+4.5), s*(y0),3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('number 0');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X,Y]=interp_ellipse(s*(x0+0), s*(y0+0),s*4.5,s*9,0,360,round(15/s));
for i=1:length(X)
   subplot(1,2,1)
   cla;
   plot_robot2(X(i),Y(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X(i),Y(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X(i),Y(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+4.5), s*(y0), s*(x0+4), s*(y0+4.5),3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0+4), s*(y0+4.5), s*(x0-4), s*(y0-4.5), 4);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0-4), s*(y0-4.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'N0\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%N1
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4), s*(y0+2), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 1');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0-4), s*(y0+2), s*(x0+0), s*(y0+9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;


   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0+0), s*(y0+9.5), s*(x0+0), s*(y0-9.5),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+0), s*(y0-9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end
  
fprintf(Data_file,'N1\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%N2
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0+4.5), s*(y0-9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('number 2');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0+4.5), s*(y0-9.5), s*(x0-4.5), s*(y0-9.5),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;


   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0-4.5), s*(y0-9.5), s*(x0+3), s*(y0+1.5),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;


   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_ellipse(s*(x0+0), s*(y0+4.8),s*4,s*5,-40,180,round(10/s))
 for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(i),Y3(i));
   flag(a)=1;


   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
 end

 [X0,Y0]=interp_line(s*(x0-4), s*(y0+4.8), s*(x0), s*(y0), 4);
 for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
 end

fprintf(Data_file,'N2\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%N3
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-1), s*(y0+0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('number 3');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end
 
[X1,Y1]=interp_ellipse(s*(x0-1), s*(y0+5),s*6,s*5,-90,120,round(10/s))
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0-4), s*(y0+9.3), s*(x0-5), s*(y0-8.8), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end
 
[X2,Y2]=interp_ellipse(s*(x0-1), s*(y0-5),s*6,s*5,-130,90,round(10/s));
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0-1), s*(y0+0), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'N3\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%N4
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0+2.5), s*(y0+9.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 4');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0+2.5), s*(y0+9.5), s*(x0-4.5), s*(y0-4),2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end
 
[X2,Y2]=interp_line(s*(x0-4.5), s*(y0-4), s*(x0+2.5), s*(y0-4),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_line(s*(x0+2.5), s*(y0-4), s*(x0+2.5), s*(y0-9.5),2)
 for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(i),Y3(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
 end
 
[X0,Y0]=interp_line(s*(x0+2.5), s*(y0-9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'N4\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%N5
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4.2), s*(y0-8.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('number 5');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_ellipse(s*(x0-1), s*(y0-4),s*5,s*6,-130,110,round(20/s))
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0-3), s*(y0+1.6), s*(x0-3), s*(y0+8),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_line(s*(x0-3), s*(y0+8), s*(x0+4), s*(y0+8),2)
 for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(i),Y3(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
 end

[X0,Y0]=interp_line(s*(x0+4), s*(y0+8), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'N5\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%N6
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0+2.5), s*(y0+7.4), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 6');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X1,Y1]=interp_ellipse(s*(x0+0), s*(y0+4),s*4,s*4.5,50,180,round(20/s))
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end


[X2,Y2]=interp_line(s*(x0-4), s*(y0+4), s*(x0-4), s*(y0-4),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_ellipse(s*(x0+0), s*(y0-4),s*4,s*5,-180,180,round(20/s))
 for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X3(i),Y3(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
 end

[X0,Y0]=interp_line(s*(x0-4), s*(y0-4), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'N6\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%N7
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-4), s*(y0+9.5),4)
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 7');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(s*(x0-4), s*(y0+9.5), s*(x0+4), s*(y0+9.5),2)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
    a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0+4), s*(y0+9.5), s*(x0-4), s*(y0-9.5),2)
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0-4), s*(y0-9.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'N7\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%N8
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0-0), s*(y0+1.5),4)
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 8');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_ellipse(s*(x0+0), s*(y0+5.5),s*3,s*4,-90,270,round(20/s))
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_ellipse(s*(x0+0), s*(y0-4),s*4,s*5.5,90,450,round(20/s))
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0-0), s*(y0+1.5), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'N8\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%%
%N9
figure;
hold on;

[X0,Y0]=interp_line(s*(x0), s*(y0), s*(x0+3.5), s*(y0+5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 9');
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_ellipse(s*(x0+0), s*(y0+4.5),s*3.5,s*4.5,0,360,round(20/s))
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X1(i),Y1(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(s*(x0+3.5), s*(y0+4), s*(x0+3.5), s*(y0-4),2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X2(i),Y2(i));
   flag(a)=1;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(s*(x0+3.5), s*(y0-4), s*(x0-3), s*(y0-6.5), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_ellipse(s*(x0+0), s*(y0-4),s*3.5,s*5,-150,0,round(20/s))
 for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
 end
 
[X0,Y0]=interp_line(s*(x0+3.5), s*(y0-4), s*(x0), s*(y0), 4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   a=a+1;
   [angle_left(a),angle_right(a)]=get_angles_robot(X0(i),Y0(i));
   flag(a)=0;

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up)
end

fprintf(Data_file,'N9\r\n');
fprintf(Data_file,'%d \r\n',length(angle_left));
fprintf(Data_file,'%3.0f ; ',angle_left);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%3.0f ; ',angle_right);
fprintf(Data_file,' \r\n');
fprintf(Data_file,'%d ; ',flag);
fprintf(Data_file,' \r\n');
angle_left=[];
angle_right=[];
flag=[];
a=0;

fclose(Data_file);

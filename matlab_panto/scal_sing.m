%animation and tests with scaling

close all;
clear all;
clc;

x0=100;
y0=10;

t_pause_draw=0.0;
t_pause_up=0.0;

Data_file=fopen('dictionnary.txt','w');
angle_left=[];
angle_right=[];
flag=[];
a=0;

%viewing limits
vx=110;
vy=50;

vvx=200;
vvy=200;
vvy_low = -120;
%scaling factor
s=1;
%%
% A

figure;

subplot(1,2,2)
scatter(x0,y0,60,'r+');
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*5,y0-s*10,2);

for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter A');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;
              angle_right(a)=angle_r;      
              angle_left(a)=angle_l;
   flag(a)=0;       
   
   
   daspect([1 1 1 ]);
   grid on;
   
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.1);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*5,y0-s*10,x0+s*0,y0+s*10,2);

for k=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(k),Y1(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(k),Y1(k));   
   if err 
   else       a=a+1;    
       angle_right(a)=angle_r;
       angle_left(a)=angle_l;
   flag(a)=1;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_lowvvy]);
   subplot(1,2,2);
   hold on;
   scatter(X1(k),Y1(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw); 
   end;
end

[X2,Y2]=interp_line(x0+s*0,y0+s*10,x0+s*5,y0-s*10,2);

for k=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(k),Y2(k),'True');
    
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k));  
   if err   
   else       a=a+1;          
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;      

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw); 
   end;
end


[X0,Y0]=interp_line(x0+s*5,y0-s*10,x0-s*2.5,y0+s*0,2);

for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
    
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;     
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on;
   scatter(X0(i),Y0(i),'r*','LineWidth',0.1);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end



[X3,Y3]=interp_line(x0-s*2.5,y0+s*0,x0+s*2.5,y0+s*0,2);

for k=1:length(X3)
   subplot(1,2,1);
   cla;
   plot_robot2(X3(k),Y3(k),'True');   
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(k),Y3(k));  
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      
    
       
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X3(k),Y3(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw);  
   end;
end


[X0,Y0]=interp_line(x0+s*2.5,y0+s*0,x0,y0,4);

for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');   
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;
              angle_right(a)=angle_r;  
              angle_left(a)=angle_l;
   flag(a)=0;      
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*2.5,y0-s*10,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter B');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err 
   else       a=a+1;  
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on;
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up);   
   end;
end

[X1,Y1]=interp_line(x0-s*2.5,y0-s*10,x0-s*2.5,y0+s*10,2);
for k=1:length(X1)
   subplot(1,2,1);
   cla;
   plot_robot2(X1(k),Y1(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(k),Y1(k));   
   if err   
   else       a=a+1;      
       angle_right(a)=angle_r; 
       angle_left(a)=angle_l;
       
   flag(a)=1;      
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on;
   scatter(X1(k),Y1(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);  
   end;
end


[X0,Y0]=interp_line(x0-s*2.5,y0+s*10,x0-s*2.5,y0+s*2,4);

for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i), 'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_circ(x0-s*1.5,y0+s*6,s*4,-100,100,15);
for k=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(k),Y2(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k)); 
   if err   
   else       a=a+1;          
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;       
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw);  
   end;
end

[X0,Y0]=interp_line(x0-s*2.5,y0+s*10,x0-s*2.5,y0-s*9.63,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;      
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X3,Y3]=interp_ellipse(x0-s*0.5,y0-s*4,s*5,s*6,-110,110,15);
for k=1:length(X3)
   subplot(1,2,1);
   cla;
   plot_robot2(X3(k),Y3(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(k),Y3(k));   
   if err    
   else       a=a+1;        
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;      
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X3(k),Y3(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);    
   end;
end

[X0,Y0]=interp_line(x0-s*2.5,y0+s*2,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1);
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;      
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on;
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_up);   
   end;

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

[X0,Y0]=interp_line(x0,y0,x0+s*3.5,y0+s*7.7,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter C');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));
   if err 
   else       a=a+1;    
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X,Y]=interp_ellipse(x0+s*1,y0+s*0,s*5,s*9,60,310,15);
for i=1:length(X)
   subplot(1,2,1)
   cla;
   plot_robot2(X(i),Y(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X(i),Y(i));  
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;     
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X(i),Y(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*3.5,y0-s*7.8,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err 
   else       a=a+1;       
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;       
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*2.5,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter D');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err  
   else       a=a+1;     
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*2.5,y0+s*9.5,x0-s*2.5,y0-s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));   
   if err   
   else       a=a+1;           
       angle_right(a)=angle_r;      
       angle_left(a)=angle_l;
   flag(a)=1;      


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);
   end;
end

[X0,Y0]=interp_line(x0-s*2.5,y0-s*9.5,x0-s*3.2,y0-s*9.4,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;     
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_ellipse(x0-s*2,y0+s*0,s*7,s*9.5,-100,105,10);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));  
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*3.2,y0+s*9.3,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err 
   else       a=a+1;      
              angle_right(a)=angle_r;     
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0-s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter E');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;  
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0-s*4.5,y0-s*9.5,x0-s*4.5,y0+s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));   
   if err  
   else       a=a+1;              
       angle_right(a)=angle_r;    
       angle_left(a)=angle_l;
   flag(a)=1;       


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_line(x0-s*4.5,y0+s*9.5,x0+s*4.5,y0+s*9.5,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err  
   else       a=a+1;                 
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;      


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0+s*9.5,x0+s*3,y0-s*2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;  
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);
   end;
end

[X3,Y3]=interp_line(x0+s*3,y0-s*2,x0-s*4.5,y0-s*2,2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));   
   if err   
   else       a=a+1;                 
       angle_right(a)=angle_r;    
       angle_left(a)=angle_l;
   flag(a)=1;      


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*4.5,y0-s*2,x0-s*4.5,y0-s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err 
   else       a=a+1;   
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;       
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X4,Y4]=interp_line(x0-s*4.5,y0-s*9.5,x0+s*4.5,y0-s*9.5,2);
for i=1:length(X4)
   subplot(1,2,1)
   cla;
   plot_robot2(X4(i),Y4(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X4(i),Y4(i));     
   if err  
   else       a=a+1;                 
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X4(i),Y4(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0-s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;     
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0-s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter F');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err 
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;       
   
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*4.5,y0-s*9.5,x0-s*4.5,y0+s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));  
   if err  
   else       a=a+1;             
       angle_right(a)=angle_r;      
       angle_left(a)=angle_l;
   flag(a)=1;       


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_line(x0-s*4.5,y0+s*9.5,x0+s*4.5,y0+s*9.5,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err     
   else       a=a+1;            
       angle_right(a)=angle_r;              
       angle_left(a)=angle_l;
   flag(a)=1;      


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0+s*9.5,x0-s*4.5,y0+s*0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err 
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X3,Y3]=interp_line(x0-s*4.5,y0+s*0,x0+s*2,y0+s*0,1);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));    
   if err    
   else       a=a+1;            
       angle_right(a)=angle_r;           
       angle_left(a)=angle_l;
   flag(a)=1;      


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*2,y0+s*0,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err 
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
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

[X0,Y0]=interp_line(x0,y0,x0+s*2,y0+s*7.7,3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter G');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;      
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_ellipse(x0+s*0,y0+s*0,s*4,s*9,60,350,10);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));     
   if err   
   else       a=a+1;           
       angle_right(a)=angle_r;       
       angle_left(a)=angle_l;
   flag(a)=1;       


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_line(x0+s*4,y0-s*1.5,x0+s*1,y0-s*1.5,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err    
   else       a=a+1;   
       angle_right(a)=angle_r;         
       angle_left(a)=angle_l;
       
   flag(a)=1;      


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*1,y0-s*1.5,x0,y0,3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err   
   else       a=a+1;     
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4,y0-s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter H');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err 
   else       a=a+1;   
              angle_right(a)=angle_r;     
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*4,y0-s*9.5,x0-s*4,y0+s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err   
   else       a=a+1;                
       angle_right(a)=angle_r;        
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*4,y0+s*9.5,x0+s*4,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err 
   else       a=a+1;   
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_line(x0+s*4,y0+s*9.5,x0+s*4,y0-s*9.5,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));   
   if err  
   else       a=a+1;             
       angle_right(a)=angle_r;    
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*4,y0-s*9.5,x0+s*4,y0-s*2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err 
   else       a=a+1;    
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;       
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X3,Y3]=interp_line(x0+s*4,y0-s*2,x0-s*4,y0-s*2,2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));    
   if err    
   else       a=a+1;              
       angle_right(a)=angle_r;    
       angle_left(a)=angle_l;
   flag(a)=1;     
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*4,y0-s*2,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err 
   else       a=a+1;     
              angle_right(a)=angle_r;     
              angle_left(a)=angle_l;
   flag(a)=0;   
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0+s*0,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter I');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;   
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0+s*0,y0+s*9.5,x0+s*0,y0-s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));  
   if err     
   else       a=a+1;                
       angle_right(a)=angle_r; 
       angle_left(a)=angle_l;
   flag(a)=1;     
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*0,y0-s*9.5,x0-s*1,y0-s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


[X2,Y2]=interp_line(x0-s*1,y0-s*9.5,x0+s*1,y0-s*9.5,1);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));   
   if err 
   else       a=a+1;         
       angle_right(a)=angle_r;             
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*1,y0-s*9.5,x0+s*1,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err 
   else       a=a+1;    
              angle_right(a)=angle_r;     
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X3,Y3]=interp_line(x0+s*1,y0+s*9.5,x0-s*1,y0+s*9.5,1);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));    
   if err   
   else       a=a+1;                 
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;     
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*1,y0+s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));
   if err   
   else       a=a+1;     
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0+s*4,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter J');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err   
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0+s*4,y0+s*9.5,x0+s*4,y0-s*4,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));     
   if err   
   else       a=a+1;               
       angle_right(a)=angle_r;    
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*4,y0-s*4,x0-s*4,y0-s*3,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));    
   if err 
   else       a=a+1;    
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_ellipse(x0+s*0,y0-s*4,s*4,s*6,170,360,10);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));   
   if err    
   else       a=a+1;       
       angle_right(a)=angle_r;      
       angle_left(a)=angle_l;
   flag(a)=1;       
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);
   end;
end

[X0,Y0]=interp_line(x0+s*4,y0-s*4,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;     
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;       
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4,y0-s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter K');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0-s*4,y0-s*9.5,x0-s*4,y0+s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));   
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r; 
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0-s*4,y0+s*9.5,x0-s*4,y0-s*2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err 
   else       a=a+1;    
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;       
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_line(x0-s*4,y0-s*2,x0+s*4.5,y0+s*9.5,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));  
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r;              
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0+s*9.5,x0-s*3,y0-s*1,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err 
   else       a=a+1;     
              angle_right(a)=angle_r;  
              angle_left(a)=angle_l;
   flag(a)=0;     
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X3,Y3]=interp_line(x0-s*3,y0-s*1,x0+s*4.5,y0-s*9.5,2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));   
   if err  
   else       a=a+1;                
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;     
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0-s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter L');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;  
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*4,y0+s*9.5,x0-s*4,y0-s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));   
   if err    
   else       a=a+1;                  
       angle_right(a)=angle_r;
       angle_left(a)=angle_l;
   flag(a)=1;     
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_line(x0-s*4,y0-s*9.5,x0+s*4.5,y0-s*9.5,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;       
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0-s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;  
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4,y0-s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter M');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err 
   else       a=a+1;    
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0-s*4,y0-s*9.5,x0-s*4,y0+s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));   
   if err    
   else       a=a+1;                
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_line(x0-s*4,y0+s*9.5,x0+s*0,y0-s*3,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));  
   if err     
   else       a=a+1;                 
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X3,Y3]=interp_line(x0+s*0,y0-s*3,x0+s*4,y0+s*9.5,2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));   
   if err   
   else       a=a+1;                
       angle_right(a)=angle_r;          
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X4,Y4]=interp_line(x0+s*4,y0+s*9.5,x0+s*4,y0-s*9.5,2);
for i=1:length(X4)
   subplot(1,2,1)
   cla;
   plot_robot2(X4(i),Y4(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X4(i),Y4(i));     
   if err 
   else       a=a+1;             
       angle_right(a)=angle_r;            
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X4(i),Y4(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*4,y0-s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err 
   else       a=a+1;    
              angle_right(a)=angle_r;  
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4,y0-s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter N');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err 
   else       a=a+1;  
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0-s*4,y0-s*9.5,x0-s*4,y0+s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err   
   else       a=a+1;
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_line(x0-s*4,y0+s*9.5,x0+s*4,y0-s*9.5,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));   
   if err 
   else       a=a+1;       
       angle_right(a)=angle_r;              
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end


[X3,Y3]=interp_line(x0+s*4,y0-s*9.5,x0+s*4,y0+s*9.5,2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));     
   if err   
   else       a=a+1;        
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end


[X0,Y0]=interp_line(x0+s*4,y0+s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err 
   else       a=a+1;     
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0,3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter O');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


[X,Y]=interp_ellipse(x0+s*0,y0+s*0,s*4.5,s*9,0,360,15);
for i=1:length(X)
   subplot(1,2,1)
   cla;
   plot_robot2(X(i),Y(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X(i),Y(i));   
   if err   
   else       a=a+1;
       angle_right(a)=angle_r;
       angle_left(a)=angle_l;
       
   flag(a)=1;  
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X(i),Y(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


[X0,Y0]=interp_line(x0+s*4.5,y0,x0,y0,3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;     
              angle_left(a)=angle_l;
   flag(a)=0;   
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0-s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter P');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err 
   else       a=a+1;   
              angle_right(a)=angle_r;  
              angle_left(a)=angle_l;
   flag(a)=0;    


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


[X1,Y1]=interp_line(x0-s*4.5,y0-s*9.5,x0-s*4.5,y0+s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));   
   if err   
   else       a=a+1;                 
       angle_right(a)=angle_r; 
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0-s*4.5,y0+s*9.5,x0-s*5,y0-s*0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;  
              angle_right(a)=angle_r;  
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_ellipse(x0-s*3.5,y0+s*4.8,s*8,s*5,-100,100,10);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));     
   if err    
   else       a=a+1;               
       angle_right(a)=angle_r;       
       angle_left(a)=angle_l;
   flag(a)=1;     
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0-s*5,y0+s*9.7,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err 
   else       a=a+1;
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
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

[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0,3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter Q');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_ellipse(x0+s*0,y0+s*0,s*4.5,s*9,0,360,15);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err   
   else       a=a+1;               
       angle_right(a)=angle_r;      
       angle_left(a)=angle_l;
   flag(a)=1;     
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0,x0+s*4.5,y0-s*9.5,3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err  
   else       a=a+1;     
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_line(x0+s*4.5,y0-s*9.5,x0+s*0,y0-s*4,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));  
   if err    
   else       a=a+1;                 
       angle_right(a)=angle_r;       
       angle_left(a)=angle_l;
   flag(a)=1;     
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*0,y0-s*4,x0,y0,3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err 
   else       a=a+1;       
              angle_right(a)=angle_r;  
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0-s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter R');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));
   if err
   else       a=a+1;
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end


[X1,Y1]=interp_line(x0-s*4.5,y0-s*9.5,x0-s*4.5,y0+s*9,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));     
   if err  
   else       a=a+1;           
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


[X0,Y0]=interp_line(x0-s*4.5,y0+s*9.2,x0-s*4.5,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err   
   else       a=a+1;   
              angle_right(a)=angle_r;     
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
end


[X2,Y2]=interp_ellipse(x0-s*3.5,y0+s*4.8,s*8,s*5,-100,100,10);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));  
   if err    
   else       a=a+1;     
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end


[X0,Y0]=interp_line(x0-s*4.5,y0+s*9.2,x0-s*1,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err  
   else       a=a+1;     
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X3,Y3]=interp_line(x0-s*1,y0+s*0,x0+s*4.5,y0-s*9.5,2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));    
   if err   
   else       a=a+1;              
       angle_right(a)=angle_r; 
       angle_left(a)=angle_l;
   flag(a)=1;     
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end


[X0,Y0]=interp_line(x0+s*4.5,y0-s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
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

[X0,Y0]=interp_line(x0,y0,x0+s*3.5,y0+s*7.8,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter S');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;     
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
end

[X1,Y1]=interp_ellipse(x0+s*0,y0+s*5,s*5,s*4,45,270,10);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));     
   if err 
   else       a=a+1;                
       angle_right(a)=angle_r;    
       angle_left(a)=angle_l;
   flag(a)=1;     
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*0.4,y0+s*1,x0-s*4.3,y0-s*7.25,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err 
   else       a=a+1;    
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_ellipse(x0+s*0,y0-s*4.5,s*5,s*5.5,-150,90,10);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));   
   if err  
   else       a=a+1;             
       angle_right(a)=angle_r;    
       angle_left(a)=angle_l;
   flag(a)=1;      


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*0,y0+s*1,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0+s*0,y0-s*9.5,1);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter T');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;     
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end


[X1,Y1]=interp_line(x0+s*0,y0-s*9.5,x0+s*0,y0+s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err   
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end


[X0,Y0]=interp_line(x0+s*0,y0+s*9.5,x0-s*5,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err 
   else       a=a+1;     
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end


[X2,Y2]=interp_line(x0-s*5,y0+s*9.5,x0+s*5,y0+s*9.5,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));     
   if err      
   else       a=a+1;              
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


[X0,Y0]=interp_line(x0+s*5,y0+s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;     
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter U');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*4.5,y0+s*9.5,x0-s*4.5,y0-s*6,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));     
   if err   
   else       a=a+1;                  
       angle_right(a)=angle_r;          
       angle_left(a)=angle_l;
   flag(a)=1;    


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_circ(x0+s*0,y0-s*5.5,s*4.5,190,350,10);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err   
   else       a=a+1;    
       angle_right(a)=angle_r;          
       angle_left(a)=angle_l;
   flag(a)=1;      


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X3,Y3]=interp_line(x0+s*4.5,y0-s*6,x0+s*4.5,y0+s*9.5,2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));  
   if err  
   else       a=a+1;        
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;     


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0+s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err 
   else       a=a+1;     
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter V');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err 
   else       a=a+1;    
              angle_right(a)=angle_r;     
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*4.5,y0+s*9.5,x0+s*0,y0-s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));   
   if err  
   else       a=a+1;               
       angle_right(a)=angle_r;    
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_line(x0+s*0,y0-s*9.5,x0+s*4.5,y0+s*9.5,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));   
   if err 
   else       a=a+1;      
       angle_right(a)=angle_r;         
       angle_left(a)=angle_l;
   flag(a)=1;     


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0+s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err  
   else       a=a+1;     
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter W');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;     
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*4.5,y0+s*9.5,x0-s*2.5,y0-s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err 
   else       a=a+1;              
       angle_right(a)=angle_r;          
       angle_left(a)=angle_l;
   flag(a)=1;        


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
end

[X2,Y2]=interp_line(x0-s*2.5,y0-s*9.5,x0+s*0,y0-s*2,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err  
   else       a=a+1;                  
       angle_right(a)=angle_r;    
       angle_left(a)=angle_l;
   flag(a)=1;     


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X3,Y3]=interp_line(x0+s*0,y0-s*2,x0+s*2.5,y0-s*9.5,2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));    
   if err   
   else       a=a+1;                
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;     
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X4,Y4]=interp_line(x0+s*2.5,y0-s*9.5,x0+s*4.5,y0+s*9.5,2);
for i=1:length(X4)
   subplot(1,2,1)
   cla;
   plot_robot2(X4(i),Y4(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X4(i),Y4(i));     
   if err  
   else       a=a+1;               
       angle_right(a)=angle_r;           
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X4(i),Y4(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0+s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));
   if err        
   else       a=a+1;
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter X');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err  
   else       a=a+1;       
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
end

[X1,Y1]=interp_line(x0-s*4.5,y0+s*9.5,x0+s*4.5,y0-s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));  
   if err   
   else       a=a+1;               
       angle_right(a)=angle_r; 
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0-s*9.5,x0-s*4.5,y0-s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err 
   else       a=a+1;    
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);
   end;
end

[X2,Y2]=interp_line(x0-s*4.5,y0-s*9.5,x0+s*4.5,y0+s*9.5,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));   
   if err    
   else       a=a+1;              
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0+s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err   
   else       a=a+1;    
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter Y');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;  
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end


[X1,Y1]=interp_line(x0-s*4.5,y0+s*9.5,x0+s*0,y0+s*0,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));   
   if err    
   else       a=a+1;        
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;     
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end


[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


[X2,Y2]=interp_line(x0+s*4.5,y0+s*9.5,x0+s*0,y0+s*0,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));     
   if err     
   else       a=a+1;                
       angle_right(a)=angle_r; 
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


[X3,Y3]=interp_line(x0+s*0,y0+s*0,x0+s*0,y0-s*9.5,2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));    
   if err  
   else       a=a+1;                  
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end


[X0,Y0]=interp_line(x0+s*0,y0-s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Letter Z');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


[X1,Y1]=interp_line(x0-s*4.5,y0+s*9.5,x0+s*4.5,y0+s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;                
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


[X2,Y2]=interp_line(x0+s*4.5,y0+s*9.5,x0-s*4.5,y0-s*9.5,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));     
   if err   
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end


[X3,Y3]=interp_line(x0-s*4.5,y0-s*9.5,x0+s*4.5,y0-s*9.5,2);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));    
   if err    
   else       a=a+1;          
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;   
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


[X0,Y0]=interp_line(x0+s*4.5,y0-s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));
   if err  
   else       a=a+1;     
              angle_right(a)=angle_r;     
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end


fprintf(Data_file,'Z\r\n');
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

[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0,3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('number 0');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err   
   else       a=a+1;      
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;  
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X,Y]=interp_ellipse(x0+s*0,y0+s*0,s*4.5,s*9,0,360,15);
for i=1:length(X)
   subplot(1,2,1)
   cla;
   plot_robot2(X(i),Y(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X(i),Y(i));  
   if err   
   else       a=a+1;           
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;   
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X(i),Y(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0,x0+s*4,y0+s*4.5,3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err 
   else       a=a+1;     
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_line(x0+s*4,y0+s*4.5,x0-s*4,y0-s*4.5,4);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));  
   if err    
   else       a=a+1;                
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*4,y0-s*4.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;     
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4,y0+s*2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 1');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err 
   else       a=a+1;    
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;    


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*4,y0+s*2,x0+s*0,y0+s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;               
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;    


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_line(x0+s*0,y0+s*9.5,x0+s*0,y0-s*9.5,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err   
   else       a=a+1;               
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;    


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*0,y0-s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err 
   else       a=a+1;     
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
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

[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0-s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('number 2');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0+s*4.5,y0-s*9.5,x0-s*4.5,y0-s*9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err   
   else       a=a+1;                 
       angle_right(a)=angle_r;           
       angle_left(a)=angle_l;
   flag(a)=1;    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_line(x0-s*4.5,y0-s*9.5,x0+s*3,y0+s*1.5,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));     
   if err    
   else       a=a+1;              
       angle_right(a)=angle_r;         
       angle_left(a)=angle_l;
   flag(a)=1;    


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X3,Y3]=interp_ellipse(x0+s*0,y0+s*4.8,s*4,s*5,-40,180,10)
 for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));    
   if err  
   else       a=a+1;          
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      
     


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
 end

 [X0,Y0]=interp_line(x0-s*4,y0+s*4.8,x0,y0,4);
 for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err 
   else       a=a+1;    
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*1,y0+s*0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('number 3');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err 
   else       a=a+1;   
              angle_right(a)=angle_r;     
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end
 
[X1,Y1]=interp_ellipse(x0-s*1,y0+s*5,s*6,s*5,-90,120,10)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));  
   if err  
   else       a=a+1;        
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
       
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0-s*4,y0+s*9.3,x0-s*5,y0-s*8.8,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;     
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end
 
[X2,Y2]=interp_ellipse(x0-s*1,y0-s*5,s*6,s*5,-130,90,10);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err   
   else       a=a+1;           
       angle_right(a)=angle_r;
       angle_left(a)=angle_l;
   flag(a)=1;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*1,y0+s*0,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err   
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
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

[X0,Y0]=interp_line(x0,y0,x0+s*2.5,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 4');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;      
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0+s*2.5,y0+s*9.5,x0-s*4.5,y0-s*4,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));  
   if err  
   else       a=a+1;    
       angle_right(a)=angle_r;      
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end
 
[X2,Y2]=interp_line(x0-s*4.5,y0-s*4,x0+s*2.5,y0-s*4,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X3,Y3]=interp_line(x0+s*2.5,y0-s*4,x0+s*2.5,y0-s*9.5,2)
 for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));  
   if err   
   else       a=a+1;             
       angle_right(a)=angle_r;      
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
 end
 
[X0,Y0]=interp_line(x0+s*2.5,y0-s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;   
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4.2,y0-s*8.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('number 5');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;  
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_ellipse(x0-s*1,y0-s*4,s*5,s*6,-130,110,20)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err  
   else       a=a+1;       
       angle_right(a)=angle_r;              
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_line(x0-s*3,y0+s*1.6,x0-s*3,y0+s*8,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));     
   if err    
   else       a=a+1;               
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X3,Y3]=interp_line(x0-s*3,y0+s*8,x0+s*4,y0+s*8,2)
 for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));  
   if err   
   else       a=a+1;              
       angle_right(a)=angle_r;          
       angle_left(a)=angle_l;
   flag(a)=1;   
     

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
 end

[X0,Y0]=interp_line(x0+s*4,y0+s*8,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;  
              angle_left(a)=angle_l;
   flag(a)=0;  
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0+s*2.5,y0+s*7.4,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 6');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err   
   else       a=a+1;   
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


[X1,Y1]=interp_ellipse(x0+s*0,y0+s*4,s*4,s*4.5,50,180,20)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;  
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end


[X2,Y2]=interp_line(x0-s*4,y0+s*4,x0-s*4,y0-s*4,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err  
   else       a=a+1;               
       angle_right(a)=angle_r; 
       angle_left(a)=angle_l;
   flag(a)=1;   
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X3,Y3]=interp_ellipse(x0+s*0,y0-s*4,s*4,s*5,-180,180,20)
 for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));     
   if err    
   else       a=a+1;               
       angle_right(a)=angle_r; 
       angle_left(a)=angle_l;
   flag(a)=1;    
     

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
 end

[X0,Y0]=interp_line(x0-s*4,y0-s*4,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;       
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;  
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*4,y0+s*9.5,4)
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 7');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err 
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0-s*4,y0+s*9.5,x0+s*4,y0+s*9.5,2)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
    
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;               
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
end

[X2,Y2]=interp_line(x0+s*4,y0+s*9.5,x0-s*4,y0-s*9.5,2)
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));   
   if err  
   else       a=a+1;                
       angle_right(a)=angle_r;
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0-s*4,y0-s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
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

[X0,Y0]=interp_line(x0,y0,x0-s*0,y0+s*1.5,4)
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 8');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err 
   else       a=a+1;      
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;   
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_ellipse(x0+s*0,y0+s*5.5,s*3,s*4,-90,270,20)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));   
   if err     
   else       a=a+1;                 
       angle_right(a)=angle_r; 
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_ellipse(x0+s*0,y0-s*4,s*4,s*5.5,90,450,20)
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i)); 
   if err   
   else       a=a+1;       
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
end

[X0,Y0]=interp_line(x0-s*0,y0+s*1.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));   
   if err  
   else       a=a+1;     
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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

[X0,Y0]=interp_line(x0,y0,x0+s*3.5,y0+s*5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 9');
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;  
              angle_right(a)=angle_r;    
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_ellipse(x0+s*0,y0+s*4.5,s*3.5,s*4.5,0,360,20)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_line(x0+s*3.5,y0+s*4,x0+s*3.5,y0-s*4,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));   
   if err   
   else       a=a+1;      
       angle_right(a)=angle_r;          
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*3.5,y0-s*4,x0-s*3,y0-s*6.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;     
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;  
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X3,Y3]=interp_ellipse(x0+s*0,y0-s*4,s*3.5,s*5,-150,0,20)
 for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0; 
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
  end;
 end
 
[X0,Y0]=interp_line(x0+s*3.5,y0-s*4,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
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


%%
% ponctuation 

% P,
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*3,y0-s*9,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*3,y0-s*9,x0-s*4,y0-s*10,1)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*4,y0-s*10,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else
              a=a+1;
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

fprintf(Data_file,'P,\r\n');
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
%P.
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*4,y0-s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

   subplot(1,2,1)
   cla;
   plot_robot2(x0-s*4.8,y0-s*9.5,'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(x0-s*4,y0-s*9.5);  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(x0-s*4.8,y0-s*9.5,'ko','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);
   end;
   
 [X0,Y0]=interp_line(x0-s*4,y0-s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);
   end;
end

fprintf(Data_file,'P.\r\n');
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
%P:
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0,y0-s*5.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

   subplot(1,2,1)
   cla;
   plot_robot2(x0,y0-s*5.5,'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(x0,y0-s*5.5);  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(x0,y0-s*5.5,'ko','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;

   [X0,Y0]=interp_line(x0,y0-s*5.5,x0,y0-s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

   subplot(1,2,1)
   cla;
   plot_robot2(x0,y0-s*9.5,'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(x0,y0-s*9.5);  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(x0,y0-s*9.5,'ko','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;

 [X0,Y0]=interp_line(x0,y0-s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

fprintf(Data_file,'P:\r\n');
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
% P?
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+4.33,y0+s*6,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_ellipse(x0,y0+s*4,s*5,s*4,30,200,20)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0-s*5,y0+s*3.3,x0+s*3.3,y0+s*1.6,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_ellipse(x0-s*0.5,y0+s*4,s*6,s*3,-50,30,20)
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i)); 
   if err   
   else       a=a+1;       
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'bo','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
end

[X0,Y0]=interp_line(x0+4.33,y0+s*6,x0+4.33,y0+s*6,2);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X3,Y3]=interp_circ(x0+s*3.3,y0-s*1.7,s*3.3,90,180,20)
 for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   if err  
   else       a=a+1;               
       angle_right(a)=angle_r;           
       angle_left(a)=angle_l;
   flag(a)=1; 
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
  end;
 end
 
 [X4,Y4]=interp_line(x0,y0-s*1.7,x0,y0-s*4,2);
for i=1:length(X4)
   subplot(1,2,1)
   cla;
   plot_robot2(X4(i),Y4(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X4(i),Y4(i));     
   if err  
   else       a=a+1;               
       angle_right(a)=angle_r;           
       angle_left(a)=angle_l;
   flag(a)=1;      
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);

   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X4(i),Y4(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0,y0-s*4,x0,y0-s*7,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

subplot(1,2,1)
   cla;
   plot_robot2(x0,y0-s*7,'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(x0,y0-s*7);  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(x0,y0-s*7,'ko','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
   
[X0,Y0]=interp_line(x0,y0-s*7,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

fprintf(Data_file,'P?\r\n');
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
%P!
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0,y0+s*9,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0,y0+s*9,x0,y0-s*6,2)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0,y0-s*6,x0,y0-s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
end

subplot(1,2,1)
   cla;
   plot_robot2(x0,y0-s*9.5,'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(x0,y0-s*9.5);  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(x0,y0-s*9.5,'ko','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;

[X0,Y0]=interp_line(x0,y0-s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

fprintf(Data_file,'P!\r\n');
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
%P/
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0+s*4.5,y0+s*9.5,x0-s*4.5,y0-s*9.5,2)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*4.5,y0-s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

fprintf(Data_file,'P/\r\n');
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
%P\
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*4.5,y0+s*9.5,x0+s*4.5,y0-s*9.5,2)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0-s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
end

fprintf(Data_file,'P\\\r\n');
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
%P_
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*4,y0-s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);    end;
end
[X1,Y1]=interp_line(x0-s*4,y0-s*9.5,x0+s*4,y0-s*9.5,2)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*4,y0-s*9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);    end;
end

fprintf(Data_file,'P_\r\n');
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
%P-
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*2.5,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0-s*2.5,y0,x0+s*2.5,y0,2)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*2.5,y0,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

fprintf(Data_file,'P-\r\n');
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
%P'
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*0.25,y0+s*9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0+s*0.25,y0+s*9.5,x0-s*0.25,y0+s*7.5,0.5)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*0.25,y0+s*7.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

fprintf(Data_file,'%s\r\n','P"');
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
%P#
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0+s*3,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
end

[X1,Y1]=interp_line(x0+s*4.5,y0+s*3,x0-s*4.5,y0+s*3,2)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0-s*4.5,y0+s*3,x0-s*4.5,y0-s*3,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_line(x0-s*4.5,y0-s*3,x0+s*4.5,y0-s*3,2);

for k=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(k),Y2(k),'True');
    
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k));  
   if err   
   else       a=a+1;          
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;      

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw); 
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0-s*3,x0+s*1,y0-s*7,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X3,Y3]=interp_line(x0+s*1,y0-s*7,x0+s*4.5,y0+s*7,2);

for k=1:length(X3)
   subplot(1,2,1);
   cla;
   plot_robot2(X3(k),Y3(k),'True');   
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(k),Y3(k));  
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      
    
       
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X3(k),Y3(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw);  
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0+s*7,x0-s*1,y0+s*7,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X4,Y4]=interp_line(x0-s*1,y0+s*7,x0-s*4.5,y0-s*7,2);
for i=1:length(X4)
   subplot(1,2,1)
   cla;
   plot_robot2(X4(i),Y4(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X4(i),Y4(i));     
   if err  
   else       a=a+1;                 
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X4(i),Y4(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*4.5,y0-s*7,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

fprintf(Data_file,'P#\r\n');
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
%P(
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*1.5,y0+s*9,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_ellipse(x0+s*1.5,y0,s*3,s*9,90,270,20)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*1.5,y0-s*9,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

fprintf(Data_file,'P(\r\n');
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
%P)
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*1.5,y0-s*9,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_ellipse(x0-s*1.5,y0,s*3,s*9,-90,90,20)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*1.5,y0+s*9,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
end

fprintf(Data_file,'P(\r\n');
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
%P[
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*2,y0+s*9,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0+s*2,y0+s*9,x0-s*2,y0+s*9,2)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_line(x0-s*2,y0+s*9,x0-s*2,y0-s*9,2);

for k=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(k),Y2(k),'True');
    
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k));  
   if err   
   else       a=a+1;          
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;      

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw); 
   end;
end

[X3,Y3]=interp_line(x0-s*2,y0-s*9,x0+s*2,y0-s*9,2);

for k=1:length(X3)
   subplot(1,2,1);
   cla;
   plot_robot2(X3(k),Y3(k),'True');   
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(k),Y3(k));  
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      
    
       
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X3(k),Y3(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw);  
   end;
end

[X0,Y0]=interp_line(x0+s*2,y0-s*9,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

fprintf(Data_file,'P[\r\n');
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
%P]
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*2,y0+s*9,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*2,y0+s*9,x0+s*2,y0+s*9,2)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_line(x0+s*2,y0+s*9,x0+s*2,y0-s*9,2);

for k=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(k),Y2(k),'True');
    
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k));  
   if err   
   else       a=a+1;          
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;      
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);  
   end;
end

[X3,Y3]=interp_line(x0+s*2,y0-s*9,x0-s*2,y0-s*9,2);

for k=1:length(X3)
   subplot(1,2,1);
   cla;
   plot_robot2(X3(k),Y3(k),'True');   
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(k),Y3(k));  
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      
    
       
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X3(k),Y3(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw); 
   end;
end

[X0,Y0]=interp_line(x0-s*2,y0-s*9,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

fprintf(Data_file,'P]\r\n');
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
%P=
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0+s*2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0+s*4.5,y0+s*2,x0-s*4.5,y0+s*2,2)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*4.5,y0+s*2,x0-s*4.5,y0-s*2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
end

[X2,Y2]=interp_line(x0-s*4.5,y0-s*2,x0+s*4.5,y0-s*2,2);

for k=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(k),Y2(k),'True');
    
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k));  
   if err   
   else       a=a+1;          
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;      

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw); 
   end;
end


[X0,Y0]=interp_line(x0+s*4.5,y0-s*2,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

fprintf(Data_file,'P=\r\n');
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
%P+
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0,y0+s*4,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0,y0+s*4,x0,y0-s*4,2)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0,y0-s*4,x0-s*4,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
end

[X2,Y2]=interp_line(x0-s*4,y0,x0+s*4,y0,2);

for k=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(k),Y2(k),'True');
    
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k));  
   if err   
   else       a=a+1;          
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;      

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw); 
   end;
end


[X0,Y0]=interp_line(x0+s*4,y0,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

fprintf(Data_file,'P+\r\n');
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
%P<
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*3,y0+s*5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0+s*3,y0+s*5,x0-s*3,y0,2)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_line(x0-s*3,y0,x0+s*3,y0-s*5,2);

for k=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(k),Y2(k),'True');
    
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k));  
   if err   
   else       a=a+1;          
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;      
   
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);  
   end;
end

[X0,Y0]=interp_line(x0+s*3,y0-s*5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

fprintf(Data_file,'P<\r\n');
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
%P>
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*3,y0+s*5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*3,y0+s*5,x0+s*3,y0,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_line(x0+s*3,y0,x0-s*3,y0-s*5,2);

for k=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(k),Y2(k),'True');
    
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k));  
   if err   
   else       a=a+1;          
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;      

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);  
   end;
end

[X0,Y0]=interp_line(x0-s*3,y0-s*5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
end

fprintf(Data_file,'P<\r\n');
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
%P@
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*2,y0+s*2.3,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_ellipse(x0+s*0.5,y0,s*3,s*2.5,60,310,20)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


[X0,Y0]=interp_line(x0+s*2,y0-s*2.3,x0+s*2,y0+s*2.5,3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_line(x0+s*2,y0+s*2.5,x0+s*2,y0-s*2.3,2);

for k=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(k),Y2(k),'True');
    
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k));  
   if err   
   else       a=a+1;          
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;      

   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);  
   end;
end

[X3,Y3]=interp_ellipse(x0+s*3,y0-s*2,s*1,s*1,180,330,40)
 for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
    [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));   
   if err  
   else      a=a+1;             
       angle_right(a)=angle_r;    
       angle_left(a)=angle_l;
   flag(a)=1;  

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
    end;
 end
 
 [X4,Y4]=interp_ellipse(x0+s*0,y0-s*0,s*5,s*6,-20,300,20);
for i=1:length(X4)
   subplot(1,2,1)
   cla;
   plot_robot2(X4(i),Y4(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X4(i),Y4(i));   
   if err  
   else       a=a+1;             
       angle_right(a)=angle_r;    
       angle_left(a)=angle_l;
   flag(a)=1;      
   
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X4(i),Y4(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*2.5,y0-s*5,x0,y0,3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

fprintf(Data_file,'P@\r\n');
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
%P°
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0,y0+s*7,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_circ(x0,y0+s*8,s*1,-90,270,40);
for k=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(k),Y1(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(k),Y1(k)); 
   if err   
   else       a=a+1;          
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;       
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(k),Y1(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw);  
   end;
end


[X0,Y0]=interp_line(x0,y0+s*7,x0,y0,3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

fprintf(Data_file,'P°\r\n');
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
%P&
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0-s*9,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0+s*4.5,y0-s*9,x0-s*0,y0+s*4,2)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_circ(x0,y0+s*5,s*1,-90,270,40);
for k=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(k),Y2(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k)); 
   if err   
   else       a=a+1;          
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;       
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw);  
   end;
end

[X3,Y3]=interp_line(x0,y0+s*4,x0-s*4,y0-s*3,2);

for k=1:length(X3)
   subplot(1,2,1);
   cla;
   plot_robot2(X3(k),Y3(k),'True');   
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(k),Y3(k));  
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      
    
       
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X3(k),Y3(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw);   
   end;
end

[X4,Y4]=interp_ellipse(x0,y0-s*5,s*4.5,s*4,-200,20,15);
for k=1:length(X4)
   subplot(1,2,1);
   cla;
   plot_robot2(X4(k),Y4(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X4(k),Y4(k));   
   if err    
   else       a=a+1;        
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;      
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X4(k),Y4(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);   
   end;
end

[X0,Y0]=interp_line(x0+s*4.4,y0-s*4.4,x0,y0,3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end




fprintf(Data_file,'P°\r\n');
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
%a
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*4.3,y0-s*2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_ellipse(x0+s*0.5,y0-s*5,s*5,s*4.5,40,320,20)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_line(x0+s*4.3,y0-s*9,x0+s*4.3,y0+s*2.4,3);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X3,Y3]=interp_ellipse(x0+s*0.5,y0+s*1.5,s*4,s*3.5,15,155,20)
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);
   end;
end

[X0,Y0]=interp_line(x0-s*3,y0+s*3,x0,y0,3);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


fprintf(Data_file,'a\r\n');
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
%b
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*8,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*4.5,y0+s*8,x0-s*4.5,y0-s*9,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_ellipse(x0-s*0.5,y0-s*4,s*4.5,s*5.5,-150,150,15);
for k=1:length(X2)
   subplot(1,2,1);
   cla;
   plot_robot2(X2(k),Y2(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k));   
   if err    
   else       a=a+1;        
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;      
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);   
   end;
end

[X0,Y0]=interp_line(x0-s*4.5,y0-s*1,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


fprintf(Data_file,'b\r\n');
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
%c
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*3,y0-s*1.8,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X,Y]=interp_ellipse(x0+s*0,y0-s*5,s*4,s*5,40,330,15);
for i=1:length(X)
   subplot(1,2,1)
   cla;
   plot_robot2(X(i),Y(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X(i),Y(i));  
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;     
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X(i),Y(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*3.3,y0-s*8,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

fprintf(Data_file,'c\r\n');
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
%d
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*4.3,y0-s*2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_ellipse(x0+s*0.5,y0-s*5,s*5,s*4.5,40,320,20)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


[X2,Y2]=interp_line(x0+s*4.3,y0-s*9,x0+s*4.3,y0+s*8,3);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);   
   end;
end

[X0,Y0]=interp_line(x0+s*4.3,y0+s*8,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

fprintf(Data_file,'d\r\n');
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
%e
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0-s*5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*4.5,y0-s*5,x0+s*4.5,y0-s*5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_ellipse(x0,y0-s*5,s*4.5,s*5.5,0,320,15);
for k=1:length(X2)
   subplot(1,2,1);
   cla;
   plot_robot2(X2(k),Y2(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k));   
   if err    
   else       a=a+1;        
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;      
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);  
   end;
end

[X0,Y0]=interp_line(x0+s*3,y0-s*9,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

fprintf(Data_file,'e\r\n');
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
%f
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*2,y0+s*6.7,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_circ(x0+s*0,y0+s*6,s*2,20,180,40);
for k=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(k),Y1(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(k),Y1(k)); 
   if err   
   else       a=a+1;          
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;       
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(k),Y1(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw); 
   end;
end

[X2,Y2]=interp_line(x0-s*2,y0+s*6,x0-s*2,y0-s*9,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*2,y0-s*9,x0-s*2,y0+s*1,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X3,Y3]=interp_line(x0-s*2,y0+s*1,x0+s*0.5,y0+s*1,2);
for k=1:length(X3)
   subplot(1,2,1);
   cla;
   plot_robot2(X3(k),Y3(k),'True');   
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(k),Y3(k));  
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      
    
       
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X3(k),Y3(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw); 
   end;
end

[X0,Y0]=interp_line(x0+s*0.5,y0+s*1,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end


fprintf(Data_file,'f\r\n');
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
%g
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*3,y0-s*8.4,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_ellipse(x0+s*0.5,y0-s*5,s*5,s*4.5,-130,-40,20)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_line(x0+s*4.5,y0-s*6,x0+s*4.5,y0+s*3.5,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X3,Y3]=interp_ellipse(x0+s*0.5,y0+s*1,s*4.5,s*4,30,330,20)
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*4.4,y0-s*1,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end
  
fprintf(Data_file,'g\r\n');
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
%h
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*3,y0+s*8,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0-s*3,y0+s*8,x0-s*3,y0-s*9,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0-s*3,y0-s*9,x0+s*3,y0-s*9,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_line(x0+s*3,y0-s*9,x0+s*3,y0-s*3,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X3,Y3]=interp_ellipse(x0,y0-s*6,s*3.5,s*6,30,150,15);
for k=1:length(X3)
   subplot(1,2,1);
   cla;
   plot_robot2(X3(k),Y3(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(k),Y3(k));   
   if err    
   else       a=a+1;        
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;      
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X3(k),Y3(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);   
   end;
end

[X0,Y0]=interp_line(x0-s*3,y0-s*3,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


fprintf(Data_file,'h\r\n');
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
%i
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0,y0-s*9,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0,y0-s*9,x0,y0+s*1,1);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0,y0+s*1,x0,y0+s*4,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

subplot(1,2,1)
   cla;
   plot_robot2(x0,y0+s*4,'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(x0,y0+s*4);    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(x0,y0+s*4,'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;

[X0,Y0]=interp_line(x0,y0-s*4,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

fprintf(Data_file,'i\r\n');
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
%j
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*2.5,y0-s*8,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_circ(x0-s*1,y0-s*7,s*2,-150,10,40);
for k=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(k),Y1(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(k),Y1(k)); 
   if err   
   else       a=a+1;          
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;       
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(k),Y1(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw); 
   end;
end

[X2,Y2]=interp_line(x0+s*1,y0-s*7,x0+s*1,y0+s*1,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*1,y0+s*1,x0+s*1,y0+s*4,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

subplot(1,2,1)
   cla;
   plot_robot2(x0+s*1,y0+s*4,'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(x0+s*1,y0+s*4);    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(x0+s*1,y0+s*4,'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
   
[X0,Y0]=interp_line(x0+s*1,y0+s*4,x0,y0,1);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

fprintf(Data_file,'j\r\n');
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
%k
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*2.5,y0-s*8,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*3,y0-s*9,x0-s*3,y0+s*8,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*3,y0+s*8,x0-s*3,y0-s*3,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_line(x0-s*3,y0-s*3,x0+s*3,y0+s*8,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*3,y0+s*8,x0-s*2,y0-s*1,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X3,Y3]=interp_line(x0-s*2,y0-s*1,x0+s*3,y0-s*9,2);
for k=1:length(X3)
   subplot(1,2,1);
   cla;
   plot_robot2(X3(k),Y3(k),'True');   
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(k),Y3(k));  
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      
    
       
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X3(k),Y3(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw);  
   end;
end

[X0,Y0]=interp_line(x0+s*3,y0-s*9,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end


fprintf(Data_file,'k\r\n');
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
%l
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0,y0+s*8,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0,y0+s*8,x0,y0-s*9,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0,y0-s*9,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

fprintf(Data_file,'l\r\n');
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
%m
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0-s*9,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0+s*4.5,y0-s*9,x0+s*4.5,y0-s*0,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_ellipse(x0+s*2.25,y0-s*0,s*2.25,s*2,0,180,30);
for k=1:length(X2)
   subplot(1,2,1);
   cla;
   plot_robot2(X2(k),Y2(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k));   
   if err    
   else       a=a+1;        
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;      
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);    
   end;
end

[X3,Y3]=interp_ellipse(x0-s*2.25,y0-s*0,s*2.25,s*2,0,180,30);
for i=1:length(X3)
   subplot(1,2,1)
   cla;
   plot_robot2(X3(i),Y3(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(i),Y3(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X3(i),Y3(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X4,Y4]=interp_line(x0-s*4.5,y0+s*1.5,x0-s*4.5,y0-s*9,2);
for i=1:length(X4)
   subplot(1,2,1)
   cla;
   plot_robot2(X4(i),Y4(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X4(i),Y4(i));     
   if err  
   else       a=a+1;                 
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X4(i),Y4(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*4.5,y0-s*9,x0,y0-s*9,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X5,Y5]=interp_line(x0,y0-s*9,x0,y0,2);
for i=1:length(X5)
   subplot(1,2,1)
   cla;
   plot_robot2(X5(i),Y5(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X5(i),Y5(i));     
   if err  
   else       a=a+1;                 
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X5(i),Y5(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end


fprintf(Data_file,'m\r\n');
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
%n
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*3,y0-s*9,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0+s*3,y0-s*9,x0+s*3,y0-s*0,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_ellipse(x0+s*0,y0-s*0,s*3,s*2,0,180,30);
for k=1:length(X2)
   subplot(1,2,1);
   cla;
   plot_robot2(X2(k),Y2(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k));   
   if err    
   else       a=a+1;        
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;      
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);    
   end;
end

[X2,Y2]=interp_line(x0-s*3,y0+s*1.5,x0-s*3,y0-s*9,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0-s*3,y0-s*9,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

fprintf(Data_file,'n\r\n');
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
%o
figure;
hold on;

[X1,Y1]=interp_circ(x0,y0-s*4,s*4,90,450,20);
for k=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(k),Y1(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(k),Y1(k)); 
   if err   
   else       a=a+1;          
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;       
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(k),Y1(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw);  
   end;
end

fprintf(Data_file,'o\r\n');
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
%p
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*3,y0-s*9,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err 
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0; 
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
   
end

[X1,Y1]=interp_line(x0-s*3,y0-s*9,x0-s*3,y0+s*5.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i)); 
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1; 
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
    
end

[X0,Y0]=interp_line(x0-s*3,y0+s*5.5,x0-s*3,y0-s*1,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
   
end

[X2,Y2]=interp_ellipse(x0+s*0,y0+s*1.5,s*3,s*4,-150,150,30);
for k=1:length(X2)
   subplot(1,2,1);
   cla;
   plot_robot2(X2(k),Y2(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k)); 
   if err    
   else       a=a+1;        
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1; 
    
    
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);    
   end;
   
end

[X0,Y0]=interp_line(x0-s*3,y0+s*3.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0; 
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
   
end

fprintf(Data_file,'p\r\n');
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
%q
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*3,y0-s*9,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0+s*3,y0-s*9,x0+s*3,y0+s*5.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_ellipse(x0+s*0,y0+s*1.5,s*3,s*4,30,330,30);
for k=1:length(X2)
   subplot(1,2,1);
   cla;
   plot_robot2(X2(k),Y2(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k));   
   if err    
   else       a=a+1;        
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;      
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);    
   end;
end

[X0,Y0]=interp_line(x0+s*3,y0-s*0.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

fprintf(Data_file,'q\r\n');
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
%r
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*1.7,y0+s*1,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_ellipse(x0+s*0,y0+s*0,s*2,s*2,30,180,30);
for k=1:length(X1)
   subplot(1,2,1);
   cla;
   plot_robot2(X1(k),Y1(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(k),Y1(k));   
   if err    
   else       a=a+1;        
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;      
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X1(k),Y1(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);   
   end;
end

[X2,Y2]=interp_line(x0-s*2,y0+s*1.5,x0-s*2,y0-s*7,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0-s*2,y0-s*7,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

fprintf(Data_file,'r\r\n');
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
%s
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+s*2,y0+s*2.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_ellipse(x0+s*0,y0+s*1,s*3,s*2,45,270,30);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));     
   if err 
   else       a=a+1;                
       angle_right(a)=angle_r;    
       angle_left(a)=angle_l;
   flag(a)=1;     
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0-s*0,y0-s*1,x0-s*2.5,y0-s*6.25,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err 
   else       a=a+1;    
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_ellipse(x0+s*0,y0-s*4.5,s*3,s*3.5,-150,90,30);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));   
   if err  
   else       a=a+1;             
       angle_right(a)=angle_r;    
       angle_left(a)=angle_l;
   flag(a)=1;      
   
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*0,y0-s*1,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

fprintf(Data_file,'s\r\n');
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
%t
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*2,y0+s*8,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0-s*2,y0+s*8,x0-s*2,y0-s*8,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_ellipse(x0+s*0,y0-s*8,s*2,s*1,180,300,30);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));   
   if err  
   else       a=a+1;             
       angle_right(a)=angle_r;    
       angle_left(a)=angle_l;
   flag(a)=1;      
   
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0+s*1,y0-s*8.8,x0+s*1,y0+s*2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X3,Y3]=interp_line(x0+s*1,y0+s*2,x0-s*2,y0+s*2,1);
for k=1:length(X3)
   subplot(1,2,1);
   cla;
   plot_robot2(X3(k),Y3(k),'True');   
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(k),Y3(k));  
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      
    
       
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X3(k),Y3(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw); 
   end;
end

[X0,Y0]=interp_line(x0-s*2,y0+s*2,x0,y0,2);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

fprintf(Data_file,'t\r\n');
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
%u
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*3,y0+s*2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*3,y0+s*2,x0-s*3,y0-s*7,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_ellipse(x0+s*0,y0-s*7,s*3,s*2,-180,0,30);
for k=1:length(X2)
   subplot(1,2,1);
   cla;
   plot_robot2(X2(k),Y2(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(k),Y2(k));   
   if err    
   else       a=a+1;        
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;      
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X2(k),Y2(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);  
   end;
end

[X3,Y3]=interp_line(x0+s*3,y0-s*7,x0+s*3,y0+s*2,2);
for k=1:length(X3)
   subplot(1,2,1);
   cla;
   plot_robot2(X3(k),Y3(k),'True');   
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(k),Y3(k));  
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      
    
       
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X3(k),Y3(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw); 
   end;
end

[X0,Y0]=interp_line(x0+s*3,y0+s*2,x0,y0,2);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

fprintf(Data_file,'u\r\n');
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
%v
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*3,y0+s*2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*3,y0+s*2,x0,y0-s*9,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_line(x0,y0-s*9,x0+s*3,y0+s*2,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*3,y0+s*2,x0,y0,2);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

fprintf(Data_file,'v\r\n');
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
%w
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X1,Y1]=interp_line(x0-s*4.5,y0+s*2,x0-s*2.25,y0-s*9,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X2,Y2]=interp_line(x0-s*2.25,y0-s*9,x0,y0+s*1,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X3,Y3]=interp_line(x0,y0+s*1,x0+s*2.25,y0-s*9,2);
for k=1:length(X3)
   subplot(1,2,1);
   cla;
   plot_robot2(X3(k),Y3(k),'True');   
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(k),Y3(k));  
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      
    
       
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X3(k),Y3(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw);
   end;
end

[X4,Y4]=interp_line(x0+s*2.25,y0-s*9,x0+s*4.5,y0+s*2,2);
for i=1:length(X4)
   subplot(1,2,1)
   cla;
   plot_robot2(X4(i),Y4(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X4(i),Y4(i));     
   if err  
   else       a=a+1;                 
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      


   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X4(i),Y4(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);
   end;
end

[X0,Y0]=interp_line(x0+s*4.5,y0+s*2,x0,y0,2);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i)); 
   if err  
   else       a=a+1;    
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;      
   

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

fprintf(Data_file,'w\r\n');
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
%x
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*3,y0+s*2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_line(x0-s*3,y0+s*2,x0+s*3,y0-s*9,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X0,Y0]=interp_line(x0+s*3,y0-s*9,x0+s*3,y0+s*2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X2,Y2]=interp_line(x0+s*3,y0+s*2,x0-s*3,y0-s*9,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

[X0,Y0]=interp_line(x0-s*3,y0-s*9,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end

fprintf(Data_file,'x\r\n');
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
%y
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*3,y0-s*9,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);  
   end;
end

[X1,Y1]=interp_ellipse(x0-s*2,y0-s*8,s*2,s*1,-130,-30,30);
for k=1:length(X1)
   subplot(1,2,1);
   cla;
   plot_robot2(X1(k),Y1(k),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(k),Y1(k));   
   if err    
   else       a=a+1;        
       angle_right(a)=angle_r;     
       angle_left(a)=angle_l;
   flag(a)=1;      
    
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X1(k),Y1(k),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx]);
   ylim([-vy vy]);
   drawnow;
   pause(t_pause_draw);
   end;
end

[X2,Y2]=interp_line(x0+s*0,y0-s*8.5,x0+s*3,y0+s*2,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);    end;
end

[X0,Y0]=interp_line(x0+s*3,y0+s*2,x0-s*3,y0+s*2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);    end;
end

[X3,Y3]=interp_line(x0-s*3,y0+s*2,x0+s*1,y0-s*4.5,2);
for k=1:length(X3)
   subplot(1,2,1);
   cla;
   plot_robot2(X3(k),Y3(k),'True');   
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(k),Y3(k));  
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      
    
       
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X3(k),Y3(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw);    end;
end

[X0,Y0]=interp_line(x0+s*1,y0-s*4.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);    end;
end

fprintf(Data_file,'x\r\n');
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
%z
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-s*3,y0+s*2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);    end;
end

[X1,Y1]=interp_line(x0-s*3,y0+s*2,x0+s*3,y0+s*2,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X1(i),Y1(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);    end;
end

[X2,Y2]=interp_line(x0+s*3,y0+s*2,x0-s*3,y0-s*9,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');
   
   [angle_l,angle_r,err]=get_angles_robot2(X2(i),Y2(i));    
   if err    
   else       a=a+1;             
       angle_right(a)=angle_r;  
       angle_left(a)=angle_l;
   flag(a)=1;    
    

   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up);    end;
end

[X3,Y3]=interp_line(x0-s*3,y0-s*9,x0+s*3,y0-s*9,2);
for k=1:length(X3)
   subplot(1,2,1);
   cla;
   plot_robot2(X3(k),Y3(k),'True');   
   
   [angle_l,angle_r,err]=get_angles_robot2(X3(k),Y3(k));  
   if err  
   else       a=a+1;            
       angle_right(a)=angle_r;   
       angle_left(a)=angle_l;
   flag(a)=1;      
    
       
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2);
   hold on
   scatter(X3(k),Y3(k),'ko','LineWidth',2);

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_draw);  
   end;
end;


[X0,Y0]=interp_line(x0+s*3,y0-s*9,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');
   
   [angle_l,angle_r,err]=get_angles_robot2(X0(i),Y0(i));  
   if err  
   else       a=a+1;   
              angle_right(a)=angle_r;   
              angle_left(a)=angle_l;
   flag(a)=0;    
   
   
   
   daspect([1 1 1 ]);
   grid on;
   xlim([-vvx vvx]);
   ylim([vvy_low vvy]);
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-vx vx])
   ylim([-vy vy])
   drawnow;
   pause(t_pause_up); 
   end;
end
%%
fclose(Data_file);
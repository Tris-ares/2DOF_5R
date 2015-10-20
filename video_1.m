%animation

close all;
clear all;
clc;

x0=0;

y0=0;

t_pause_draw=0.0;
t_pause_up=0.0;

% %%
% % A
% 
% figure;
% 
% subplot(1,2,2)
% scatter(x0,y0,60,'r+');
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-5,y0-10,2);
% 
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter A');
%    plot_robot2(X0(i),Y0(i),'False');
%    
% %     [xn,yn]=interp_circ(X0(i),Y0(i),20,0,360,20)
% %     plot(xn,yn,'g.-')
% %    
% %     [xn,yn]=interp_circ(-6,-35,26,0,360,20)
% %     plot(xn,yn,'m.-')
% %     [xn,yn]=interp_circ(6,-35,26,0,360,20)
% %     plot(xn,yn,'m.-')
% 
%    daspect([1 1 1 ]);
%    grid on;
%    
%    xlim([-40 40]);
%    ylim([-60 20]);
%    subplot(1,2,2);
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.1);
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6]);
%    ylim([-12 12]);
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_line(x0-5,y0-10,x0+0,y0+10,2);
% 
% for k=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(k),Y1(k),'True');
%   
% %     [xn,yn]=interp_circ(X1(k),Y1(k),20,0,360,20)
% %     plot(xn,yn,'g.-')
% %         [xn,yn]=interp_circ(-6,-35,26,0,360,20)
% %     plot(xn,yn,'m.-')
% %     [xn,yn]=interp_circ(6,-35,26,0,360,20)
% %     plot(xn,yn,'m.-')
%    
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40]);
%    ylim([-60 20]);
%    subplot(1,2,2);
%    hold on;
%    scatter(X1(k),Y1(k),'ko','LineWidth',2);
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6]);
%    ylim([-12 12]);
%    drawnow;
%    pause(t_pause_draw)
% end
% 
% [X2,Y2]=interp_line(x0+0,y0+10,x0+5,y0-10,2);
% 
% for k=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(k),Y2(k),'True');
% 
% %     [xn,yn]=interp_circ(X2(k),Y2(k),20,0,360,20)
% %     plot(xn,yn,'g.-')
% %         [xn,yn]=interp_circ(-6,-35,26,0,360,20)
% %     plot(xn,yn,'m.-')
% %     [xn,yn]=interp_circ(6,-35,26,0,360,20)
% %     plot(xn,yn,'m.-')
%    
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40]);
%    ylim([-60 20]);
%    subplot(1,2,2);
%    hold on
%    scatter(X2(k),Y2(k),'ko','LineWidth',2);
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6]);
%    ylim([-12 12]);
%    drawnow;
%    pause(t_pause_draw)
% end
% 
% 
% [X0,Y0]=interp_line(x0+5,y0-10,x0-2.5,y0+0,2);
% 
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
%    
% %     [xn,yn]=interp_circ(X0(i),Y0(i),20,0,360,20)
% %     plot(xn,yn,'g.-')
% %         [xn,yn]=interp_circ(-6,-35,26,0,360,20)
% %     plot(xn,yn,'m.-')
% %     [xn,yn]=interp_circ(6,-35,26,0,360,20)
% %     plot(xn,yn,'m.-')
%    
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40]);
%    ylim([-60 20]);
%    subplot(1,2,2);
%    hold on;
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.1);
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% 
% [X3,Y3]=interp_line(x0-2.5,y0+0,x0+2.5,y0+0,2);
% 
% for k=1:length(X3)
%    subplot(1,2,1);
%    cla;
%    plot_robot2(X3(k),Y3(k),'True');
%    
% %     [xn,yn]=interp_circ(X3(k),Y3(k),20,0,360,20)
% %     plot(xn,yn,'g.-')
% %         [xn,yn]=interp_circ(-6,-35,26,0,360,20)
% %     plot(xn,yn,'m.-')
% %     [xn,yn]=interp_circ(6,-35,26,0,360,20)
% %     plot(xn,yn,'m.-')
% %    
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40]);
%    ylim([-60 20]);
%    subplot(1,2,2);
%    hold on
%    scatter(X3(k),Y3(k),'ko','LineWidth',2);
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_draw)
% end
% 
% 
% [X0,Y0]=interp_line(x0+2.5,y0+0,x0,y0,4);
% 
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
%    
% %     [xn,yn]=interp_circ(X0(i),Y0(i),20,0,360,20)
% %     plot(xn,yn,'g.-')
% %         [xn,yn]=interp_circ(-6,-35,26,0,360,20)
% %     plot(xn,yn,'m.-')
% %     [xn,yn]=interp_circ(6,-35,26,0,360,20)
% %     plot(xn,yn,'m.-')
% %    
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40]);
%    ylim([-60 20]);
%    subplot(1,2,2);
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6]);
%    ylim([-12 12]);
%    drawnow;
%    pause(t_pause_up);
% end
% 
% 
% daspect([1 1 1 ]);
% grid on;
% hold off;
% 
% %%
% %B
% 
% figure;
% scatter(x0,y0,60,'r+');
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-2.5,y0-10,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter B');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40]);
%    ylim([-60 20]);
%    subplot(1,2,2);
%    hold on;
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6]);
%    ylim([-12 12]);
%    drawnow;
%    pause(t_pause_up);
% end
% 
% [X1,Y1]=interp_line(x0-2.5,y0-10,x0-2.5,y0+10,2);
% for k=1:length(X1)
%    subplot(1,2,1);
%    cla;
%    plot_robot2(X1(k),Y1(k),'True');
%    
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40]);
%    ylim([-60 20]);
%    subplot(1,2,2);
%    hold on;
%    scatter(X1(k),Y1(k),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6]);
%    ylim([-12 12]);
%    drawnow;
%    pause(t_pause_draw)
% end
% 
% 
% [X0,Y0]=interp_line(x0-2.5,y0+10,x0-2.5,y0-2,4);
% 
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i), 'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2);
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_circ(x0-1.5,y0+6,4,-100,100,15);
% for k=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(k),Y2(k),'True');
%    
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(k),Y2(k),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_draw)
% end
% 
% [X0,Y0]=interp_line(x0-2.5,y0+10,x0-2.5,y0-9.63,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X3,Y3]=interp_ellipse(x0-0.5,y0-4,5,6,-110,110,15);
% for k=1:length(X3)
%    subplot(1,2,1);
%    cla;
%    plot_robot2(X3(k),Y3(k),'True');
%    
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40]);
%    ylim([-60 20]);
%    subplot(1,2,2);
%    hold on
%    scatter(X3(k),Y3(k),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6]);
%    ylim([-12 12]);
%    drawnow;
%    pause(t_pause_draw);
% end
% 
% [X0,Y0]=interp_line(x0-2.5,y0+2,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1);
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40]);
%    ylim([-60 20]);
%    subplot(1,2,2);
%    hold on;
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2);
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6]);
%    ylim([-12 12]);
%    drawnow;
%    pause(t_pause_up);
% end
% 
% %%
% %C
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0+3.5,y0+7.7,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter C');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X,Y]=interp_ellipse(x0+1,y0+0,5,9,60,310,15);
% for i=1:length(X)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X(i),Y(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X(i),Y(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+3.5,y0-7.8,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %D
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-2.5,y0+9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter D');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_line(x0-2.5,y0+9.5,x0-2.5,y0-9.5,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0-2.5,y0-9.5,x0-3.2,y0-9.4,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_ellipse(x0-2,y0+0,7,9.5,-100,105,10);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0-3.2,y0+9.3,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %E
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-4.5,y0-9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter E');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_line(x0-4.5,y0-9.5,x0-4.5,y0+9.5,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_line(x0-4.5,y0+9.5,x0+4.5,y0+9.5,2);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+4.5,y0+9.5,x0+3,y0-2,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X3,Y3]=interp_line(x0+3,y0-2,x0-4.5,y0-2,2);
% for i=1:length(X3)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X3(i),Y3(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X3(i),Y3(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0-4.5,y0-2,x0-4.5,y0-9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X4,Y4]=interp_line(x0-4.5,y0-9.5,x0+4.5,y0-9.5,2);
% for i=1:length(X4)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X4(i),Y4(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X4(i),Y4(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+4.5,y0-9.5,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %F
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-4.5,y0-9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter F');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_line(x0-4.5,y0-9.5,x0-4.5,y0+9.5,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_line(x0-4.5,y0+9.5,x0+4.5,y0+9.5,2);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+4.5,y0+9.5,x0-4.5,y0+0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X3,Y3]=interp_line(x0-4.5,y0+0,x0+2,y0+0,1);
% for i=1:length(X3)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X3(i),Y3(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X3(i),Y3(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+2,y0+0,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %G
% figure;
% 
% [X0,Y0]=interp_line(x0,y0,x0+2,y0+7.7,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter G');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_ellipse(x0+0,y0+0,4,9,60,350,10);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_line(x0+4,y0-1.5,x0+1,y0-1.5,2);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+1,y0-1.5,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %H
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-4,y0-9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter H');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_line(x0-4,y0-9.5,x0-4,y0+9.5,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0-4,y0+9.5,x0+4,y0+9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_line(x0+4,y0+9.5,x0+4,y0-9.5,2);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+4,y0-9.5,x0+4,y0-2,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X3,Y3]=interp_line(x0+4,y0-2,x0-4,y0-2,2);
% for i=1:length(X3)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X3(i),Y3(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X3(i),Y3(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0-4,y0-2,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% % I
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0+0,y0+9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter I');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_line(x0+0,y0+9.5,x0+0,y0-9.5,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+0,y0-9.5,x0-1,y0-9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_line(x0-1,y0-9.5,x0+1,y0-9.5,1);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+1,y0-9.5,x0+1,y0+9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X3,Y3]=interp_line(x0+1,y0+9.5,x0-1,y0+9.5,1);
% for i=1:length(X3)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X3(i),Y3(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X3(i),Y3(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0-1,y0+9.5,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %J
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0+4,y0+9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter J');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_line(x0+4,y0+9.5,x0+4,y0-4,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+4,y0-4,x0-4,y0-3,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_ellipse(x0+0,y0-4,4,6,170,360,10);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+4,y0-4,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %K
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-4,y0-9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter K');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_line(x0-4,y0-9.5,x0-4,y0+9.5,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0-4,y0+9.5,x0-4,y0-2,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_line(x0-4,y0-2,x0+4.5,y0+9.5,2);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+4.5,y0+9.5,x0-3,y0-1,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X3,Y3]=interp_line(x0-3,y0-1,x0+4.5,y0-9.5,2);
% for i=1:length(X3)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X3(i),Y3(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X3(i),Y3(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+4.5,y0-9.5,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %L
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-4,y0+9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter L');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_line(x0-4,y0+9.5,x0-4,y0-9.5,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_line(x0-4,y0-9.5,x0+4.5,y0-9.5,2);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+4.5,y0-9.5,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %M
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-4,y0-9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter M');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_line(x0-4,y0-9.5,x0-4,y0+9.5,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_line(x0-4,y0+9.5,x0+0,y0-3,2);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X3,Y3]=interp_line(x0+0,y0-3,x0+4,y0+9.5,2);
% for i=1:length(X3)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X3(i),Y3(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X3(i),Y3(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X4,Y4]=interp_line(x0+4,y0+9.5,x0+4,y0-9.5,2);
% for i=1:length(X4)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X4(i),Y4(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X4(i),Y4(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+4,y0-9.5,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %N
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-4,y0-9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter N');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_line(x0-4,y0-9.5,x0-4,y0+9.5,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_line(x0-4,y0+9.5,x0+4,y0-9.5,2);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X3,Y3]=interp_line(x0+4,y0-9.5,x0+4,y0+9.5,2);
% for i=1:length(X3)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X3(i),Y3(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X3(i),Y3(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X0,Y0]=interp_line(x0+4,y0+9.5,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %O
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0+4.5,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter O');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X,Y]=interp_ellipse(x0+0,y0+0,4.5,9,0,360,15);
% for i=1:length(X)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X(i),Y(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X(i),Y(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X0,Y0]=interp_line(x0+4.5,y0,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %P
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-4.5,y0-9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter P');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X1,Y1]=interp_line(x0-4.5,y0-9.5,x0-4.5,y0+9.5,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0-4.5,y0+9.5,x0-5,y0-0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_ellipse(x0-3.5,y0+4.8,8,5,-100,100,10);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0-5,y0+9.7,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %Q
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0+4.5,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter Q');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_ellipse(x0+0,y0+0,4.5,9,0,360,15);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+4.5,y0,x0+4.5,y0-9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_line(x0+4.5,y0-9.5,x0+0,y0-4,2);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+0,y0-4,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %R
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-4.5,y0-9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter R');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X1,Y1]=interp_line(x0-4.5,y0-9.5,x0-4.5,y0+9,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X0,Y0]=interp_line(x0-4.5,y0+9.2,x0-4.5,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X2,Y2]=interp_ellipse(x0-3.5,y0+4.8,8,5,-100,100,10);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X0,Y0]=interp_line(x0-4.5,y0+9.2,x0-1,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2);
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X3,Y3]=interp_line(x0-1,y0+0,x0+4.5,y0-9.5,1);
% for i=1:length(X3)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X3(i),Y3(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X3(i),Y3(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X0,Y0]=interp_line(x0+4.5,y0-9.5,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %S
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0+3.5,y0+7.8,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter S');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_ellipse(x0+0,y0+5,5,4,45,270,10);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0-0.4,y0+1,x0-4.3,y0-7.25,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_ellipse(x0+0,y0-4.5,5,5.5,-150,90,10);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+0,y0+1,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% % 
% %%
% %T
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0+0,y0-9.5,1);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter T');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X1,Y1]=interp_line(x0+0,y0-9.5,x0+0,y0+9.5,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X0,Y0]=interp_line(x0+0,y0+9.5,x0-5,y0+9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X2,Y2]=interp_line(x0-5,y0+9.5,x0+5,y0+9.5,2);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X0,Y0]=interp_line(x0+5,y0+9.5,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %U
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-4.5,y0+9.5,1);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter U');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_line(x0-4.5,y0+9.5,x0-4.5,y0-6,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_circ(x0+0,y0-5.5,4.5,190,350,10);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X3,Y3]=interp_line(x0+4.5,y0-6,x0+4.5,y0+9.5,2);
% for i=1:length(X3)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X3(i),Y3(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X3(i),Y3(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+4.5,y0+9.5,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %V
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-4.5,y0+9.5,1);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter V');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_line(x0-4.5,y0+9.5,x0+0,y0-9.5,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_line(x0+0,y0-9.5,x0+4.5,y0+9.5,2);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+4.5,y0+9.5,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %W
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-4.5,y0+9.5,1);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter W');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_line(x0-4.5,y0+9.5,x0-2.5,y0-9.5,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_line(x0-2.5,y0-9.5,x0+0,y0-2,2);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X3,Y3]=interp_line(x0+0,y0-2,x0+2.5,y0-9.5,2);
% for i=1:length(X3)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X3(i),Y3(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X3(i),Y3(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X4,Y4]=interp_line(x0+2.5,y0-9.5,x0+4.5,y0+9.5,2);
% for i=1:length(X4)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X4(i),Y4(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X4(i),Y4(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+4.5,y0+9.5,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %X
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-4.5,y0+9.5,1);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter X');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X1,Y1]=interp_line(x0-4.5,y0+9.5,x0+4.5,y0-9.5,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+4.5,y0-9.5,x0-4.5,y0-9.5,1);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X2,Y2]=interp_line(x0-4.5,y0-9.5,x0+4.5,y0+9.5,2);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% [X0,Y0]=interp_line(x0+4.5,y0+9.5,x0,y0,1);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %Y
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-4.5,y0+9.5,1);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter Y');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X1,Y1]=interp_line(x0-4.5,y0+9.5,x0+0,y0+0,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X0,Y0]=interp_line(x0,y0,x0+4.5,y0+9.5,1);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X2,Y2]=interp_line(x0+4.5,y0+9.5,x0+0,y0+0,2);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X3,Y3]=interp_line(x0+0,y0+0,x0+0,y0-9.5,2);
% for i=1:length(X3)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X3(i),Y3(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X3(i),Y3(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X0,Y0]=interp_line(x0+0,y0-9.5,x0,y0,1);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% %%
% %Z
% figure;
% hold on;
% 
% [X0,Y0]=interp_line(x0,y0,x0-4.5,y0+9.5,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    title('Letter Z');
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X1,Y1]=interp_line(x0-4.5,y0+9.5,x0+4.5,y0+9.5,2);
% for i=1:length(X1)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X1(i),Y1(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X1(i),Y1(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X2,Y2]=interp_line(x0+4.5,y0+9.5,x0-4.5,y0-9.5,2);
% for i=1:length(X2)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X2(i),Y2(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X2(i),Y2(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X3,Y3]=interp_line(x0-4.5,y0-9.5,x0+4.5,y0-9.5,2);
% for i=1:length(X3)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X3(i),Y3(i),'True');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X3(i),Y3(i),'ko','LineWidth',2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end
% 
% 
% [X0,Y0]=interp_line(x0+4.5,y0-9.5,x0,y0,4);
% for i=1:length(X0)
%    subplot(1,2,1)
%    cla;
%    plot_robot2(X0(i),Y0(i),'False');
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-40 40])
%    ylim([-60 20])
%    subplot(1,2,2)
%    hold on
%    scatter(X0(i),Y0(i),'r*','LineWidth',0.2)
% 
%    daspect([1 1 1 ]);
%    grid on;
%    xlim([-6 6])
%    ylim([-12 12])
%    drawnow;
%    pause(t_pause_up)
% end

%%
%N0
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+4.5,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('number 0');
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X,Y]=interp_ellipse(x0+0,y0+0,4.5,9,0,360,15);
for i=1:length(X)
   subplot(1,2,1)
   cla;
   plot_robot2(X(i),Y(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X(i),Y(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(x0+4.5,y0,x0+4,y0+4.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(x0+4,y0+4.5,x0-4,y0-4.5,4);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(x0-4,y0-4.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

%%
%N1
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-4,y0+2,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 1');
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(x0-4,y0+2,x0+0,y0+9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(x0+0,y0+9.5,x0+0,y0-9.5,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(x0+0,y0-9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end
  
%%
%N2
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+4.5,y0-9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('number 2');
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(x0+4.5,y0-9.5,x0-4.5,y0-9.5,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(x0-4.5,y0-9.5,x0+3,y0+1.5,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_ellipse(x0+0,y0+4.8,4,5,-40,180,10)
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
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
 end

 [X0,Y0]=interp_line(x0-4,y0+4.8,x0,y0,4);
 for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
 end

%%
%N3
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-1,y0+0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('number 3');
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end
 
[X1,Y1]=interp_ellipse(x0-1,y0+5,6,5,-90,120,10)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(x0-4,y0+9.3,x0-5,y0-8.8,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end
 
[X2,Y2]=interp_ellipse(x0-1,y0-5,6,5,-130,90,10);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(x0-1,y0+0,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

%%
%N4
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+2.5,y0+9.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 4');
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(x0+2.5,y0+9.5,x0-4.5,y0-4,2);
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end
 
[X2,Y2]=interp_line(x0-4.5,y0-4,x0+2.5,y0-4,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_line(x0+2.5,y0-4,x0+2.5,y0-9.5,2)
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
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
 end
 
[X0,Y0]=interp_line(x0+2.5,y0-9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

%%
%N5
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-4.2,y0-8.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('number 5');
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_ellipse(x0-1,y0-4,5,6,-130,110,20)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(x0-3,y0+1.6,x0-3,y0+8,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_line(x0-3,y0+8,x0+4,y0+8,2)
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
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
 end

[X0,Y0]=interp_line(x0+4,y0+8,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

%%
%N6
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+2.5,y0+7.4,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 6');
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end


[X1,Y1]=interp_ellipse(x0+0,y0+4,4,4.5,50,180,20)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end


[X2,Y2]=interp_line(x0-4,y0+4,x0-4,y0-4,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_ellipse(x0+0,y0-4,4,5,-180,180,20)
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
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
 end

[X0,Y0]=interp_line(x0-4,y0-4,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 6');
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

%%
%N7
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-4,y0+9.5,1)
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 7');
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_line(x0-4,y0+9.5,x0+4,y0+9.5,2)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(x0+4,y0+9.5,x0-4,y0-9.5,2)
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(x0-4,y0-9.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

%%
%N8
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0-0,y0+1.5,4)
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 8');
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_ellipse(x0+0,y0+5.5,3,4,-90,270,20)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_ellipse(x0+0,y0-4,4,5.5,-90,270,20)
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X0,Y0]=interp_line(x0-0,y0+1.5,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

%%
%N9
figure;
hold on;

[X0,Y0]=interp_line(x0,y0,x0+3.5,y0+5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 9');
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X1,Y1]=interp_ellipse(x0+0,y0+4.5,3.5,4.5,0,360,20)
for i=1:length(X1)
   subplot(1,2,1)
   cla;
   plot_robot2(X1(i),Y1(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X1(i),Y1(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X2,Y2]=interp_line(x0+3.5,y0+4,x0+3.5,y0-4,2);
for i=1:length(X2)
   subplot(1,2,1)
   cla;
   plot_robot2(X2(i),Y2(i),'True');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X2(i),Y2(i),'ko','LineWidth',2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end
[X0,Y0]=interp_line(x0+3.5,y0-4,x0-3,y0-6.5,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 9');
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

[X3,Y3]=interp_ellipse(x0+0,y0-4,3.5,5,-150,0,20)
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
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
 end
 
[X0,Y0]=interp_line(x0+3.5,y0-4,x0,y0,4);
for i=1:length(X0)
   subplot(1,2,1)
   cla;
   title('Number 9');
   plot_robot2(X0(i),Y0(i),'False');

   daspect([1 1 1 ]);
   grid on;
   xlim([-40 40])
   ylim([-60 20])
   subplot(1,2,2)
   hold on
   scatter(X0(i),Y0(i),'r*','LineWidth',0.2)

   daspect([1 1 1 ]);
   grid on;
   xlim([-6 6])
   ylim([-12 12])
   drawnow;
   pause(t_pause_up)
end

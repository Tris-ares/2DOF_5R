function [ angle_left,angle_right,error ] = get_angles_robot2( x_end,y_end)
%return angle left and right in degrees

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
dist_check_1=round(sqrt((x_pivot_left-x_end)*(x_pivot_left-x_end)+(y_pivot_left-y_end)*(y_pivot_left-y_end))*10)/10;
dist_check_2=round(sqrt((x_pivot_right-x_end)*(x_pivot_right-x_end)+(y_pivot_right-y_end)*(y_pivot_right-y_end))*10)/10;

if (imag(y_pivot_left+y_pivot_right)/2)~=0 ||(y_pivot_left+y_pivot_right)/2>=y_end || imag(angle_left) ~= 0 || imag(angle_right) ~= 0 || dist_check_1 ~= l || dist_check_2 ~= l 
error=1;
%disp('error singularity !')
else 
    %disp('ok')
    error=0;  
end

end


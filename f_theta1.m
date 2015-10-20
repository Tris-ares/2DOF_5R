function [ theta1 ] = f_theta1( a,l,L,x,y,xa,ya )
    % works only if (0,0) is between the the motors
    AP=sqrt((x-xa)*(x-xa)+(y-ya)*(y-ya));
    theta1=pi-acos((L*L-l*l+AP*AP)/(2*L*AP))-atan2(y,a/2-x);

end


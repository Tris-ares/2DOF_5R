function [ theta2 ] = f_theta2( a,l,L,x,y,xb,yb )
    % works only if (0,0) is between the the motors
    BP=sqrt((x-xb)*(x-xb)+(y-yb)*(y-yb));
    theta2=acos((L*L-l*l+BP*BP)/(2*L*BP))+atan2(y,x+a/2);

end


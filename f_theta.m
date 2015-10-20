function [ theta1 ] = f_theta1( a,l,L,x,y,xa,ya )

    AP=sqrt((x-xa)*(x-xa)+(y-ya)*(y-ya));
    theta1=pi-acos((l*l-L*L+AP*AP)/(2*l*AP))-atan2(y,-x);
end

function [ theta2 ] = f_theta2( a,l,L,x,y,xb,yb )

    BP=sqrt((x-xb)*(x-xb)+(y-yb)*(y-yb));
    theta2=acos((l*l-L*L+BP*BP)/(2*l*BP))+atan2(y,x+a);
end


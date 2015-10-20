function [ x_1,y_1,x_2,y_2 ] = circles_intersec(x1,y1,R1,x2,y2,R2 )
% computes the coordinates of the intersection of two circles centered on
% (x1,y1) with a radius of R1 and (x2,y2) with a radius of R2.

%distance between the 2 circles centers :
D=sqrt((x2-x1)^2+(y2-y1)^2)

%area of triangle formed by the two centers of the circles and an
%intersection point, given by Heron formula.
A=(1/4)*sqrt((D+R1+R2)*(D+R1-R2)*(D-R1+R2)*(-D+R1+R2))

%solutions for x :
x_1=(x1+x2)/2 + (x2-x1)*(R1^2-R2^2)/(2*D^2) + 2*(y1-y2)*A/D^2

x_2=(x1+x2)/2 + (x2-x1)*(R1^2-R2^2)/(2*D^2) - 2*(y1-y2)*A/D^2

%solutions for y :

y_1=(y1+y2)/2 + (y2-y1)*(R1^2-R2^2)/(2*D^2) - 2*(x1-x2)*A/D^2

y_2=(y1+y2)/2 + (y2-y1)*(R1^2-R2^2)/(2*D^2) + 2*(x1-x2)*A/D^2


end


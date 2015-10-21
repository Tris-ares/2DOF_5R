%intersection of 2 circles : 
% => system : (x-x1)²+(y-y1)²=R1²
%             (x-x2)²+(y-x2)²=R2²

% left side
x1=0;
y1=0;
R1=1;

x2=1;
y2=1;
R2=1;

%distance between the 2 circles centers :
D=sqrt((x2-x1)^2+(y2-y1)^2);

%area of triangle formed by the two centers of the circles and an
%intersection point, given by Heron formula.
A=(1/4)*sqrt((D+R1+R2)*(D+R1-R2)*(D-R1+R2)*(-D+R1+R2));

%solutions for x :
x_1=(x1+x2)/2 + (x2-x1)*(R1^2-R2^2)/(2*D^2) + 2*(y1-y2)*A/D^2

x_2=(x1+x2)/2 + (x2-x1)*(R1^2-R2^2)/(2*D^2) - 2*(y1-y2)*A/D^2

%solutions for y :

y_1=(y1+y2)/2 + (y2-y1)*(R1^2-R2^2)/(2*D^2) - 2*(x1-x2)*A/D^2

y_2=(y1+y2)/2 + (y2-y1)*(R1^2-R2^2)/(2*D^2) + 2*(x1-x2)*A/D^2

if x_1<x2
    x_left=x1;
    y_left=y1;
    
else
    x_left=x2;
    y_left=y2;
end


#!/usr/bin/python           
# -*- coding: utf-8 -*-

from math import *
import numpy as np

def interp_line( x_start,y_start,x_stop,y_stop,step):
	
	X=[] 
	Y=[] 
	d=sqrt((x_start-x_stop)*(x_start-x_stop)+(y_start-y_stop)*(y_start-y_stop))

	div=int(d/step)

	if div>1:
		
		#computation of direction vector
		
		vx=x_stop-x_start 
		vy=y_stop-y_start 
		
		#normalization
		ux=vx/sqrt(vx*vx+vy*vy) 
		uy=vy/sqrt(vx*vx+vy*vy) 
		
		if atan2(uy,ux)>0:
			X.append(x_start)
			Y.append(y_start)

			for p in xrange(1,div):
				X.append(round(x_start+p*step*ux ,2))
				Y.append(round(y_start+p*step*uy ,2))
		  
				
			X.append(round(x_stop ,2))
			Y.append(round(y_stop ,2))
			
		else :
			X.append(round(x_stop ,2))
			Y.append(round(y_stop ,2))

			for i in xrange(1,div):
				X.append(round(x_stop-i*step*ux ,2))
				Y.append(round(y_stop-i*step*uy ,2))
				
			X.append(round(x_start ,2))
			Y.append(round(y_start ,2))
			X.reverse()
			Y.reverse()
	   

	else : # the two given points are too close to each other

		X.append(round(x_stop ,2))
		Y.append(round(y_stop ,2))
		
	return (X,Y)

def interp_circ( x0,y0,R,ang_start,ang_stop, ang_step ):
	X=[] 
	Y=[] 


	x_old=R*cos(ang_start*pi/180)+x0 
	y_old=R*sin(ang_start*pi/180)+y0 
	X.append(round(x_old,2))
	Y.append(round(y_old,2))
	
	for theta in xrange(ang_start+ang_step,ang_stop,ang_step):
		
		x=R*cos(theta*pi/180) 
		y=R*sin(theta*pi/180) 
	   
	  
		x_old=x+x0 
		y_old=y+y0 
	   
		X.append(round(x_old,2))
		Y.append(round(y_old,2))
	   
	if X[-1] != R*cos(ang_stop*pi/180) :
		
		X.append(round(R*cos(ang_stop*pi/180),2))
		Y.append(round(R*sin(ang_stop*pi/180),2))
		
	return(X,Y)
	   
def interp_ellipse( x0,y0,a,b,ang_start,ang_stop,ang_step ):
	
	X=[] 
	Y=[] 

	x_old=a*cos(ang_start*pi/180)+x0 
	y_old=b*sin(ang_start*pi/180)+y0 

	X.append(round(x_old,2)) 
	Y.append(round(y_old,2)) 

	for theta in xrange(ang_start+ang_step,ang_stop,ang_step):

	    x=a*cos(theta*pi/180) 
	    y=b*sin(theta*pi/180) 
	  
	    x_old=x+x0 
	    y_old=y+y0 
	   
	    X.append(round(x_old,2)) 
	    Y.append(round(y_old,2)) 
	    
	if X[-1] != a*cos(ang_stop*pi/180):
		X.append(round(a*cos(ang_stop*pi/180),2))
		Y.append(round(b*cos(ang_stop*pi/180),2))
		
	return(X,Y)
	 
def circles_intersec(x1,y1,R1,x2,y2,R2 ):
	
	D=sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1)) 
	
	#area of triangle formed by the two centers of the circles and an
	#intersection point, given by Heron formula.
	A=sqrt((D+R1+R2)*(D+R1-R2)*(D-R1+R2)*(-D+R1+R2))/4 
	
	#solutions for x :
	x_1=(x1+x2)/2 + (x2-x1)*(R1*R1-R2*R2)/(2*D*D) + 2*(y1-y2)*A/(D*D)

	x_2=(x1+x2)/2 + (x2-x1)*(R1*R1-R2*R2)/(2*D*D) - 2*(y1-y2)*A/(D*D)

	#solutions for y :

	y_1=(y1+y2)/2 + (y2-y1)*(R1*R1-R2*R2)/(2*D*D) - 2*(x1-x2)*A/(D*D)

	y_2=(y1+y2)/2 + (y2-y1)*(R1*R1-R2*R2)/(2*D*D) + 2*(x1-x2)*A/(D*D)

	return (x_1,y_1,x_2,y_2)
	   
	   
def get_angles_robot( x_end,y_end):
	
	a=12 
	L=26 
	l=20 

	ya=-35 
	yb=-35 

	xa=-a/2 
	xb=a/2 

	#get intersection coordinates for the left arm

	[x_1,y_1,x_2,y_2]=circles_intersec(x_end,y_end,l,xa,ya,L) 

	if x_1<x_2 :
		
		x_pivot_left=x_1 
		y_pivot_left=y_1 
		
	else :
		x_pivot_left=x_2 
		y_pivot_left=y_2 
		
		 #get angle between 0° and left arm
			
	#create unit vector for left arm
	v_x=x_pivot_left-xa 
	v_y=y_pivot_left-ya 
	d=sqrt(v_x*v_x+v_y*v_y) 
	v_x=v_x/d 
	v_y=v_y/d 
	
	#unit vector u=(1,0)(parallel to abscisse line, pointing toward %x>0
	u_x=1 
	u_y=0 
	
	# using dot product : vector_u.vector_v=||u||*||v||*cos(angle_between_u_and_v)
	
	angle_left=round(acos(u_x*v_x+u_y*v_y)*180/pi,1) 

		
	#get intersection corrdniates for the right arm

	[x_1,y_1,x_2,y_2]=circles_intersec(x_end,y_end,l,xb,yb,L) 

	if x_1>x_2:
		
		x_pivot_right=x_1 
		y_pivot_right=y_1 
		
	else:
		x_pivot_right=x_2 
		y_pivot_right=y_2 
		
	

	#create unit vector for right arm
	v_x=x_pivot_right-xb 
	v_y=y_pivot_right-yb 
	d=sqrt(v_x*v_x+v_y*v_y) 
	v_x=v_x/d 
	v_y=v_y/d 
	
	# using dot product : vector_u.vector_v=||u||*||v||*cos(angle_between_u_and_v)
	
	angle_right=round(acos(u_x*v_x+u_y*v_y)*180/pi,1)
	
	return(angle_left, angle_right) 

	   
if __name__ == "__main__":
	
	#(X1,Y1)=interp_circ(0,0,10,0,180,10)
	#(X1,Y1)=interp_line(0,0,10,10,1)
	#(X1,Y1)=interp_ellipse(0,0,1,2,0,180,10)
	#(x1,y1,x2,y2)=circles_intersec(0,0,2,2,2,1)
	#print(x1)
	#print(y1)
	#print(x2)
	#print(y2)
	
	#print(X1)
	#print(Y1)
	#print(len(X1))
	
	(a1,a2)=get_angles_robot(0,0,1)
	print(a1)
	print(a2)
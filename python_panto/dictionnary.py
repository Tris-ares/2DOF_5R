#!/usr/bin/python           
# -*- coding: utf-8 -*-

from panto_basics import *

# A
def A(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0-5,y0-10,2);
	for i in range(len(X0)):

	    [angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(0)

	[X1,Y1]=interp_line(x0-5,y0-10,x0+0,y0+10,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)

	[X2,Y2]=interp_line(x0+0,y0+10,x0+5,y0-10,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)


	[X0,Y0]=interp_line(x0+5,y0-10,x0-2.5,y0+0,2);
	for i in range(len(X0)):

	    [angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(0)



	[X3,Y3]=interp_line(x0-2.5,y0+0,x0+2.5,y0+0,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)


	[X0,Y0]=interp_line(x0+2.5,y0+0,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)

	return(angle_left,angle_right,flag)

#B
def B(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-2.5,y0-10,4)
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-2.5,y0-10,x0-2.5,y0+10,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0-2.5,y0+10,x0-2.5,y0-2,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
	
	[X2,Y2]=interp_circ(x0-1.5,y0+6,4,-100,100,15);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)

	[X0,Y0]=interp_line(x0-2.5,y0+10,x0-2.5,y0-9.63,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X3,Y3]=interp_ellipse(x0-0.5,y0-4,5,6,-110,110,15);
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0-2.5,y0+2,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
	return(angle_left,angle_right,flag)
	
#C		
def C(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+3.5,y0+7.7,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X,Y]=interp_ellipse(x0+1,y0+0,5,9,60,310,15);
	for i in range(len(X)):
		
	    [angle_l,angle_r]=get_angles_robot(X[i],Y[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+3.5,y0-7.8,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
	
	return(angle_left,angle_right,flag)

#D		
def D(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-2.5,y0+9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
	
	[X1,Y1]=interp_line(x0-2.5,y0+9.5,x0-2.5,y0-9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0-2.5,y0-9.5,x0-3.2,y0-9.4,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X2,Y2]=interp_ellipse(x0-2,y0+0,7,9.5,-100,105,10);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0-3.2,y0+9.3,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)
	
#E
def E(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-4.5,y0-9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-4.5,y0-9.5,x0-4.5,y0+9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X2,Y2]=interp_line(x0-4.5,y0+9.5,x0+4.5,y0+9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4.5,y0+9.5,x0+3,y0-2,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X3,Y3]=interp_line(x0+3,y0-2,x0-4.5,y0-2,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0-4.5,y0-2,x0-4.5,y0-9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X4,Y4]=interp_line(x0-4.5,y0-9.5,x0+4.5,y0-9.5,2);
	for i in range(len(X4)):
		
	    [angle_l,angle_r]=get_angles_robot(X4[i],Y4[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4.5,y0-9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)

	return(angle_left,angle_right,flag)
	
#F
def F(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-4.5,y0-9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-4.5,y0-9.5,x0-4.5,y0+9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X2,Y2]=interp_line(x0-4.5,y0+9.5,x0+4.5,y0+9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4.5,y0+9.5,x0-4.5,y0+0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X3,Y3]=interp_line(x0-4.5,y0+0,x0+2,y0+0,1);
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+2,y0+0,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)
	
#G
def G(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+2,y0+7.7,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0+0,y0+0,4,9,60,350,10);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X2,Y2]=interp_line(x0+4,y0-1.5,x0+1,y0-1.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+1,y0-1.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)
			
#H
def H(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0-4,y0-9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-4,y0-9.5,x0-4,y0+9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0-4,y0+9.5,x0+4,y0+9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X2,Y2]=interp_line(x0+4,y0+9.5,x0+4,y0-9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4,y0-9.5,x0+4,y0-2,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X3,Y3]=interp_line(x0+4,y0-2,x0-4,y0-2,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0-4,y0-2,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

#I
def I(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+0,y0+9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0+0,y0+9.5,x0+0,y0-9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+0,y0-9.5,x0-1,y0-9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X2,Y2]=interp_line(x0-1,y0-9.5,x0+1,y0-9.5,1);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+1,y0-9.5,x0+1,y0+9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X3,Y3]=interp_line(x0+1,y0+9.5,x0-1,y0+9.5,1);
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0-1,y0+9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

#J
def J(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+4,y0+9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0+4,y0+9.5,x0+4,y0-4,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4,y0-4,x0-4,y0-3,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X2,Y2]=interp_ellipse(x0+0,y0-4,4,6,170,360,10);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4,y0-4,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)


#K
def K(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0-4,y0-9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-4,y0-9.5,x0-4,y0+9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    	
	[X0,Y0]=interp_line(x0-4,y0+9.5,x0-4,y0-2,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X2,Y2]=interp_line(x0-4,y0-2,x0+4.5,y0+9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4.5,y0+9.5,x0-3,y0-1,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X3,Y3]=interp_line(x0-3,y0-1,x0+4.5,y0-9.5,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4.5,y0-9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

#L
def L(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-4,y0+9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-4,y0+9.5,x0-4,y0-9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    	
	[X2,Y2]=interp_line(x0-4,y0-9.5,x0+4.5,y0-9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4.5,y0-9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

#M
def M(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-4,y0-9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-4,y0-9.5,x0-4,y0+9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    	
	[X2,Y2]=interp_line(x0-4,y0+9.5,x0+0,y0-3,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X3,Y3]=interp_line(x0+0,y0-3,x0+4,y0+9.5,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X4,Y4]=interp_line(x0+4,y0+9.5,x0+4,y0-9.5,2);
	for i in range(len(X4)):
		
	    [angle_l,angle_r]=get_angles_robot(X4[i],Y4[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4,y0-9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)


#N
def N(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0-4,y0-9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-4,y0-9.5,x0-4,y0+9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X2,Y2]=interp_line(x0-4,y0+9.5,x0+4,y0-9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X3,Y3]=interp_line(x0+4,y0-9.5,x0+4,y0+9.5,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4,y0+9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

#O
def O(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0+4.5,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
	
	[X,Y]=interp_ellipse(x0+0,y0+0,4.5,9,0,360,15);
	for i in range(len(X)):
		
	    [angle_l,angle_r]=get_angles_robot(X[i],Y[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4.5,y0,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

#P
def P(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0-4.5,y0-9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-4.5,y0-9.5,x0-4.5,y0+9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0-4.5,y0+9.5,x0-5,y0-0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X2,Y2]=interp_ellipse(x0-3.5,y0+4.8,8,5,-100,100,10);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0-5,y0+9.7,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

#Q
def Q(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0+4.5,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0+0,y0+0,4.5,9,0,360,15);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4.5,y0,x0+4.5,y0-9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X2,Y2]=interp_line(x0+4.5,y0-9.5,x0+0,y0-4,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+0,y0-4,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

	
#R
def R(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0-4.5,y0-9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-4.5,y0-9.5,x0-4.5,y0+9,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0-4.5,y0+9.2,x0-4.5,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X2,Y2]=interp_ellipse(x0-3.5,y0+4.8,8,5,-100,100,10);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0-4.5,y0+9.2,x0-1,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X3,Y3]=interp_line(x0-1,y0+0,x0+4.5,y0-9.5,1);
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4.5,y0-9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

#S
def S(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0+3.5,y0+7.8,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0+0,y0+5,5,4,45,270,10);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0-0.4,y0+1,x0-4.3,y0-7.25,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X2,Y2]=interp_ellipse(x0+0,y0-4.5,5,5.5,-150,90,10);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+0,y0+1,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

#T
def T(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+0,y0-9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0+0,y0-9.5,x0+0,y0+9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+0,y0+9.5,x0-5,y0+9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X2,Y2]=interp_line(x0-5,y0+9.5,x0+5,y0+9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X0,Y0]=interp_line(x0+5,y0+9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

#U
def U(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]	
	
	[X0,Y0]=interp_line(x0,y0,x0-4.5,y0+9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-4.5,y0+9.5,x0-4.5,y0-6,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X2,Y2]=interp_circ(x0+0,y0-5.5,4.5,190,350,10);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X3,Y3]=interp_line(x0+4.5,y0-6,x0+4.5,y0+9.5,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4.5,y0+9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

#V
def V(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]	

	[X0,Y0]=interp_line(x0,y0,x0-4.5,y0+9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-4.5,y0+9.5,x0+0,y0-9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X2,Y2]=interp_line(x0+0,y0-9.5,x0+4.5,y0+9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X0,Y0]=interp_line(x0+4.5,y0+9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

#W
def W(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]	

	[X0,Y0]=interp_line(x0,y0,x0-4.5,y0+9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-4.5,y0+9.5,x0-2.5,y0-9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X2,Y2]=interp_line(x0-2.5,y0-9.5,x0+0,y0-2,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X3,Y3]=interp_line(x0+0,y0-2,x0+2.5,y0-9.5,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	   
	[X4,Y4]=interp_line(x0+2.5,y0-9.5,x0+4.5,y0+9.5,2);
	for i in range(len(X4)):
		
	    [angle_l,angle_r]=get_angles_robot(X4[i],Y4[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	   
	[X0,Y0]=interp_line(x0+4.5,y0+9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

#X
def X(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]	
	
	[X0,Y0]=interp_line(x0,y0,x0-4.5,y0+9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-4.5,y0+9.5,x0+4.5,y0-9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4.5,y0-9.5,x0-4.5,y0-9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X2,Y2]=interp_line(x0-4.5,y0-9.5,x0+4.5,y0+9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X0,Y0]=interp_line(x0+4.5,y0+9.5,x0,y0,1);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)


#Y
def Y(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]	
	
	[X0,Y0]=interp_line(x0,y0,x0-4.5,y0+9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
			
	[X1,Y1]=interp_line(x0-4.5,y0+9.5,x0+0,y0+0,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0,y0,x0+4.5,y0+9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X2,Y2]=interp_line(x0+4.5,y0+9.5,x0+0,y0+0,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X3,Y3]=interp_line(x0+0,y0+0,x0+0,y0-9.5,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	   
	[X0,Y0]=interp_line(x0+0,y0-9.5,x0,y0,1);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

#Z
def Z(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]	

	[X0,Y0]=interp_line(x0,y0,x0-4.5,y0+9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-4.5,y0+9.5,x0+4.5,y0+9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X2,Y2]=interp_line(x0+4.5,y0+9.5,x0-4.5,y0-9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X3,Y3]=interp_line(x0-4.5,y0-9.5,x0+4.5,y0-9.5,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	   
	[X0,Y0]=interp_line(x0+4.5,y0-9.5,x0,y0,1);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)


#N0
def N0(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]	

	[X0,Y0]=interp_line(x0,y0,x0+4.5,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0+0,y0+0,4.5,9,0,360,15);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	    
	[X0,Y0]=interp_line(x0+4.5,y0,x0+4,y0+4.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X2,Y2]=interp_line(x0+4,y0+4.5,x0-4,y0-4.5,4);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X0,Y0]=interp_line(x0-4,y0-4.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

#N1
def N1(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]	

	[X0,Y0]=interp_line(x0,y0,x0-4,y0+2,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-4,y0+2,x0+0,y0+9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	   
	[X2,Y2]=interp_line(x0+0,y0+9.5,x0+0,y0-9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X0,Y0]=interp_line(x0+0,y0-9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

	
#N2
def N2(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]		
	
	[X0,Y0]=interp_line(x0,y0,x0+4.5,y0-9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0+4.5,y0-9.5,x0-4.5,y0-9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	   
	[X2,Y2]=interp_line(x0-4.5,y0-9.5,x0+3,y0+1.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X3,Y3]=interp_ellipse(x0+0,y0+4.8,4,5,-40,180,10)
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X0,Y0]=interp_line(x0-4,y0+4.8,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)

#N3
def N3(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]			
	
	[X0,Y0]=interp_line(x0,y0,x0-1,y0+0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0-1,y0+5,6,5,-90,120,10)
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	   
	[X0,Y0]=interp_line(x0-4,y0+9.3,x0-5,y0-8.8,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X2,Y2]=interp_ellipse(x0-1,y0-5,6,5,-130,90,10);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X0,Y0]=interp_line(x0-1,y0+0,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)
	
#N4
def N4(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]		

	[X0,Y0]=interp_line(x0,y0,x0+2.5,y0+9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0+2.5,y0+9.5,x0-4.5,y0-4,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	   
	[X2,Y2]=interp_line(x0-4.5,y0-4,x0+2.5,y0-4,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X3,Y3]=interp_line(x0+2.5,y0-4,x0+2.5,y0-9.5,2)
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X0,Y0]=interp_line(x0+2.5,y0-9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)
	
#N5
def N5(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]		
	
	[X0,Y0]=interp_line(x0,y0,x0-4.2,y0-8.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		fla
	[X1,Y1]=interp_ellipse(x0-1,y0-4,5,6,-130,110,20)
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	   
	[X2,Y2]=interp_line(x0-3,y0+1.6,x0-3,y0+8,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X3,Y3]=interp_line(x0-3,y0+8,x0+4,y0+8,2)
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X0,Y0]=interp_line(x0+4,y0+8,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)
	
#N6
def N6(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]		
	
	[X0,Y0]=interp_line(x0,y0,x0+2.5,y0+7.4,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0+0,y0+4,4,4.5,50,180,20)
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	   
	[X2,Y2]=interp_line(x0-4,y0+4,x0-4,y0-4,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X3,Y3]=interp_ellipse(x0+0,y0-4,4,5,-180,180,20)
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X0,Y0]=interp_line(x0-4,y0-4,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)
	
#N7
def N7(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]	
	
	[X0,Y0]=interp_line(x0,y0,x0-4,y0+9.5,1)
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_line(x0-4,y0+9.5,x0+4,y0+9.5,2)
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	   
	[X2,Y2]=interp_line(x0+4,y0+9.5,x0-4,y0-9.5,2)
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X0,Y0]=interp_line(x0-4,y0-9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)
	
#N8
def N8(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]		
	
	[X0,Y0]=interp_line(x0,y0,x0-0,y0+1.5,4)
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0+0,y0+5.5,3,4,-90,270,20)
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	   
	[X2,Y2]=interp_ellipse(x0+0,y0-4,4,5.5,90,450,20)
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X0,Y0]=interp_line(x0-0,y0+1.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)
	
#N9
def N9(x0,y0):
	angle_left=[]
	angle_right=[]
	flag=[]			
	
	[X0,Y0]=interp_line(x0,y0,x0+3.5,y0+5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0+0,y0+4.5,3.5,4.5,0,360,20)
	for i in range(len(X1)):
		
	    [angle_l,angle_r]=get_angles_robot(X1[i],Y1[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	   
	[X2,Y2]=interp_line(x0+3.5,y0+4,x0+3.5,y0-4,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r]=get_angles_robot(X2[i],Y2[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X0,Y0]=interp_line(x0+3.5,y0-4,x0-3,y0-6.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	[X3,Y3]=interp_ellipse(x0+0,y0-4,3.5,5,-150,0,20)
	for i in range(len(X3)):
		
	    [angle_l,angle_r]=get_angles_robot(X3[i],Y3[i]);
	    angle_left.append(angle_l)
	    angle_right.append(angle_r)
	    flag.append(1)
	
	[X0,Y0]=interp_line(x0+3.5,y0-4,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r]=get_angles_robot(X0[i],Y0[i]);
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
	return(angle_left,angle_right,flag)
	
	

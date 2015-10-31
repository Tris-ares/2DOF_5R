#!/usr/bin/python           
# -*- coding: utf-8 -*-

from panto_basics import *

########################################################################
#
#	Dictionnary of the letters and digits and a few typograpical characters
#	for the custom font made with interpolations of lines, circles
#	 and ellipses for a pantograph, 
#	accounting for the singularities 
#		by Tris-Ares ( 114222688@umail.ucc.ie )
#
#		requires panto_basics.py
#
#		- lettres  ( 26 latin upperscale lettres )
#		- digits
#		- ,.:!?()[]#=@&/\_-
#		- lettres	( 26 latin lowerscale lettres )
#
#		Given the origin coordinates (x0,y0) and the scaling factor s 
#		of the character, those functions
#		output 3 lists :
#				- angle_left : all angles for the left arm to draw
#					 the character
#				-angle_right : all angles for the right arm to draw
#					 the character
#				- flag : if flag is 0 : the tip is up, otherwise the tip
#					is down and writing.
#				
########################################################################

# A
def A(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0-s*5,y0-s*10,2);
	for i in range(len(X0)):

	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
	    if error_out_of_bounds:
			pass
	    else:
			angle_left.append(angle_l)
			angle_right.append(angle_r)
			flag.append(0)

	[X1,Y1]=interp_line(x0-s*5,y0-s*10,x0+s*0,y0+s*10,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)

	[X2,Y2]=interp_line(x0+s*0,y0+s*10,x0+s*5,y0-s*10,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)


	[X0,Y0]=interp_line(x0+s*5,y0-s*10,x0-s*2.5,y0+s*0,2);
	for i in range(len(X0)):

	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(0)



	[X3,Y3]=interp_line(x0-s*2.5,y0+s*0,x0+s*2.5,y0+s*0,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)


	[X0,Y0]=interp_line(x0+s*2.5,y0+s*0,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

#B
def B(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*2.5,y0-s*10,4)
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*2.5,y0-s*10,x0-s*2.5,y0+s*10,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0-s*2.5,y0+s*10,x0-s*2.5,y0+s*2,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
	
	[X2,Y2]=interp_circ(x0-s*1.5,y0+s*6,4,-100,100,15);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)

	[X0,Y0]=interp_line(x0-s*2.5,y0+s*10,x0-s*2.5,y0-s*9.63,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X3,Y3]=interp_ellipse(x0-s*0.5,y0-s*4,s*5,s*6,-110,110,15);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0-s*2.5,y0+s*2,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
	return(angle_left,angle_right,flag)
	
#C		
def C(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*3.5,y0+s*7.7,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X,Y]=interp_ellipse(x0+s*1,y0+s*0,s*5,s*9,60,310,15);
	for i in range(len(X)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X[i],Y[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*3.5,y0-s*7.8,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
	
	return(angle_left,angle_right,flag)

#D		
def D(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*2.5,y0+s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
	
	[X1,Y1]=interp_line(x0-s*2.5,y0+s*9.5,x0-s*2.5,y0-s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0-s*2.5,y0-s*9.5,x0-s*3.2,y0-s*9.4,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X2,Y2]=interp_ellipse(x0-s*2,y0+s*0,s*7,s*9.5,-100,105,10);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0-s*3.2,y0+s*9.3,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)
	
#E
def E(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0-s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4.5,y0-s*9.5,x0-s*4.5,y0+s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X2,Y2]=interp_line(x0-s*4.5,y0+s*9.5,x0+s*4.5,y0+s*9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4.5,y0+s*9.5,x0+s*3,y0-s*2,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X3,Y3]=interp_line(x0+s*3,y0-s*2,x0-s*4.5,y0-s*2,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0-s*4.5,y0-s*2,x0-s*4.5,y0-s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X4,Y4]=interp_line(x0-s*4.5,y0-s*9.5,x0+s*4.5,y0-s*9.5,2);
	for i in range(len(X4)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X4[i],Y4[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4.5,y0-s*9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)
	
#F
def F(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0-s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4.5,y0-s*9.5,x0-s*4.5,y0+s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X2,Y2]=interp_line(x0-s*4.5,y0+s*9.5,x0+s*4.5,y0+s*9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4.5,y0+s*9.5,x0-s*4.5,y0+s*0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X3,Y3]=interp_line(x0-s*4.5,y0+s*0,x0+s*2,y0+s*0,1);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*2,y0+s*0,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)
	
#G
def G(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*2,y0+s*7.7,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0+s*0,y0+s*0,s*4,s*9,60,350,10);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X2,Y2]=interp_line(x0+s*4,y0-s*1.5,x0+s*1,y0-s*1.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*1,y0-s*1.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)
			
#H
def H(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0-s*4,y0-s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4,y0-s*9.5,x0-s*4,y0+s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0-s*4,y0+s*9.5,x0+s*4,y0+s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X2,Y2]=interp_line(x0+s*4,y0+s*9.5,x0+s*4,y0-s*9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4,y0-s*9.5,x0+s*4,y0-s*2,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X3,Y3]=interp_line(x0+s*4,y0-s*2,x0-s*4,y0-s*2,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0-s*4,y0-s*2,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

#I
def I(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*0,y0+s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0+s*0,y0+s*9.5,x0+s*0,y0-s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*0,y0-s*9.5,x0-s*1,y0-s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X2,Y2]=interp_line(x0-s*1,y0-s*9.5,x0+s*1,y0-s*9.5,1);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*1,y0-s*9.5,x0+s*1,y0+s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X3,Y3]=interp_line(x0+s*1,y0+s*9.5,x0-s*1,y0+s*9.5,1);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0-s*1,y0+s*9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

#J
def J(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*4,y0+s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0+s*4,y0+s*9.5,x0+s*4,y0-s*4,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4,y0-s*4,x0-s*4,y0-s*3,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X2,Y2]=interp_ellipse(x0+s*0,y0-s*4,s*4,s*6,170,360,10);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4,y0-s*4,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)


#K
def K(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0-s*4,y0-s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4,y0-s*9.5,x0-s*4,y0+s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    	
	[X0,Y0]=interp_line(x0-s*4,y0+s*9.5,x0-s*4,y0-s*2,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X2,Y2]=interp_line(x0-s*4,y0-s*2,x0+s*4.5,y0+s*9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4.5,y0+s*9.5,x0-s*3,y0-s*1,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X3,Y3]=interp_line(x0-s*3,y0-s*1,x0+s*4.5,y0-s*9.5,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4.5,y0-s*9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

#L
def L(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*4,y0+s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4,y0+s*9.5,x0-s*4,y0-s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    	
	[X2,Y2]=interp_line(x0-s*4,y0-s*9.5,x0+s*4.5,y0-s*9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4.5,y0-s*9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

#M
def M(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*4,y0-s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4,y0-s*9.5,x0-s*4,y0+s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    	
	[X2,Y2]=interp_line(x0-s*4,y0+s*9.5,x0+s*0,y0-s*3,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X3,Y3]=interp_line(x0+s*0,y0-s*3,x0+s*4,y0+s*9.5,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X4,Y4]=interp_line(x0+s*4,y0+s*9.5,x0+s*4,y0-s*9.5,2);
	for i in range(len(X4)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X4[i],Y4[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4,y0-s*9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)


#N
def N(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0-s*4,y0-s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4,y0-s*9.5,x0-s*4,y0+s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X2,Y2]=interp_line(x0-s*4,y0+s*9.5,x0+s*4,y0-s*9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X3,Y3]=interp_line(x0+s*4,y0-s*9.5,x0+s*4,y0+s*9.5,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4,y0+s*9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

#O
def O(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
	
	[X,Y]=interp_ellipse(x0+s*0,y0+s*0,s*4.5,s*9,0,360,15);
	for i in range(len(X)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X[i],Y[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4.5,y0,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

#P
def P(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0-s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4.5,y0-s*9.5,x0-s*4.5,y0+s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0-s*4.5,y0+s*9.5,x0-s*5,y0-s*0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X2,Y2]=interp_ellipse(x0-s*3.5,y0+s*4.8,s*8,s*5,-100,100,10);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0-s*5,y0+s*9.7,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

#Q
def Q(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0+s*0,y0+s*0,s*4.5,s*9,0,360,15);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4.5,y0,x0+s*4.5,y0-s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X2,Y2]=interp_line(x0+s*4.5,y0-s*9.5,x0+s*0,y0-s*4,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*0,y0-s*4,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

	
#R
def R(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0-s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4.5,y0-s*9.5,x0-s*4.5,y0+s*9,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0-s*4.5,y0+s*9.2,x0-s*4.5,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X2,Y2]=interp_ellipse(x0-s*3.5,y0+s*4.8,s*8,s*5,-100,100,10);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0-s*4.5,y0+s*9.2,x0-s*1,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X3,Y3]=interp_line(x0-s*1,y0+s*0,x0+s*4.5,y0-s*9.5,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4.5,y0-s*9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

#S
def S(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0+s*3.5,y0+s*7.8,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0+s*0,y0+s*5,s*5,s*4,45,270,10);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
        else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0-s*0.4,y0+s*1,x0-s*4.3,y0-s*7.25,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X2,Y2]=interp_ellipse(x0+s*0,y0-s*4.5,s*5,s*5.5,-150,90,10);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
        else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*0,y0+s*1,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

#T
def T(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*0,y0-s*9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0+s*0,y0-s*9.5,x0+s*0,y0+s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*0,y0+s*9.5,x0-s*5,y0+s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X2,Y2]=interp_line(x0-s*5,y0+s*9.5,x0+s*5,y0+s*9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0+s*5,y0+s*9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

#U
def U(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]	
	
	[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4.5,y0+s*9.5,x0-s*4.5,y0-s*6,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X2,Y2]=interp_circ(x0+s*0,y0-s*5.5,4.5,190,350,10);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X3,Y3]=interp_line(x0+s*4.5,y0-s*6,x0+s*4.5,y0+s*9.5,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4.5,y0+s*9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

#V
def V(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]	

	[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4.5,y0+s*9.5,x0+s*0,y0-s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X2,Y2]=interp_line(x0+s*0,y0-s*9.5,x0+s*4.5,y0+s*9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0+s*4.5,y0+s*9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

#W
def W(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]	

	[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4.5,y0+s*9.5,x0-s*2.5,y0-s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X2,Y2]=interp_line(x0-s*2.5,y0-s*9.5,x0+s*0,y0-s*2,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X3,Y3]=interp_line(x0+s*0,y0-s*2,x0+s*2.5,y0-s*9.5,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X4,Y4]=interp_line(x0+s*2.5,y0-s*9.5,x0+s*4.5,y0+s*9.5,2);
	for i in range(len(X4)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X4[i],Y4[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X0,Y0]=interp_line(x0+s*4.5,y0+s*9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

#X
def X(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]	
	
	[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4.5,y0+s*9.5,x0+s*4.5,y0-s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4.5,y0-s*9.5,x0-s*4.5,y0-s*9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X2,Y2]=interp_line(x0-s*4.5,y0-s*9.5,x0+s*4.5,y0+s*9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0+s*4.5,y0+s*9.5,x0,y0,1);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)


#Y
def Y(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]	
	
	[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
			
	[X1,Y1]=interp_line(x0-s*4.5,y0+s*9.5,x0+s*0,y0+s*0,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0+s*9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X2,Y2]=interp_line(x0+s*4.5,y0+s*9.5,x0+s*0,y0+s*0,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X3,Y3]=interp_line(x0+s*0,y0+s*0,x0+s*0,y0-s*9.5,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X0,Y0]=interp_line(x0+s*0,y0-s*9.5,x0,y0,1);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

#Z
def Z(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]	

	[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*9.5,1);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4.5,y0+s*9.5,x0+s*4.5,y0+s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X2,Y2]=interp_line(x0+s*4.5,y0+s*9.5,x0-s*4.5,y0-s*9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X3,Y3]=interp_line(x0-s*4.5,y0-s*9.5,x0+s*4.5,y0-s*9.5,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X0,Y0]=interp_line(x0+s*4.5,y0-s*9.5,x0,y0,1);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)


#N0
def N0(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]	

	[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0+s*0,y0+s*0,s*4.5,s*9,0,360,15);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	    
	[X0,Y0]=interp_line(x0+s*4.5,y0,x0+s*4,y0+s*4.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X2,Y2]=interp_line(x0+s*4,y0+s*4.5,x0-s*4,y0-s*4.5,4);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0-s*4,y0-s*4.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

#N1
def N1(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]	

	[X0,Y0]=interp_line(x0,y0,x0-s*4,y0+s*2,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4,y0+s*2,x0+s*0,y0+s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X2,Y2]=interp_line(x0+s*0,y0+s*9.5,x0+s*0,y0-s*9.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0+s*0,y0-s*9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

	
#N2
def N2(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]		
	
	[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0-s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0+s*4.5,y0-s*9.5,x0-s*4.5,y0-s*9.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X2,Y2]=interp_line(x0-s*4.5,y0-s*9.5,x0+s*3,y0+s*1.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X3,Y3]=interp_ellipse(x0+s*0,y0+s*4.8,s*4,s*5,-40,180,10)
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0-s*4,y0+s*4.8,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)

#N3
def N3(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]			
	
	[X0,Y0]=interp_line(x0,y0,x0-s*1,y0+s*0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0-s*1,y0+s*5,s*6,s*5,-90,120,10)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X0,Y0]=interp_line(x0-s*4,y0+s*9.3,x0-s*5,y0-s*8.8,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X2,Y2]=interp_ellipse(x0-s*1,y0-s*5,s*6,s*5,-130,90,10);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0-s*1,y0+s*0,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)
	
#N4
def N4(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]		

	[X0,Y0]=interp_line(x0,y0,x0+s*2.5,y0+s*9.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0+s*2.5,y0+s*9.5,x0-s*4.5,y0-s*4,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X2,Y2]=interp_line(x0-s*4.5,y0-s*4,x0+s*2.5,y0-s*4,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X3,Y3]=interp_line(x0+s*2.5,y0-s*4,x0+s*2.5,y0-s*9.5,2)
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0+s*2.5,y0-s*9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)
	
#N5
def N5(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]		
	
	[X0,Y0]=interp_line(x0,y0,x0-s*4.2,y0-s*8.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		fla
	[X1,Y1]=interp_ellipse(x0-s*1,y0-s*4,s*5,s*6,-130,110,20)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X2,Y2]=interp_line(x0-s*3,y0+s*1.6,x0-s*3,y0+s*8,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X3,Y3]=interp_line(x0-s*3,y0+s*8,x0+s*4,y0+s*8,2)
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0+s*4,y0+s*8,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)
	
#N6
def N6(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]		
	
	[X0,Y0]=interp_line(x0,y0,x0+s*2.5,y0+s*7.4,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0+s*0,y0+s*4,s*4,s*4.5,50,180,20)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X2,Y2]=interp_line(x0-s*4,y0+s*4,x0-s*4,y0-s*4,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X3,Y3]=interp_ellipse(x0+s*0,y0-s*4,s*4,s*5,-180,180,20)
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0-s*4,y0-s*4,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)
	
#N7
def N7(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]	
	
	[X0,Y0]=interp_line(x0,y0,x0-s*4,y0+s*9.5,1)
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4,y0+s*9.5,x0+s*4,y0+s*9.5,2)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X2,Y2]=interp_line(x0+s*4,y0+s*9.5,x0-s*4,y0-s*9.5,2)
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0-s*4,y0-s*9.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)
	
#N8
def N8(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]		
	
	[X0,Y0]=interp_line(x0,y0,x0-s*0,y0+s*1.5,4)
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0+s*0,y0+s*5.5,s*3,s*4,-90,270,20)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X2,Y2]=interp_ellipse(x0+s*0,y0-s*4,s*4,s*5.5,90,450,20)
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0-s*0,y0+s*1.5,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)
	
#N9
def N9(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]			
	
	[X0,Y0]=interp_line(x0,y0,x0+s*3.5,y0+s*5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0+s*0,y0+s*4.5,s*3.5,s*4.5,0,360,20)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X2,Y2]=interp_line(x0+s*3.5,y0+s*4,x0+s*3.5,y0-s*4,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0+s*3.5,y0-s*4,x0-s*3,y0-s*6.5,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X3,Y3]=interp_ellipse(x0+s*0,y0-s*4,s*3.5,s*5,-150,0,20)
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0+s*3.5,y0-s*4,x0,y0,4);
	for i in range(len(X0)):

		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	return(angle_left,angle_right,flag)
	
def p_point(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]	
	
	[X0,Y0]=interp_line(x0,y0,x0-s*4.8,y0-s*9.5,4);
	for i in range(len(X0)):

	[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
	if error_out_of_bounds:
		pass
	else:
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(0)
		
		
	[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(x0-s*4.8,y0-s*9.5);
	if error_out_of_bounds:
		pass
	else:
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(1)
	
	
	[X0,Y0]=interp_line(x0-s*4.8,y0-s*9.5,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

def p_2_point(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]	
	
	[X0,Y0]=interp_line(x0,y0,x0,y0-s*5.5,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(x0,y0-s*5.5);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(1)
	
	[X0,Y0]=interp_line(x0,y0-s*5.5,x0,y0-s*9.5,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
	
	[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(x0,y0-s*9.5);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(1)	
		    
	[X0,Y0]=interp_line(x0,y0-s*9.5,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)		    

def p_interro(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]	
	
	[X0,Y0]=interp_line(x0,y0,x0+4.33,y0+s*6,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_ellipse(x0,y0+s*4,s*5,s*4,30,200,20)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0-s*5,y0+s*3.3,x0+s*3.3,y0+s*1.6,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X2,Y2]=interp_ellipse(x0-s*0.5,y0+s*4,s*6,s*3,-50,30,20)
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0+4.33,y0+s*6,x0+4.33,y0+s*6,2);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X3,Y3]=interp_circ(x0+s*3.3,y0-s*1.7,s*3.3,90,180,20)
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X4,Y4]=interp_line(x0,y0-s*1.7,x0,y0-s*4,2);
	for i in range(len(X4)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X4[i],Y4[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0,y0-s*4,x0,y0-s*7,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
			angle_left.append(angle_l)
			angle_right.append(angle_r)
			flag.append(0)
				
	[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(x0,y0-s*7);
	if error_out_of_bounds:
		pass
	else:
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(1)
		    
	[X0,Y0]=interp_line(x0,y0-s*7,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
			angle_left.append(angle_l)
			angle_right.append(angle_r)
			flag.append(0)
		    
	return(angle_left,angle_right,flag)		
	
	    
def p_excla(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]	

	[X0,Y0]=interp_line(x0,y0,x0,y0+s*9,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_line(x0,y0+s*9,x0,y0-s*6,2)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0,y0-s*6,x0,y0-s*9.5,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(x0,y0-s*9.5);
	if error_out_of_bounds:
		pass
	else:
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(1)
		    
	[X0,Y0]=interp_line(x0,y0-s*9.5,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)


def p_slash(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0+s*9.5,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_line(x0+s*4.5,y0+s*9.5,x0-s*4.5,y0-s*9.5,2)
	for i in range(len(X1)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0-s*4.5,y0-s*9.5,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)

def p_a_slash(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*9.5,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_line(x0-s*4.5,y0+s*9.5,x0+s*4.5,y0-s*9.5,2)
	for i in range(len(X1)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0+s*4.5,y0-s*9.5,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)


def p_underscore(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*4,y0-s*9.5,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_line(x0-s*4,y0-s*9.5,x0+s*4,y0-s*9.5,2)
	for i in range(len(X1)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0+s*4,y0-s*9.5,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)

def p_dash(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*2.5,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_line(x0-s*2.5,y0,x0+s*2.5,y0,2)
	for i in range(len(X1)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0+s*2.5,y0,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)


def p_quote(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*0.25,y0+s*9.5,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_line(x0+s*0.25,y0+s*9.5,x0-s*0.25,y0+s*7.5,0.5)
	for i in range(len(X1)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0-s*0.25,y0+s*7.5,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)

def p_diese(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
		
	[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0+s*3,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_line(x0+s*4.5,y0+s*3,x0-s*4.5,y0+s*3,2)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0-s*4.5,y0+s*3,x0-s*4.5,y0-s*3,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X2,Y2]=interp_line(x0-s*4.5,y0-s*3,x0+s*4.5,y0-s*3,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0+s*4.5,y0-s*3,x0+s*1,y0-s*7,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X3,Y3]=interp_line(x0+s*1,y0-s*7,x0+s*4.5,y0+s*7,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0+s*4.5,y0+s*7,x0-s*1,y0+s*7,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X4,Y4]=interp_line(x0-s*1,y0+s*7,x0-s*4.5,y0-s*7,2);
	for i in range(len(X4)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X4[i],Y4[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0-s*4.5,y0-s*7,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)


def p_o_parenth(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*1.5,y0+s*9,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_ellipse(x0+s*1.5,y0,s*3,s*9,90,270,20)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0+s*1.5,y0-s*9,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)


def p_c_parenth(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*1.5,y0-s*9,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_ellipse(x0-s*1.5,y0,s*3,s*9,-90,90,20)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0-s*1.5,y0+s*9,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)


def p_o_bracket(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*2,y0+s*9,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X1,Y1]=interp_line(x0+s*2,y0+s*9,x0-s*2,y0+s*9,2)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X2,Y2]=interp_line(x0-s*2,y0+s*9,x0-s*2,y0-s*9,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X3,Y3]=interp_line(x0-s*2,y0-s*9,x0+s*2,y0-s*9,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0+s*2,y0-s*9,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)


def p_c_bracket(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0-s*2,y0+s*9,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_line(x0-s*2,y0+s*9,x0+s*2,y0+s*9,2)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X2,Y2]=interp_line(x0+s*2,y0+s*9,x0+s*2,y0-s*9,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X3,Y3]=interp_line(x0+s*2,y0-s*9,x0-s*2,y0-s*9,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0-s*2,y0-s*9,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)


def p_equal(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0+s*2,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_line(x0+s*4.5,y0+s*2,x0-s*4.5,y0+s*2,2)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0-s*4.5,y0+s*2,x0-s*4.5,y0-s*2,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X2,Y2]=interp_line(x0-s*4.5,y0-s*2,x0+s*4.5,y0-s*2,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0+s*4.5,y0-s*2,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)

	
def p_smaller(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*3,y0+s*5,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0+s*3,y0+s*5,x0-s*3,y0,2)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X2,Y2]=interp_line(x0-s*3,y0,x0+s*3,y0-s*5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0+s*3,y0-s*5,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)

def p_greater(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]	
	
	[X0,Y0]=interp_line(x0,y0,x0-s*3,y0+s*5,4)
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		  	
	[X1,Y1]=interp_line(x0-s*3,y0+s*5,x0+s*3,y0,2)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X2,Y2]=interp_line(x0+s*3,y0,x0-s*3,y0-s*5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0-s*3,y0-s*5,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)


def p_at(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X0,Y0]=interp_line(x0,y0,x0+s*2,y0+s*2.3,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_ellipse(x0+s*0.5,y0,s*3,s*2.5,60,310,20)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0+s*2,y0-s*2.3,x0+s*2,y0+s*2.5,3);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X2,Y2]=interp_line(x0+s*2,y0+s*2.5,x0+s*2,y0-s*2.3,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X3,Y3]=interp_ellipse(x0+s*3,y0-s*2,s*1,s*1,180,330,40)
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X4,Y4]=interp_ellipse(x0+s*0,y0-s*0,s*5,s*6,-20,300,20);
	for i in range(len(X4)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X4[i],Y4[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0+s*2.5,y0-s*5,x0,y0,3);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)

def p_deg(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0,y0+s*7,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X1,Y1]=interp_circ(x0,y0+s*8,s*1,-90,270,40);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0,y0+s*7,x0,y0,3);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)


def p_and(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0-s*9,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_line(x0+s*4.5,y0-s*9,x0-s*0,y0+s*4,2)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X2,Y2]=interp_circ(x0,y0+s*5,s*1,-90,270,40);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X3,Y3]=interp_line(x0,y0+s*4,x0-s*4,y0-s*3,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X4,Y4]=interp_ellipse(x0,y0-s*5,s*4.5,s*4,-200,20,15);
	for i in range(len(X4)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X4[i],Y4[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0+s*4.4,y0-s*4.4,x0,y0,3);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)

# lower case lettres

#a
def a(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*4.3,y0-s*2,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_ellipse(x0+s*0.5,y0-s*5,s*5,s*4.5,40,320,20)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X2,Y2]=interp_line(x0+s*4.3,y0-s*9,x0+s*4.3,y0+s*2.4,3);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X3,Y3]=interp_ellipse(x0+s*0.5,y0+s*1.5,s*4,s*3.5,15,155,20)
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0-s*3,y0+s*3,x0,y0,3);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)

#b
def b(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*8,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0-s*4.5,y0+s*8,x0-s*4.5,y0-s*9,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X2,Y2]=interp_ellipse(x0-s*0.5,y0-s*4,s*4.5,s*5.5,-150,150,15);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X0,Y0]=interp_line(x0-s*4.5,y0-s*1,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)

#c
def c(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*3,y0-s*1.8,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
	
	[X,Y]=interp_ellipse(x0+s*0,y0-s*5,s*4,s*5,40,330,15);
	for i in range(len(X)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X[i],Y[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X0,Y0]=interp_line(x0+s*3.3,y0-s*8,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)

#d
def d(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*4.3,y0-s*2,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_ellipse(x0+s*0.5,y0-s*5,s*5,s*4.5,40,320,20)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X2,Y2]=interp_line(x0+s*4.3,y0-s*9,x0+s*4.3,y0+s*8,3);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X0,Y0]=interp_line(x0+s*3.3,y0-s*8,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)

#e
def e(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0-s*5,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		  
	[X1,Y1]=interp_line(x0-s*4.5,y0-s*5,x0+s*4.5,y0-s*5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X2,Y2]=interp_ellipse(x0,y0-s*5,s*4.5,s*5.5,0,320,15);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0+s*3,y0-s*9,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)

#f
def f(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*2,y0+s*6.7,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		  
	[X1,Y1]=interp_circ(x0+s*0,y0+s*6,s*2,20,180,40);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X2,Y2]=interp_line(x0-s*2,y0+s*6,x0-s*2,y0-s*9,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X0,Y0]=interp_line(x0-s*2,y0-s*9,x0-s*2,y0+s*1,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		  
	[X3,Y3]=interp_line(x0-s*2,y0+s*1,x0+s*0.5,y0+s*1,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0+s*0.5,y0+s*1,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)

#g
def g(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*3,y0-s*8.4,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		 	
	[X1,Y1]=interp_ellipse(x0+s*0.5,y0-s*5,s*5,s*4.5,-130,-40,20)
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X2,Y2]=interp_line(x0+s*4.5,y0-s*6,x0+s*4.5,y0+s*3.5,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X3,Y3]=interp_ellipse(x0+s*0.5,y0+s*1,s*4.5,s*4,30,330,20)
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0+s*4.4,y0-s*1,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)

#h
def h(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*3,y0+s*8,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		 
	[X1,Y1]=interp_line(x0-s*3,y0+s*8,x0-s*3,y0-s*9,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	   
	[X0,Y0]=interp_line(x0-s*3,y0-s*9,x0+s*3,y0-s*9,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		 
	[X2,Y2]=interp_line(x0+s*3,y0-s*9,x0+s*3,y0-s*3,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X3,Y3]=interp_ellipse(x0,y0-s*6,s*3.5,s*6,30,150,15);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
		
	[X0,Y0]=interp_line(x0-s*3,y0-s*3,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	return(angle_left,angle_right,flag)

#i
def i(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0,y0-s*9,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[X1,Y1]=interp_line(x0,y0-s*9,x0,y0+s*1,1);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
		 
	[X0,Y0]=interp_line(x0,y0+s*1,x0,y0+s*4,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		
	[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(x0,y0+s*4);
	if error_out_of_bounds:
		pass
	else:
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(1)
	
	
	[X0,Y0]=interp_line(x0,y0-s*4,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

#j
def j(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
		
	[X0,Y0]=interp_line(x0,y0,x0-s*2.5,y0-s*8,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X1,Y1]=interp_circ(x0-s*1,y0-s*7,s*2,-150,10,40);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
		 
	[X2,Y2]=interp_line(x0+s*1,y0-s*7,x0+s*1,y0+s*1,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X0,Y0]=interp_line(x0+s*1,y0+s*1,x0+s*1,y0+s*4,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(x0+s*1,y0+s*4);
	if error_out_of_bounds:
		pass
	else:
		angle_left.append(angle_l)
		angle_right.append(angle_r)
		flag.append(1)

		
	[X0,Y0]=interp_line(x0+s*1,y0+s*4,x0,y0,1);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

#k
def k(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*2.5,y0-s*8,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X1,Y1]=interp_line(x0-s*3,y0-s*9,x0-s*3,y0+s*8,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
		 
	[X0,Y0]=interp_line(x0-s*3,y0+s*8,x0-s*3,y0-s*3,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X2,Y2]=interp_line(x0-s*3,y0-s*3,x0+s*3,y0+s*8,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X0,Y0]=interp_line(x0+s*3,y0+s*8,x0-s*2,y0-s*1,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X3,Y3]=interp_line(x0-s*2,y0-s*1,x0+s*3,y0-s*9,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0+s*3,y0-s*9,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

#l
def l(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0,y0+s*8,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X1,Y1]=interp_line(x0,y0+s*8,x0,y0-s*9,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
		 
	[X0,Y0]=interp_line(x0,y0-s*9,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

#m
def m(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*4.5,y0-s*9,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X1,Y1]=interp_line(x0+s*4.5,y0-s*9,x0+s*4.5,y0-s*0,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
		 
	[X2,Y2]=interp_ellipse(x0+s*2.25,y0-s*0,s*2.25,s*2,0,180,30);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X3,Y3]=interp_ellipse(x0-s*2.25,y0-s*0,s*2.25,s*2,0,180,30);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X4,Y4]=interp_line(x0-s*4.5,y0+s*1.5,x0-s*4.5,y0-s*9,2);
	for i in range(len(X4)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X4[i],Y4[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0-s*4.5,y0-s*9,x0,y0-s*9,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X5,Y5]=interp_line(x0,y0-s*9,x0,y0,2);
	for i in range(len(X5)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X5[i],Y5[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
#n
def n(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*3,y0-s*9,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X1,Y1]=interp_line(x0+s*3,y0-s*9,x0+s*3,y0-s*0,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
		 	
	[X2,Y2]=interp_ellipse(x0+s*0,y0-s*0,s*3,s*2,0,180,30);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X3,Y3]=interp_line(x0-s*3,y0+s*1.5,x0-s*3,y0-s*9,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0-s*3,y0-s*9,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

#o	
def o(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]

	[X1,Y1]=interp_circ(x0,y0-s*4,s*4,90,450,20);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	return(angle_left,angle_right,flag)

#p
def p(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*3,y0-s*9,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X1,Y1]=interp_line(x0-s*3,y0-s*9,x0-s*3,y0+s*5.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
		
	[X0,Y0]=interp_line(x0-s*3,y0+s*5.5,x0-s*3,y0-s*1,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X2,Y2]=interp_ellipse(x0+s*0,y0+s*1.5,s*3,s*4,-150,150,30);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X0,Y0]=interp_line(x0-s*3,y0+s*3.5,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

#q	
def q(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*3,y0-s*9,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X1,Y1]=interp_line(x0+s*3,y0-s*9,x0+s*3,y0+s*5.5,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
		
	[X2,Y2]=interp_ellipse(x0+s*0,y0+s*1.5,s*3,s*4,30,330,30);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X0,Y0]=interp_line(x0+s*3,y0-s*0.5,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

#r
def r(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*1.7,y0+s*1,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_ellipse(x0+s*0,y0+s*0,s*2,s*2,30,180,30);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
		
	[X2,Y2]=interp_line(x0-s*2,y0+s*1.5,x0-s*2,y0-s*7,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X0,Y0]=interp_line(x0-s*2,y0-s*7,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

#s
def s(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0+s*2,y0+s*2.5,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X1,Y1]=interp_ellipse(x0+s*0,y0+s*1,s*3,s*2,45,270,30);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
		
	[X0,Y0]=interp_line(x0-s*0,y0-s*1,x0-s*2.5,y0-s*6.25,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X2,Y2]=interp_ellipse(x0+s*0,y0-s*4.5,s*3,s*3.5,-150,90,30);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X0,Y0]=interp_line(x0+s*0,y0-s*1,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

#t
def t(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*2,y0+s*8,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X1,Y1]=interp_line(x0-s*2,y0+s*8,x0-s*2,y0-s*8,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
		
	[X2,Y2]=interp_ellipse(x0+s*0,y0-s*8,s*2,s*1,180,300,30);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X0,Y0]=interp_line(x0+s*1,y0-s*8.8,x0+s*1,y0+s*2,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X3,Y3]=interp_line(x0+s*1,y0+s*2,x0-s*2,y0+s*2,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0-s*2,y0+s*2,x0,y0,2);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

#u
def u(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*3,y0+s*2,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)
		    
	[X1,Y1]=interp_line(x0-s*3,y0+s*2,x0-s*3,y0-s*7,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
		
	[X2,Y2]=interp_ellipse(x0+s*0,y0-s*7,s*3,s*2,-180,0,30);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X3,Y3]=interp_line(x0+s*3,y0-s*7,x0+s*3,y0+s*2,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0+s*3,y0+s*2,x0,y0,2);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

#v
def v(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*3,y0+s*2,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X1,Y1]=interp_line(x0-s*3,y0+s*2,x0,y0-s*9,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	     
	[X2,Y2]=interp_line(x0,y0-s*9,x0+s*3,y0+s*2,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	 
	[X0,Y0]=interp_line(x0+s*3,y0+s*2,x0,y0,2);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

#w
def w(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*4.5,y0+s*2,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X1,Y1]=interp_line(x0-s*4.5,y0+s*2,x0-s*2.25,y0-s*9,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	     
	[X2,Y2]=interp_line(x0-s*2.25,y0-s*9,x0,y0+s*1,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X3,Y3]=interp_line(x0,y0+s*1,x0+s*2.25,y0-s*9,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X4,Y4]=interp_line(x0+s*2.25,y0-s*9,x0+s*4.5,y0+s*2,2);
	for i in range(len(X4)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X4[i],Y4[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0+s*4.5,y0+s*2,x0,y0,2);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

#x
def x(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*3,y0+s*2,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    	
	[X1,Y1]=interp_line(x0-s*3,y0+s*2,x0+s*3,y0-s*9,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	     
	[X0,Y0]=interp_line(x0+s*3,y0-s*9,x0+s*3,y0+s*2,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    
	[X2,Y2]=interp_line(x0+s*3,y0+s*2,x0-s*3,y0-s*9,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0-s*3,y0-s*9,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

#y
def y(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*3,y0-s*9,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X1,Y1]=interp_ellipse(x0-s*2,y0-s*8,s*2,s*1,-130,-30,30);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	     
	[X2,Y2]=interp_line(x0+s*0,y0-s*8.5,x0+s*3,y0+s*2,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X0,Y0]=interp_line(x0+s*3,y0+s*2,x0-s*3,y0+s*2,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X3,Y3]=interp_line(x0-s*3,y0+s*2,x0+s*1,y0-s*4.5,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0+s*1,y0-s*4.5,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)

#z
def z(x0,y0,s):
	angle_left=[]
	angle_right=[]
	flag=[]
	
	[X0,Y0]=interp_line(x0,y0,x0-s*3,y0+s*2,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	[X1,Y1]=interp_line(x0-s*3,y0+s*2,x0+s*3,y0+s*2,2);
	for i in range(len(X1)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X1[i],Y1[i]);
	    if error_out_of_bounds:
			pass
	    else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	     
	[X2,Y2]=interp_line(x0+s*3,y0+s*2,x0-s*3,y0-s*9,2);
	for i in range(len(X2)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X2[i],Y2[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	        
	[X3,Y3]=interp_line(x0-s*3,y0-s*9,x0+s*3,y0-s*9,2);
	for i in range(len(X3)):
		
	    [angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X3[i],Y3[i]);
	    if error_out_of_bounds:
			pass
    	else:
	        angle_left.append(angle_l)
	        angle_right.append(angle_r)
	        flag.append(1)
	
	[X0,Y0]=interp_line(x0+s*3,y0-s*9,x0,y0,4);
	for i in range(len(X0)):
		
		[angle_l,angle_r,error_out_of_bounds]=get_angles_robot(X0[i],Y0[i]);
		if error_out_of_bounds:
			pass
		else:
		    angle_left.append(angle_l)
		    angle_right.append(angle_r)
		    flag.append(0)

	return(angle_left,angle_right,flag)


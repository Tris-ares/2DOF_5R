#!/usr/bin/python           
# -*- coding: utf-8 -*-

from panto_basics import *
from dictionnary import *
from matplotlib.pylab import *

import matplotlib.animation as animation


if __name__ == "__main__":
	
	fig, ax = subplots()
	
	a=12 
	L=26 
	l=20 

	ya=-35 
	yb=-35 

	xa=-a/2 
	xb=a/2
	
	[al,ar,f]=A(0,0)
	
	for i in range(len(al)):
		
		ax1=gca()
		
		xaa=L*cos(al[i]*pi/180)+xa
		yaa=L*sin(al[i]*pi/180)+ya
		
		xbb=L*cos(ar[i]*pi/180)+xb
		ybb=L*sin(ar[i]*pi/180)+yb
		
		plot([xaa,xa],[yaa,ya],c='b')
		plot([xbb,xb],[ybb,yb],c='b')
		ax1.set_xlim([-40,40])
		ax1.set_ylim([-60,20])
		show()

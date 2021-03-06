#2DOF_5R

This is a little personnal side project I'm doing between the submission of my master thesis and my first job.
The idea is to create a [pantograph](http://hades.mech.northwestern.edu/images/c/c1/PantographDimensions.png) which can also be referred to as a 2DOF 5R robot. Indeed, this parallel robot ( the end effector is linked to the ground by two different kinematic chains ) has 2 Degrees of Freedom and is composed of 5 rotational joints, hence 2DOF 5R.

The aim of this robot is to write and draw things. Indeed, the end effector is a writing tool ( pen, veleda marker ... ) and is translated across the writing surface ( paper or white board ) with two servomotors. First the robot will write letters/words typed by the user on a computer using a homemade font, then maybe some image recognition will be used to replicate the exact handwriting of a user using a camera. An example of such a system can be found [here](http://i.imgur.com/UJkJNk8.gifv). As a personnal project I try to not look at how it has been done by other people but rather come with my own design, understanding of things and solutions. I know that parts for this robot can be found on thingiverse, but I want to do everything on my own.

This robot aim is to replicate what someone writes. When a HMI will be set up, the goal may shift to write what people write on twitter. I need to learn about twitter bots first though.

As this is a work in progress, this is the current state :

##Maths :
* The inverse kinematics of the robot is done ( computing the servo angles knowing the dimensions of the robot and the wanted position of the end effector ). [Intersections between circles are used to compute the angles of the servos](http://imgur.com/rYRsRPx).
* In order to trace something, a line for example, one need to know the starting and ending coordinates of the line. However, if a constant delay is applied to draw lines of different lengths, it may result in a poor drawing and a lot of strain on the servos. That's why finding intermediates points between the starting and ending points ( interpolation ) is important : with a constant interpolation step, drawings are much smoother. 

#####Workspace study :
The workspace is the defined by the area in which the end effector can be in. It is limited by singularities and the physical dimensions of the robot. These dimensions are :

* The distance a between the center of the two servos outputs.
* The length L of the first link of the kinematic chain, the one attached to one of the servos ( in orange [here](http://i.imgur.com/A3rcZ1F.jpg)).
* The length l of the second link of the kinematic chain, the one attached to the end effector (in blue/green [here](http://i.imgur.com/A3rcZ1F.jpg)).


Thanks to a [quick workspace study](http://imgur.com/a/1bJ1g), it would seem that a relatively small a distance, with l equal or greater than L is a good combination to have a workspace large enough to write a small text ( a tweet for exemple uses no more than 140 characters ).


##Software :
* The font of all 26 latin letters, uppercase, as well as the 10 digits have been re-created using only lines, ellipses and circles. The position of the end effector has been mapped for all these fonts : it starts at coordinates (x0,y0), moves to the starting point of the character considered with its tip up, draws the letter with its tip in contact with the paper/white board using the coordinates of the interpolation points converted into angles for the servos ( and occasionally lift its tip to draw the letter in multiple times ) then goes back to (x0,y0). This is done in MATLAB ( with plot, see : video_1.m or this [youtube video](https://youtu.be/wZhavkFW-YY) ) and with Python ( no plot yet ). 
Size factor added and tested on all characters so far and will be implemented for future characters.
* Characters added : all 26 latin alphabet lettres lowercase, and the following typographical characters : ,.:!?()[]#=@&/\_-+ 
* Added security measuers to ward off singularities. In this case, there is a singularity when the two last links ( the closest to the end effector ) are colinear. In this configuration, the mechanism is blocked, and should it get unstuck, the end effector could go either up or down. Measures have been taken so that the end effctor doesn't reach the singularity point. Albeit not a singularity, the cases where the end effector is expected to go further than the mechanical parts allow it have been taken care of : should this case occure, the movements won't be taken into account until the end effector's position is back within the workspace.

##Hardware :
* The mechanical parts will be produced if I can find a 3D printer. Those parts have been quickly modelised using SolidWorks to give an overview of a possible mechanical implementation. Pictures can be found [here](http://imgur.com/a/QoGaD).
* As of today, there is no mechanism to lift the tip of the end effector. Two possible solutions have been found though.
* The electronic parts have not been given much thought. It will most likely start with a python script prompting a user to write words then send the servo angles over UART to an Arduino, then a MSP430 will be considered to replace the arduino.

#What's next :
* Determine relevant dimensions of the mechanical parts to allow the writing of multiple words.
* Modelise at least one solution to lift the tip of the end effector. 
* Learn about twitter bots ?
* HMI functions to implement in Python.

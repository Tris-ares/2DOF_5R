## 2DOF_5R

This is a little personnal side project I'm doing between the submission of my master and my first job.
The idea is to create a [pantograph](http://hades.mech.northwestern.edu/images/c/c1/PantographDimensions.png) which can also be referred to as a 2DOF 5R robot. Indeed, this parallel robot ( the end effector is liked to the ground by two different kinematic chain ) has 2 Degrees of Freedom and is composed of 5 rotational joints, hence 2DOF 5R.

The aim of this robot is to write and draw things. Indeed, the end effector is a writing tool ( pen, veleda marker ... ) and is translated across the writing surface ( paper or white board ) with two servomotors. First the robot will write letters/words typed by the user on a computer using a homemade font, then maybe some image recognition will be used to replicate the exact handwriting of a user using a camera. An example of such a system can be found [here](http://i.imgur.com/UJkJNk8.gifv). As a personnal project I try to not look at how it has been done by other people but rather come with my own design, understanding of things and solutions. I know that parts for this robot can be found on thingiverse, but I want to do everything on my own.

As this is a work in progress, this is the current state :

#Maths :
* The inverse kinematics of the robot is done ( computing the servo angles knowing thedimensiosn of the robot and the wanted position of the end effector ). Intersections between circles are used to compute the angles of the servos.
* In order to trace something ( a line for example ), one need to know the starting and ending coordinates of the line. However, if a constant delay is applied to draw lines of different lengths, it may result in a poor drawing and a lot of strain on the servos. That's why finding intermediates points between the starting and ending points ( interpolation ) is important : with a constant interpolation step, drawings are much smoother. 

#Software :
* The font of all 26 latin letters, as well as the 10 numbers have been re-created using lines, ellipses and circles. The position of the end effector has been mapped for all these fonts : it starts at coordinates (x0,y0), moves to the starting point of the letter considered with its tip up, draws the letter with its tip in contact with the paper/white board using the coordinates of the interpolation points converted into angles for the servos ( and occasionally lift its tip to draw the letter in multiple times ) then goes back to (x0,y0). This is done in MATLAB ( with plot, see : video_1.m ) and with Python ( no plot yet ). 

#Hardware :
* The mechanical parts will be produced if I can find a 3D printer. Those parts have been quickly modelised using SolidWorks to give an overview of a possible mechanical implementation. Pictures can be found [here](http://imgur.com/a/QoGaD).
* The electronic parts have not been given much thought. It will most likely start with a python script prompting a user to write words then send the servo angles over UART to an Arduino, then a MSP430 will be considered to replace the arduino.

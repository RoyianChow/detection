# Face Detection and Identification with User Input
This is a MATLAB program that uses a pre-trained face detector to detect faces in an image and prompts the user to enter the name, age, date of birth, address, and phone number of each detected person. The program creates an object for each person and draws a rectangle around each detected face with the person's name.

#Requirements
This program requires MATLAB with the Computer Vision System Toolbox.

#Usage
Save the image you want to analyze in the same directory as this program.
Open MATLAB and navigate to the directory where this program is saved.
Open the program in MATLAB and replace insert image name here with the name of the image you want to analyze.
Run the program.
For each detected face, enter the person's name, age, date of birth, address, and phone number when prompted.
The program will display the image with detected faces and names.
Additional Functionality
The program can be easily modified to save the annotated image to a file by adding the following code:
imwrite(Face, 'insert output image file name here');
The program can also be modified to display the number of faces detected by adding the following code:
numFaces = size(bbox, 1);
disp(['Number of faces detected: ', num2str(numFaces)]);
#Contributors
This program was created by myself. If you find any issues or have suggestions for improvements, please feel free to contribute to this project on GitHub.

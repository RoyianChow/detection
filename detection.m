% Load the pre-trained face detector
faceDetector = vision.CascadeObjectDetector();

% Load the image on which to perform face detection
I = imread('insert image name here');

% Use the face detector to detect faces in the image
bbox = step(faceDetector, I);

% Create an object for each detected face with the person's name, age, date of birth, address, and phone number
numFaces = size(bbox, 1);
people = cell(numFaces, 1);
for i = 1:numFaces
% Prompt the user to enter the person's name
namePrompt = ['Enter the name for face ', num2str(i), ': '];
name = input(namePrompt, 's');
% Prompt the user to enter the person's age
agePrompt = ['Enter the age for ', name, ': '];
age = input(agePrompt);

% Prompt the user to enter the person's date of birth
dobPrompt = ['Enter the date of birth for ', name, ' (in dd/mm/yyyy format): '];
dob = input(dobPrompt, 's');

% Prompt the user to enter the person's address
addressPrompt = ['Enter the address for ', name, ': '];
address = input(addressPrompt, 's');

% Prompt the user to enter the person's phone number
phonePrompt = ['Enter the phone number for ', name, ': '];
phone = input(phonePrompt, 's');

% Create an object for the person
person = struct('Name', name, 'Age', age, 'DateOfBirth', dob, 'Address', address, 'PhoneNumber', phone);
people{i} = person;

end

% Draw a rectangle around each detected face and label with the person's name
Face = I;
for i = 1:numFaces
Face = insertObjectAnnotation(Face, 'rectangle', bbox(i, :), people{i}.Name);
end

% Display the image with detected faces and names
figure
imshow(Face)
title('Detected faces');

% The following code can be added to save the annotated image to a file
% imwrite(Face, 'insert output image file name here');
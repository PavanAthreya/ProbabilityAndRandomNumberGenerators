%Name: Pavan Athreya Narasimha Murthy
%USC ID: 9129210968
%E-mail: pavanatn@usc.edu
%Ph: +1(323)-684 5715
%Term: Fall 2018
%Course: EE511
%Professor: John Silvester

%Clear the Workspace variables and command window for every run
clear all;
clc;
 
% Fourth part of Project 1
NumberSamples = 1000;
u = rand(1001, 1);
unPlusOne = u(1);
uMovedByOnePosition = vertcat(u(2:1001),unPlusOne);
ProductTerms = u.*uMovedByOnePosition;
FirstTerm = (sum(ProductTerms(1:1000))/NumberSamples);
SecondTermOne = (sum(u(1:1000))/NumberSamples);
SecondTermSecond = (sum(uMovedByOnePosition(1:1000))/NumberSamples);
FinalValue = FirstTerm - (SecondTermOne*SecondTermSecond);
disp("The difference value is:");
disp(FinalValue);
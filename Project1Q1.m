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
 
% First part of Project 1
%Class: Uniform Distribution:
ProbabilityDistribution = makedist('Uniform','lower',0,'upper',1);
MeanOfUniformDis = mean(ProbabilityDistribution);
VarianceOfUniformDis = var(ProbabilityDistribution);

disp(ProbabilityDistribution);
disp("Mean of Uniform Distribution");
disp(MeanOfUniformDis);
disp("Variance of Uniform Distribution");
disp(VarianceOfUniformDis);
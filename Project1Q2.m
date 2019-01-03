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
 
% Second part of Project 1
%For 100 samples
NumberOfSamples1 = 100;
RandomSamples1 = rand(100,1);
PopulationMean1 = mean(RandomSamples1);
PopulationVariance1 = var(RandomSamples1);
 
SumOfSamples1 = sum(RandomSamples1);
SampleMean1 = SumOfSamples1/NumberOfSamples1;
disp("Question 2 Answer: Part1");
disp("Number of samples:");
disp(NumberOfSamples1)
disp("Sample Mean");
disp(SampleMean1);
z1 = 0;
for i=1:100
    y1(i) = (RandomSamples1(i)-SampleMean1)*(RandomSamples1(i)-SampleMean1);
    z1 = z1 + y1(i);
end
SampleVariance1 = z1/(NumberOfSamples1-1);
disp("Sample Variance");
disp(SampleVariance1);
disp("variance of the sample mean:");
VarianceBasedOnSMean1 = z1/(NumberOfSamples1);
disp(VarianceBasedOnSMean1);
 
%For 10000 samples
NumberOfSamples = 10000;
RandomSamples = rand(10000,1);
PopulationMean = mean(RandomSamples);
PopulationVariance = var(RandomSamples);
 
SumOfSamples = sum(RandomSamples);
SampleMean = SumOfSamples/NumberOfSamples;
disp("Question 2 Answer: Part 2");
disp("Number of samples:");
disp(NumberOfSamples)
disp("Sample Mean");
disp(SampleMean);
z = 0;
for i=1:10000
    y(i) = (RandomSamples(i)-SampleMean)*(RandomSamples(i)-SampleMean);
    z = z + y(i);
end
SampleVariance = z/(NumberOfSamples-1);
disp("Sample Variance");
disp(SampleVariance);
disp("variance of the sample mean:");
VarianceBasedOnSMean = z/(NumberOfSamples);
disp(VarianceBasedOnSMean);
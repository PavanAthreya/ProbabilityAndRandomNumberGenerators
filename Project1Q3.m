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
 
% Third part of Project 1
for i=1:50
NumberOfSamples = 100;
RandomSamples = rand(100,1);
%PopulationMean = mean(RandomSamples);
%PopulationVariance = var(RandomSamples);
SumOfSamples(i) = sum(RandomSamples);
SampleMean(i) = SumOfSamples(i)/NumberOfSamples;
end
MeanOfSampleMeans = mean(SampleMean);
VarianceOfSampleMeans = var(SampleMean)/NumberOfSamples;
% Norm = normpdf(SampleMean);
% plot(SampleMean,Norm);
hist(SampleMean);
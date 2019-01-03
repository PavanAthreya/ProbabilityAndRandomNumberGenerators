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
 
%Fifth portion of Project5

%Lists to have the randoms samples in a segment of 0.1 increments
intervals1 = zeros(1000,1);
intervals2 = zeros(1000,1);
intervals3 = zeros(1000,1);
intervals4 = zeros(1000,1);
intervals5 = zeros(1000,1);
intervals6 = zeros(1000,1);
intervals7 = zeros(1000,1);
intervals8 = zeros(1000,1);
intervals9 = zeros(1000,1);
intervals10 = zeros(1000,1);

%rando samples in ~U[0,1]
GeneratedRandomSamples = rand(1000, 1);

%segregatin the samples
for j = 1:1000
    variable = GeneratedRandomSamples(j,1);
    if variable>0 & variable<=0.1
            intervals1(j) = variable;
    elseif variable>0.1 & variable<=0.2
            intervals2(j) = variable;
    elseif variable>0.2 & variable<=0.3
            intervals3(j) = variable;
    elseif variable>0.3 & variable<=0.4
            intervals4(j) = variable;
    elseif variable>0.4 & variable<=0.5
            intervals5(j) = variable;
    elseif variable>0.5 & variable<=0.6
            intervals6(j) = variable;
    elseif variable>0.6 & variable<=0.7
            intervals7(j) = variable;
    elseif variable>0.7 & variable<=0.8
            intervals8(j) = variable;
    elseif variable>0.8 & variable<=0.9
            intervals9(j) = variable;
    elseif variable>0.9 & variable<=1
            intervals10(j) = variable;
    end
end

%removing unwanted initialized zeroes in the intervals
intervals1 = intervals1(intervals1 ~= 0);
intervals2 = intervals2(intervals2 ~= 0);
intervals3 = intervals3(intervals3 ~= 0);
intervals4 = intervals4(intervals4 ~= 0);
intervals5 = intervals5(intervals5 ~= 0);
intervals6 = intervals6(intervals6 ~= 0);
intervals7 = intervals7(intervals7 ~= 0);
intervals8 = intervals8(intervals8 ~= 0);
intervals9 = intervals9(intervals9 ~= 0);
intervals10 = intervals10(intervals10 ~= 0);

%calculatig the size of the intervals
[m1,n1] = size(intervals1);
[m2,n2] = size(intervals2);
[m3,n3] = size(intervals3);
[m4,n4] = size(intervals4);
[m5,n5] = size(intervals5);
[m6,n6] = size(intervals6);
[m7,n7] = size(intervals7);
[m8,n8] = size(intervals8);
[m9,n9] = size(intervals9);
[m10,n10] = size(intervals10);
 
%Plotting a histogram to verify that the samples still resemble uniform
%distribution
NumberOfSamplesInIs = [m1, m2, m3, m4, m5, m6, m7, m8, m9, m10];
hist(NumberOfSamplesInIs);
h=chi2gof(NumberOfSamplesInIs);
disp(h);
%% Machine Learning: Polynomial Regression
% Functions Include
% -plotData.m
% -plotD.m
%
%
% x refers to the days after March 19.
% y refers to the total number of infected people
% z refers to the total number of deaths

%% Initialization
clear ; close all; clc

%% ======================= : Plotting =======================
fprintf('Plotting Data ...\n')
data = load('ind_data.txt');
X = data(:, 1);
y = data(:, 2);
z = data(:, 3);
m = length(y); % number of training examples
d= [1:1:50];
plotD(X, y);
hold on;
plot(X,z,'bo',10);
plot(X,z,'b.',10);
legend('Total infected', 'Total Deaths');
fprintf('Program paused. Press enter to continue.\n');
pause;
%=======================  Prediction =================================
plotData(X, y);
p = polyfit(X,y,3);
p_death = polyfit(X,z,3);
pp = polyval(p,X);
pp1 = polyval(p,d);
pp1_death = polyval(p_death,d);
hold on;
plot(X,z,'bo',10);
plot(X,z,'b.',10);
plot(X,pp,'-r');
plot(d,pp1,'-r');
legend('Total infected', 'Total Deaths');
plot(d,pp1_death,'-b');
fprintf('Program paused. Press enter to continue.\n');
prediction_40 = polyval(p,40);
prediction_45 = polyval(p,45);
prediction_50 = polyval(p,50);
prediction_death_50 = polyval(p_death,50);
fprintf('The number of predicted infections in 40th day or April-23 is : %d\n',prediction_40);
fprintf('The number of predicted infections in 45th day or April-28 is : %d\n',prediction_45);
fprintf('The number of predicted infections in 40th day or May-3    is : %d\n',prediction_50);
fprintf('The total number of deaths predicted in May-3 is : %d',prediction_death_50);
pause;

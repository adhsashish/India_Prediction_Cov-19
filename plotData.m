function plotData(x, y)
figure; 
plot(x, y, 'rx', 'MarkerSize', 10);
ylabel('Number of People');
xlabel('Days spend ');
axis([0 50 0 50000]);
end

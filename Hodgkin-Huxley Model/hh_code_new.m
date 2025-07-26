
hhconst;

% Begin with a lower stimulus to check for absence of action potential
amp1 = 6;
width1 = 1;
hhmplot(0, 50, 0);

% Gradually increase stimulus amplitude in 0.1 steps
for step = 1:10
    amp1 = 6 + step * 0.1;
    hhmplot(0, 50, 1);
end

hhconst;

% Narrow down search around expected threshold value
amp1 = 6.90;
width1 = 1;
hhmplot(0, 50, 0);

% Increase stimulus in 0.01 steps to identify precise threshold
for step = 1:10
    amp1 = 6.90 + step * 0.01;
    hhmplot(0, 50, step);
end





hhconst;
amp1 = 7.10; % Intensity is greater than threshold
width1 = 1;
[qna,qk,ql]=hhsplot(0,50);

sum_Jk = qna + qk + ql % Check sum


hhconst;
amp1 = 6.70; % Choose intensity lesser than threshold
width1 = 1;
[qna,qk,ql]=hhsplot(0,50);

sum_Jk = qna + qk + ql % Check the sum

%refactoriness base case
amp1 = 27.4;
width1 = 0.5;
delay2 = 25;
amp2 = 13.7;
width2 = 0.5;
hhsplot(0,40);

%changing delays (20,18,16,14,12,10,8,6)
amp1 = 27.4;
width1 = 0.5;
amp2 = 11.0;
delay2 = 20;
width2 = 0.5;
hhmplot(0,40,0);

for j = 1:6
    amp2 = amp2 + 0.1;
    hhmplot(0,40,1);
end


%graph
delays = [6 8 10 12 14 16 18 20 25];
I2 = [145.2 70.1 40.8 25.5 17.0 12.7 11.3 11.6 13.4];
ratios = I2 / 26.8;

t = linspace(4, 25, 1000); % Expand the delay space
f = spline(delays, ratios, t); % Use spline to interpolate

plot(t, f,'LineWidth', 2)
yline(1, 'r--', 'LineWidth', 1); % Red dashed line at y = 1
grid on;
xlabel('Delay (ms)');
ylabel('Ratio');
title('I2/I1 ratio against delay (Interpolated)');

% repetitive activity base
amp1 = 5; % Change to 5, 10, 20, etc.
width1 = 80;
delay2 = 0;
amp2 = 0;
width2 = 0;
hhmplot(0,100,0);



amp1 = 200;
width1 = 80;
delay2 = 0;
amp2 = 0;
width2 = 0;
hhmplot(0,100,0);


%temp base
vclamp = 0;  
amp1 = 20;  
width1 = 0.5;  
tempc = 0;  
hhmplot(0,30,0);  
hhsplot(0,30) 




vclamp = 0;
amp1 = 20;
width1 = 0.5;

temps = [0, 5, 10, 15, 20, 24, 25, 26, 30];

for i = 1:length(temps)
    tempc = temps(i);
    hhmplot(0,30,1);
    legend('show')
end




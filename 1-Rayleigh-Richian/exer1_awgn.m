%Clear output screen
clc;
clear all;
close all;

%----------Input Section----------------
t = (0:0.1:60)';
x = sin(t);
%---------------------------------------

%----------Output Section----------------
y = awgn(x,10,'measured');
plot(t,[x y])
legend('Original Signal','Signal with AWGN')
%---------------------------------------



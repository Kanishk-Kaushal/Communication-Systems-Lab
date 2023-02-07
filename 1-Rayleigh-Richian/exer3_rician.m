clc
clear all;
close all;

% signal chracteristics
fs = 1000;
t = 0:1/fs:1;
f = 20;
snr = 20;

% input message signal (sine wave)
x = sin(2 * pi * f * t);% generates a sine wave of frequency f

% plot the input signal (sine wave)
subplot(4,1,1),plot(t, x, 'b', 'Linewidth', 2);
xlabel('Time');
ylabel('Amplitude');
title('Input Message Signal');
grid on;

% signal with white Gaussian noise
x_nn = awgn(x, snr, 'measured');% adds White Gaussian Noise to the signal

% plot the noisy signal
subplot(4,1,2),plot(t, x_nn, 'r', 'Linewidth', 2);
xlabel('Time');
ylabel('Amplitude');
title('AWGN Output Signal');
grid on;

% adds rayleigh Noise to the signal
x_rf = raylrnd(x); % rayleigh random variables
% plot the noisy signal
subplot(4,1,3),plot(t, x_rf, 'y', 'Linewidth', 2);
xlabel('Time');
ylabel('Amplitude');
title('Rayleigh Output Signal');
grid on;

% adds rician Noise to the signal
x_ric = raylrnd(x).*raylrnd(x); % rayleigh random variables
% plot the noisy signal
subplot(4,1,4),plot(t, x_ric, 'y', 'Linewidth', 2);
xlabel('Time');
ylabel('Amplitude');
title('Rician Output Signal');
grid on;

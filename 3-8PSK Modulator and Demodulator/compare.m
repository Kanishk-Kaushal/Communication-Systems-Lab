clear
M = 16;
Es_N0_dB = [0:25]; % multiple Es/N0 values
theorySer_16PSK = erfc(sqrt(10.^(Es_N0_dB/10))*sin(pi/M));
theorySer_16QAM = 3/2*erfc(sqrt(0.1*(10.^(Es_N0_dB/10))));
close all
figure
semilogy(Es_N0_dB,theorySer_16PSK,'bs-','LineWidth',2);
hold on
semilogy(Es_N0_dB,theorySer_16QAM,'mx-','LineWidth',2);
axis([0 25 10^-5 1])
grid on
legend('theory-16PSK', 'theory-16QAM');
xlabel('Es/No, dB')
ylabel('Symbol Error Rate')
title('Symbol error probability curve for 16-PSK and 16-QAM modulation')

% As can be observed, at a symbol error rate of 10^(-4) , 
% 16QAM requires only arond 19dB whereas 16PSK requires
% around 23dB of Es/No.

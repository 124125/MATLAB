M = 16;	% Number of symbols
k = log2(M);	% Number of bits per symbol
n = 10000;		% Number of symbols 
snr_dB = 20;	 % Signal-to-Noise Ratio in dB

% Generate random binary data 
data = randi([0 1], 1, n * k);

% Modulation
modulated_data = qammod(data, M);

% AWGN Channel
snr = 10^(snr_dB / 10);
noise_var = 1 / (2 * snr);
noisy_data = modulated_data + sqrt(noise_var) * (randn(1, n) + 1i * randn(1, n));

% Demodulation
demodulated_data = qamdemod(noisy_data, M);

% Calculate Bit Error Rate (BER)
ber = biterr(data, demodulated_data) / (n * k);
fprintf('Bit Error Rate (BER): %f\n', ber);
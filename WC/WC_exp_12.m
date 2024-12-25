Pt = 10;	% Transmitted power (in dBm)
Gt = 5;	% Transmitter antenna gain (in dBi)
Gr = 7;	% Receiver antenna gain (in dBi)
h = 10;	% Height of antennas (in meters)
d = 100;	% Distance between transmitter and receiver (in meters)
lambda = 0.3;	% Wavelength


Pr = Pt + Gt + Gr + 20 * log10(h) - 20 * log10(d); L = (4 * pi * d / lambda)^2;
fprintf('Received Power (Pr): %.2f dBm\n', Pr); fprintf('Path Loss (L): %.2f dB\n', L);

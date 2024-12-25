G_t = 1;
G_r = 1;
f_c = 900 * 10^6;
P_t = 50;
L = 1;

d = 0:100:10000;


lamda = (3*10^8)/f_c;
P_L = -10*log((G_t*G_r*lamda^2)./(4*pi.*d).^2.*L);

plot (d,P_L);xlabel("Distance");ylabel("Loss");title("Power Loss during propagation");
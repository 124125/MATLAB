clc; 
clear all; 
close all;

Lfsl=input('enter the free space loss:'); 
Amu=input('enter the median attenuation value:');
Hmg=input('enter the Mobile station antenna height gain factor:'); 
Hbg=input('enter the Base station antenna height gain factor:'); 
Kc=input('enter the Correction factor gain:');

L=Lfsl+Amu-Hmg-Hbg-Kc; %calculating median path loss 

disp(sprintf('%s %f %s','the median path loss:',L,'dB'));
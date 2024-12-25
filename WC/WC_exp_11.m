clc;
clear all;
close all;

f=input('enter the frequency of transmission in mhz:'); 
Hb=input('enter the height of base station Antenna in meter:'); 
Hm=input('enter the height of mobile station Antenna in meter:'); 
d=input('enter the distance between the base and mobile stations:'); 
n=input('enter 0 for small city and 1 for large city:');

if n==0
    ch=0.8+(1.1*log10(f)-0.7)*Hm-1.56*log10(f); 
else 
    if f>=150 && f<=200 
        ch=8.29*(log10(1.54*Hm))^.2-1.1;
    else
        if f>=200 && f<=1500 
            ch=3.2*(log10(11.75*Hm))^.2-4.97;
        end
    end
end
 
Lu=69.55+26.26*log10(f)-13.82*log10(Hb)-ch+(44.9-6.55*log10(Hb))*log10(d);  
fprintf(sprintf('%s %f %s','Path loss in Urban Areas=',Lu,'dB'));
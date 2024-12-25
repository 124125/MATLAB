
[audioData, sampleRate] = audioread('yo.mp3');
size(audioData)
audioVector = audioData(:,1);
audioInformation = audioinfo('yo.mp3');

windowSize = 1024;
overlap = 512;

[S,F,T] = spectrogram(audioVector,windowSize,overlap,[],sampleRate);


figure;
imagesc(T,F,10*log10(abs(S)));
axis xy;
%colormap('jet');
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('Spectrogram of Audio');

%initialize
bandlow = 8;
bandhigh = 13;
powarray=zeros(1,EEG.nbchan);
%loop through all channels
for chani = 1:EEG.nbchan
    %channel number of your specific lead
    data = EEG.data(chani,:);
    [power, freq] = spectopo(data, 0, EEG.srate,'plot','off');
    %computing power spectrum in dB
    bandIdx = find(freq == bandlow) : find(freq == bandhigh);
    %average power of EEG band in dB
    temp = 10^(mean(power(bandIdx))/10);
    powarray(chani) = temp;
end
meanabspow = mean(powarray);
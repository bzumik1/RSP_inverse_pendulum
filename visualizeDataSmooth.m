clc
close all

addpath('functions')
addpath('gif')
addpath('Results')


data = load('ResultsMPC10.mat');
data = data.sol;
Xc = data.Xc;
Tc = data.Tc;
computingTimes = data.computingTimes;

samples = length(Tc);

kRefreshPlot = 10; %vykresluje se pouze po kazdych 'kRefreshPlot" samplech
kRefreshAnim = 1; % ^

figure("Name", "Computing times")
bar(Ts(1:end-1), computingTimes);

animRefresh(Ts,Xs,[],1);
gif('NLMPC_Swingup_dt10_sawtooth_vhighV.gif')
tic
for k = 2:15:samples
    %% Vizualizace
    
    if(mod(k,kRefreshAnim)==0)
        animRefresh(Tc,Xc,[],k);
        title(Tc(k))
        gif
    end
    
    if(mod(k,10000)==0)
        disp("Time for 10000 samples:" + toc)
        tic
    end
    
    
end
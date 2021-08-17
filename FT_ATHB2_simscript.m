clear all;
% close all
clc

% he = [];
% d2f = [];

%Input Conditions not manipulated
options = struct(); % Inputs 
options.genotype = {''}; % Wild Type
options.temperature = 22; % Temperature (oC) 

%LIGHT CONDITIONS TO MANIPULATE
options.period = 24; % Day period (hr)
options.photoperiod = 12; % Photoperiod (hr)
options.dawn = 0; % Start of light shine (hr)
options.LightOffset = 0;%0.03; % Shifts light function up or down
options.LightAmp = 1;%0.90; % Amplitude of the light wave
options.twilight = 0.05; % Transition time between light/darkness (hr)


[T,Y] = my_simulate_model(options);


% addpath('plotting_tools')
% addpath('my_simulate_model')


species_names = {'ATHB2','FT'};

%ATHB2 Relatve Expression
    subplot(1,2,1)
    hold on
    plot(T,Y(:,8), '.-')
    box on
    xlim([0,options.period]) %Change the 24 to c.period? How is the area under the curve analysed for non-circa days?
    title('ATHB2')
    xlabel('Time (ZT Hrs)')
    ylabel('Relative Expression')
%     circaplot([],[],[0,options.photoperiod],['w','k'],options.period)
    v = axis;
    text(v(1)+0.5,v(4)*0.8,species_names{1},'FontAngle','italic')

    
%FT Relative Expression 
    subplot(1,2,2)
    hold on
    plot(T,Y(:,15), '.-')
    box on
    xlim([0,options.period])
    title('FT')
    xlabel('Time (ZT Hrs)')
    ylabel('Relative Expression')
    %circaplot([],[],[0,options.photoperiod],['w','k'],options.period)
    v = axis;
    text(v(1)+0.5,v(4)*0.8,species_names{2},'FontAngle','italic')
    


% %% ----------------- ATHB2 AREA AND HYPOCOTYL LENGTH ----------------------

a1 = 0.9; a2 = 0.03103; a3 = 0.8;   % Prameters
z = Y(:,8);                         % ATHB2 Expression Level
t = T;                              % Time values
k = length(z);
                            
% Calculating the area under the curve

for i = 1:k-1
    % Area of trapezium between two consecutive points
    areah(i) = ((z(i,1)+z(i+1,1))/2 *(t(i+1,1)-t(i,1)));
    % Total area under FT curve 
    ATHB2_area = sum(areah); 
end

% Change the elements of z that pass the threshold (a3) to a3

for j = 1:k
   if   z(j,1) > a3
        z(j,1) = a3;
   else z(j,1) = z(j,1);
   end
end


Total_BAREA = ATHB2_area(end);
Hypocotyl_Elongation = a1*(Total_BAREA - options.period*a2);

% he = [he Hypocotyl_Elongation]

%% -------------------- FT AREA AND DAYS TO FLOWER ------------------------ 


d0 = 16.55; a4 = -2308.141; a5 = 0.02; % Parameters
f = Y(:,15); % FT Expression Level
l = length(f);
t = T; % Time values


for i = 1:l-1
    % area of trapezium between two points
    area(i) = ((f(i,1)+f(i+1,1))/2 *(t(i+1,1)-t(i,1)));
    % Total area under FT curve
    FT_area = sum(area);  
end


Total_FAREA = FT_area(end);
Days_to_flower = d0 + a4/(1-Total_FAREA/a5);

% d2f = [d2f Days_to_flower];
% end

% [sprintf('%.2f',d2f) '/' sprintf('%.2f',he)]

[sprintf('%.2f',Days_to_flower) '/' sprintf('%.2f',Hypocotyl_Elongation)]
[sprintf('%.2f',Total_FAREA) '/' sprintf('%.2f',Total_BAREA)]

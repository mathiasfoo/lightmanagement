clc
% Light Parameters Inputs
% close all
for i = 1
c.LightOffset = 0;
c.LightAmp = 1;
c.period = 24; % >c.photoperiod
c.twilight = 0.05;
c.dawn = 0;
c.photoperiod = 12;
t = [0:0.01:c.period];

L = c.LightOffset ...
    + 0.5*c.LightAmp*((1 + tanh((c.period/c.twilight)*((t+c.dawn)/c.period - floor(floor(t+c.dawn)/c.period)))) ...
    - (1 + tanh((c.period/c.twilight)*((t+c.dawn)/c.period - floor(floor(t+c.dawn)/c.period)) - c.photoperiod/c.twilight)) ...
    + (1 + tanh((c.period/c.twilight)*((t+c.dawn)/c.period - floor(floor(t+c.dawn)/c.period)) - c.period/c.twilight)));


Light_state = {'Lights Off','Lights On'};
figure(1)
% subplot (3,2,6)
plot(t, L, 'LineWidth', 2)
hold on
% title('Light Function', 'FontAngle','italic', 'FontSize', 14 )
xlim([0, c.period])
ylim([0 1.2])
% axis([0, t(end), c.LightOffset, 2*c.LightAmp])
xticks([0, c.photoperiod, c.period])
% xticklabels({'0', '12', '24'})
xlabel('Time [h]', 'FontSize',13)
ylabel('Light Intensity', 'FontSize',13)
% legend('Normal Intensity', '10% Increased Intensity')

    circaplot([],[],[0 , c.photoperiod],['w','k'],c.period)
   % v = axis;
%     text(v(1)+ (c.photoperiod/2), v(4)*(-0.032),Light_state{2}, 'HorizontalAlignment', 'center', 'FontAngle','italic')
%     text(v(1)+ ((c.period - c.photoperiod)/2)+c.photoperiod, v(4)*(-0.032),Light_state{1}, 'HorizontalAlignment', 'center', 'Color', 'white', 'FontAngle','italic')
%     text(c.photoperiod, -0.21, num2str(c.photoperiod), 'HorizontalAlignment', 'center')
%     set(gca, 'XMinorTick', 'on');
box on
end
% plots of FT/ATHB2 area and Days to Flower/Hypocotyl Elongation with
% variation of phootoperiod 1 --> 24 hrs

% The rest of the inputs stays as defaul (seaton) dawn = 0; twilight =
% 0.05; period = 24; Light Offfset = 0; Light Amp = 1; Temperature = 22 oC


% ----------------- PHOTOPERIOD MANIPULATION --------------------


FTA = ([Total_Area_FT_ph1, Total_Area_FT_ph2, Total_Area_FT_ph3, Total_Area_FT_ph4, Total_Area_FT_ph5, Total_Area_FT_ph6, Total_Area_FT_ph7, Total_Area_FT_ph8, Total_Area_FT_ph9, Total_Area_FT_ph10, Total_Area_FT_ph11, Total_Area_FT_ph12, Total_Area_FT_ph13, Total_Area_FT_ph14, Total_Area_FT_ph15, Total_Area_FT_ph16, Total_Area_FT_ph17, Total_Area_FT_ph18, Total_Area_FT_ph19, Total_Area_FT_ph20, Total_Area_FT_ph21, Total_Area_FT_ph22, Total_Area_FT_ph23, Total_Area_FT_ph24]);
% FTA = ([Total_Area_FT_ph6, Total_Area_FT_ph8, Total_Area_FT_ph10, Total_Area_FT_ph12, Total_Area_FT_ph14, Total_Area_FT_ph16, Total_Area_FT_ph18]);

DTF = ([Days_to_Flower_ph1, Days_to_Flower_ph2, Days_to_Flower_ph3, Days_to_Flower_ph4, Days_to_Flower_ph5, Days_to_Flower_ph6, Days_to_Flower_ph7, Days_to_Flower_ph8, Days_to_Flower_ph9, Days_to_Flower_ph10, Days_to_Flower_ph11, Days_to_Flower_ph12, Days_to_Flower_ph13, Days_to_Flower_ph14, Days_to_Flower_ph15, Days_to_Flower_ph16, Days_to_Flower_ph17, Days_to_Flower_ph18, Days_to_Flower_ph19, Days_to_Flower_ph20, Days_to_Flower_ph21, Days_to_Flower_ph22, Days_to_Flower_ph23, Days_to_Flower_ph24]);
% DTF = ([Days_to_Flower_ph6, Days_to_Flower_ph8, Days_to_Flower_ph10, Days_to_Flower_ph12, Days_to_Flower_ph14, Days_to_Flower_ph16, Days_to_Flower_ph18]);

ATHB2A = ([Total_Area_ATHB2_ph1, Total_Area_ATHB2_ph2, Total_Area_ATHB2_ph3, Total_Area_ATHB2_ph4, Total_Area_ATHB2_ph5, Total_Area_ATHB2_ph6, Total_Area_ATHB2_ph7, Total_Area_ATHB2_ph8, Total_Area_ATHB2_ph9, Total_Area_ATHB2_ph10, Total_Area_ATHB2_ph11, Total_Area_ATHB2_ph12, Total_Area_ATHB2_ph13, Total_Area_ATHB2_ph14, Total_Area_ATHB2_ph15, Total_Area_ATHB2_ph16, Total_Area_ATHB2_ph17, Total_Area_ATHB2_ph18, Total_Area_ATHB2_ph19, Total_Area_ATHB2_ph20, Total_Area_ATHB2_ph21, Total_Area_ATHB2_ph22, Total_Area_ATHB2_ph23, Total_Area_ATHB2_ph24]);
% ATHB2A = ([Total_Area_ATHB2_ph6, Total_Area_ATHB2_ph8, Total_Area_ATHB2_ph10, Total_Area_ATHB2_ph12, Total_Area_ATHB2_ph14, Total_Area_ATHB2_ph16, Total_Area_ATHB2_ph18]);

HE = ([Hypocotyl_Elongation_ph1, Hypocotyl_Elongation_ph2, Hypocotyl_Elongation_ph3, Hypocotyl_Elongation_ph4, Hypocotyl_Elongation_ph5, Hypocotyl_Elongation_ph6, Hypocotyl_Elongation_ph7, Hypocotyl_Elongation_ph8, Hypocotyl_Elongation_ph9, Hypocotyl_Elongation_ph10, Hypocotyl_Elongation_ph11, Hypocotyl_Elongation_ph12, Hypocotyl_Elongation_ph13, Hypocotyl_Elongation_ph14, Hypocotyl_Elongation_ph15, Hypocotyl_Elongation_ph16, Hypocotyl_Elongation_ph17, Hypocotyl_Elongation_ph18, Hypocotyl_Elongation_ph19, Hypocotyl_Elongation_ph20, Hypocotyl_Elongation_ph21, Hypocotyl_Elongation_ph22, Hypocotyl_Elongation_ph23, Hypocotyl_Elongation_ph24]);
% HE = ([Hypocotyl_Elongation_ph6, Hypocotyl_Elongation_ph8, Hypocotyl_Elongation_ph10, Hypocotyl_Elongation_ph12, Hypocotyl_Elongation_ph14, Hypocotyl_Elongation_ph16, Hypocotyl_Elongation_ph18]);

ph = ([1:24]);
% ph = ([6, 8, 10, 12, 14, 16, 18]);


subplot(2, 2, 1)
plot(ph, FTA, 'k-', 'LineWidth',1.5 )
box on
xlabel('Photoperiod')
ylabel('FT_A_R_E_A')
axis([ 5.5, 18.5, 0, 13])


subplot(2, 2, 3)
hold on
plot(ph, DTF, 'k-', 'LineWidth', 1.5)
box on
xlabel('Photoperiod')
ylabel('Days to Flower')
axis([ 5.5, 18.5, 0, 120])
hold off


subplot(2, 2, 2)
plot(ph, ATHB2A, 'k-', 'LineWidth', 1.5)
box on
xlabel('Photoperiod')
ylabel('ATHB2_A_R_E_A')
axis([ 5.5, 18.5, 0, 12])

subplot(2, 2, 4)
hold on
plot(ph, HE, 'k-', 'LineWidth', 1.5)
box on
xlabel('Photoperiod')
ylabel('Hypocotyl Elongation (mm)')
axis([ 5.5, 18.5, 0, 9])
hold off



% ------------------ PERIOD MANIPULATION --------------------


% % ATHB2A = ([Total_Area_ATHB2_p14, Total_Area_ATHB2_p15, Total_Area_ATHB2_p16, Total_Area_ATHB2_p17, Total_Area_ATHB2_p18, Total_Area_ATHB2_p19, Total_Area_ATHB2_p20, Total_Area_ATHB2_p21, Total_Area_ATHB2_p22, Total_Area_ATHB2_p23, Total_Area_ATHB2_p24, Total_Area_ATHB2_p25, Total_Area_ATHB2_p26, Total_Area_ATHB2_p27, Total_Area_ATHB2_p28, Total_Area_ATHB2_p29, Total_Area_ATHB2_p30, Total_Area_ATHB2_p31, Total_Area_ATHB2_p32]);
% ATHB2A = ([Total_Area_ATHB2_p14, Total_Area_ATHB2_p16, Total_Area_ATHB2_p18, Total_Area_ATHB2_p20, Total_Area_ATHB2_p22, Total_Area_ATHB2_p24, Total_Area_ATHB2_p26, Total_Area_ATHB2_p28, Total_Area_ATHB2_p30, Total_Area_ATHB2_p32, Total_Area_ATHB2_p34, Total_Area_ATHB2_p36, Total_Area_ATHB2_p38, Total_Area_ATHB2_p40, Total_Area_ATHB2_p42, Total_Area_ATHB2_p44]);
ATHB2A = ([1.2000, 1.2858, 1.3718, 1.4592, 1.5517, 1.6562, 1.7810, 1.9373, 2.1428, 2.4292, 2.8540, 3.5126, 4.5311, 6.0263, 8.1298, 10.9972, 14.7815, 19.4631, 24.8120])
% % HE = ([Hypocotyl_Elongation_p14, Hypocotyl_Elongation_p15, Hypocotyl_Elongation_p16, Hypocotyl_Elongation_p17, Hypocotyl_Elongation_p18, Hypocotyl_Elongation_p19, Hypocotyl_Elongation_p20, Hypocotyl_Elongation_p21, Hypocotyl_Elongation_p22, Hypocotyl_Elongation_p23, Hypocotyl_Elongation_p24, Hypocotyl_Elongation_p25, Hypocotyl_Elongation_p26, Hypocotyl_Elongation_p27, Hypocotyl_Elongation_p28, Hypocotyl_Elongation_p29, Hypocotyl_Elongation_p30, Hypocotyl_Elongation_p31, Hypocotyl_Elongation_p32]);
% HE = ([Hypocotyl_Elongation_p14, Hypocotyl_Elongation_p16, Hypocotyl_Elongation_p18, Hypocotyl_Elongation_p20, Hypocotyl_Elongation_p22, Hypocotyl_Elongation_p24, Hypocotyl_Elongation_p26, Hypocotyl_Elongation_p28, Hypocotyl_Elongation_p30, Hypocotyl_Elongation_p32, Hypocotyl_Elongation_p34, Hypocotyl_Elongation_p36, Hypocotyl_Elongation_p38, Hypocotyl_Elongation_p40, Hypocotyl_Elongation_p42, Hypocotyl_Elongation_p44]);
HE = ([0.6890, 0.7383 , 0.7877, 0.8385 , 0.8939, 0.9600, 1.0444, 1.1571, 1.3142, 1.5440, 1.8983, 2.4632, 3.3519, 4.6696, 6.5349, 9.0876, 12.4655, 16.6510, 21.4371])
% FTA = ([Total_Area_FT_p14, Total_Area_FT_p15, Total_Area_FT_p16, Total_Area_FT_p17, Total_Area_FT_p18, Total_Area_FT_p19, Total_Area_FT_p20, Total_Area_FT_p21, Total_Area_FT_p22, Total_Area_FT_p23, Total_Area_FT_p24, Total_Area_FT_p25, Total_Area_FT_p26, Total_Area_FT_p27, Total_Area_FT_p28, Total_Area_FT_p29, Total_Area_FT_p30, Total_Area_FT_p31, Total_Area_FT_p32]);
% FTA = ([Total_Area_FT_p14, Total_Area_FT_p16, Total_Area_FT_p18, Total_Area_FT_p20, Total_Area_FT_p22, Total_Area_FT_p24, Total_Area_FT_p26, Total_Area_FT_p28, Total_Area_FT_p30, Total_Area_FT_p32, Total_Area_FT_p34, Total_Area_FT_p36, Total_Area_FT_p38, Total_Area_FT_p40, Total_Area_FT_p42, Total_Area_FT_p44]);
FTA = ([3.5704, 4.3325, 4.9523, 5.4067, 5.6228, 5.5546, 5.2346, 4.7328, 4.1224, 3.4875, 2.9100, 2.4438, 2.1400, 2.0125, 2.0741, 2.3031, 2.6937, 3.2268, 3.9025])
% % DTF = ([Days_to_Flower_p14, Days_to_Flower_p15, Days_to_Flower_p16, Days_to_Flower_p17, Days_to_Flower_p18, Days_to_Flower_p19, Days_to_Flower_p20, Days_to_Flower_p21, Days_to_Flower_p22, Days_to_Flower_p23, Days_to_Flower_p24, Days_to_Flower_p25, Days_to_Flower_p26, Days_to_Flower_p27, Days_to_Flower_p28, Days_to_Flower_p29, Days_to_Flower_p30, Days_to_Flower_p31, Days_to_Flower_p32]);
% DTF = ([Days_to_Flower_p14, Days_to_Flower_p16, Days_to_Flower_p18, Days_to_Flower_p20, Days_to_Flower_p22, Days_to_Flower_p24, Days_to_Flower_p26, Days_to_Flower_p28, Days_to_Flower_p30, Days_to_Flower_p32, Days_to_Flower_p34, Days_to_Flower_p36, Days_to_Flower_p36, Days_to_Flower_p40, Days_to_Flower_p42, Days_to_Flower_p44]);
DTF = ([29.5523, 27.2545, 25.9092, 25.1198, 24.7892, 24.8908, 25.4026, 26.3452, 27.8026, 29.8630, 32.5232, 35.5955, 38.3245, 39.7187, 39.0232, 36.7696, 33.8154, 30.9452, 28.4401])


p = ([14:1:32]);

x_FTA = [2.9100, 2.9100];
x_DTF = [32.5232, 32.5232];
x_ATHB2A = [2.8540, 2.8540];
x_HE = [1.8983, 1.8983];

q = [14,34];

subplot(2, 2, 1)
hold on 
plot(p, FTA, 'b-', 'LineWidth',1.5 )
plot(q, x_FTA, 'k--')
xlabel('Day Period')
ylabel('FT_A_R_E_A')
axis([14, p(end), 0.9*min(FTA), 1.1*max(FTA)])


subplot(2, 2, 3)
hold on
plot(p, DTF, 'b-', 'LineWidth', 1.5)
plot(q, x_DTF, 'k--')
xlabel('Day Period')
ylabel('Days to Flower')
axis([14, p(end), 0.9*min(DTF), 1.1*max(DTF)])
hold off


subplot(2, 2, 2)
hold on
plot(p, ATHB2A, 'b-', 'LineWidth', 1.5)
plot(q, x_ATHB2A, 'k--')
xlabel('Day Period')
ylabel('ATHB2_A_R_E_A')
axis([14, p(end), 0.9*min(ATHB2A), 1.1*max(ATHB2A)])


subplot(2, 2, 4)
hold on
plot(p, HE, 'b-', 'LineWidth', 1.5)
plot(q, x_HE, 'k--')
xlabel('Day Period')
ylabel('Hypocotyl Elongation (mm)')
axis([14, p(end), 0.9*min(HE), 1.1*max(HE)])
hold off



% ------------------ DAWN MANIPULATION --------------------


%FTA = ([Total_Area_FT_d0, Total_Area_FT_d025, Total_Area_FT_d05, Total_Area_FT_d075, Total_Area_FT_d1, Total_Area_FT_d125, Total_Area_FT_d150, Total_Area_FT_d0, Total_Area_FT_d2,Total_Area_FT_d225, Total_Area_FT_d250, Total_Area_FT_d275, Total_Area_FT_d3,Total_Area_FT_d325, Total_Area_FT_d350, Total_Area_FT_d375, Total_Area_FT_d4,Total_Area_FT_d425, Total_Area_FT_d450, Total_Area_FT_d475, Total_Area_FT_d5,Total_Area_FT_d525, Total_Area_FT_d550, Total_Area_FT_d575, Total_Area_FT_d6,Total_Area_FT_d625, Total_Area_FT_d650, Total_Area_FT_d675, Total_Area_FT_d7, Total_Area_FT_d725, Total_Area_FT_d750, Total_Area_FT_d775, Total_Area_FT_d8, Total_Area_FT_d825, Total_Area_FT_d850, Total_Area_FT_d875, Total_Area_FT_d9, Total_Area_FT_d925, Total_Area_FT_d950, Total_Area_FT_d975,  Total_Area_FT_d10, Total_Area_FT_d1025, Total_Area_FT_d1050, Total_Area_FT_d1075, Total_Area_FT_d11, Total_Area_FT_d1125, Total_Area_FT_d1150, Total_Area_FT_d1175, Total_Area_FT_d12,Total_Area_FT_d1225, Total_Area_FT_d1250, Total_Area_FT_d1275, Total_Area_FT_d13, Total_Area_FT_d1325, Total_Area_FT_d1350, Total_Area_FT_d1375, Total_Area_FT_d14, Total_Area_FT_d1425, Total_Area_FT_d1450, Total_Area_FT_d1475, Total_Area_FT_d15, Total_Area_FT_d1525, Total_Area_FT_d1550, Total_Area_FT_d1575, Total_Area_FT_d16, Total_Area_FT_d1625, Total_Area_FT_d1650, Total_Area_FT_d1675, Total_Area_FT_d17,Total_Area_FT_d1725, Total_Area_FT_d1750, Total_Area_FT_d1775, Total_Area_FT_d18,Total_Area_FT_d1825, Total_Area_FT_d1850, Total_Area_FT_d1875, Total_Area_FT_d19, Total_Area_FT_d1925,Total_Area_FT_d1950, Total_Area_FT_d1975,Total_Area_FT_d20,Total_Area_FT_d2025, Total_Area_FT_d2050, Total_Area_FT_d2075, Total_Area_FT_d21,Total_Area_FT_d2125, Total_Area_FT_d2150, Total_Area_FT_d2175, Total_Area_FT_d22, Total_Area_FT_d2225, Total_Area_FT_d2250 , Total_Area_FT_d2275, Total_Area_FT_d23, Total_Area_FT_d2325, Total_Area_FT_d2350, Total_Area_FT_d2375, Total_Area_FT_d24]);
% % FTA = ([Total_Area_FT_d6, Total_Area_FT_d8, Total_Area_FT_d10, Total_Area_FT_d12, Total_Area_FT_d14, Total_Area_FT_d16, Total_Area_FT_d18]);
%FTA = ([Total_Area_FT_d0, Total_Area_FT_d1, Total_Area_FT_d2, Total_Area_FT_d3, Total_Area_FT_d4, Total_Area_FT_d5, Total_Area_FT_d6, Total_Area_FT_d7, Total_Area_FT_d8, Total_Area_FT_d9, Total_Area_FT_d10, Total_Area_FT_d11, Total_Area_FT_d12, Total_Area_FT_d13, Total_Area_FT_d14, Total_Area_FT_d15, Total_Area_FT_d16, Total_Area_FT_d17, Total_Area_FT_d18, Total_Area_FT_d19, Total_Area_FT_d20, Total_Area_FT_d21, Total_Area_FT_d22, Total_Area_FT_d23, Total_Area_FT_d24]);

FTA = ([2.9100, 2.9053, 2.9089,  2.9099, 2.9075, 2.9128, 2.9036, 2.9090, 2.9112, 2.9123]);


%DTF = ([Days_to_Flower_d0, Days_to_Flower_d1, Days_to_Flower_d2, Days_to_Flower_d3, Days_to_Flower_d4, Days_to_Flower_d5, Days_to_Flower_d6, Days_to_Flower_d7, Days_to_Flower_d8, Days_to_Flower_d9, Days_to_Flower_d10, Days_to_Flower_d11, Days_to_Flower_d12, Days_to_Flower_d13, Days_to_Flower_d14, Days_to_Flower_d15, Days_to_Flower_d16, Days_to_Flower_d17, Days_to_Flower_d18, Days_to_Flower_d19, Days_to_Flower_d20, Days_to_Flower_d21, Days_to_Flower_d22, Days_to_Flower_d23, Days_to_Flower_d24]);
% % DTF = ([Days_to_Flower_d6, Days_to_Flower_d8, Days_to_Flower_d10, Days_to_Flower_d12, Days_to_Flower_d14, Days_to_Flower_d16, Days_to_Flower_d18]);
%DTF = ([Days_to_Flower_d0, Days_to_Flower_d025, Days_to_Flower_d05, Days_to_Flower_d075, Days_to_Flower_d1, Days_to_Flower_d125, Days_to_Flower_d150, Days_to_Flower_d0, Days_to_Flower_d2,Days_to_Flower_d225, Days_to_Flower_d250, Days_to_Flower_d275, Days_to_Flower_d3,Days_to_Flower_d325, Days_to_Flower_d350, Days_to_Flower_d375, Days_to_Flower_d4,Days_to_Flower_d425, Days_to_Flower_d450, Days_to_Flower_d475, Days_to_Flower_d5,Days_to_Flower_d525, Days_to_Flower_d550, Days_to_Flower_d575, Days_to_Flower_d6,Days_to_Flower_d625, Days_to_Flower_d650, Days_to_Flower_d675, Days_to_Flower_d7, Days_to_Flower_d725, Days_to_Flower_d750, Days_to_Flower_d775, Days_to_Flower_d8, Days_to_Flower_d825, Days_to_Flower_d850, Days_to_Flower_d875, Days_to_Flower_d9, Days_to_Flower_d925, Days_to_Flower_d950, Days_to_Flower_d975,  Days_to_Flower_d10, Days_to_Flower_d1025, Days_to_Flower_d1050, Days_to_Flower_d1075, Days_to_Flower_d11, Days_to_Flower_d1125, Days_to_Flower_d1150, Days_to_Flower_d1175, Days_to_Flower_d12,Days_to_Flower_d1225, Days_to_Flower_d1250, Days_to_Flower_d1275, Days_to_Flower_d13, Days_to_Flower_d1325, Days_to_Flower_d1350, Days_to_Flower_d1375, Days_to_Flower_d14, Days_to_Flower_d1425, Days_to_Flower_d1450, Days_to_Flower_d1475, Days_to_Flower_d15, Days_to_Flower_d1525, Days_to_Flower_d1550, Days_to_Flower_d1575, Days_to_Flower_d16, Days_to_Flower_d1625, Days_to_Flower_d1650, Days_to_Flower_d1675, Days_to_Flower_d17,Days_to_Flower_d1725, Days_to_Flower_d1750, Days_to_Flower_d1775, Days_to_Flower_d18,Days_to_Flower_d1825, Days_to_Flower_d1850, Days_to_Flower_d1875, Days_to_Flower_d19, Days_to_Flower_d1925,Days_to_Flower_d1950, Days_to_Flower_d1975,Days_to_Flower_d20,Days_to_Flower_d2025, Days_to_Flower_d2050, Days_to_Flower_d2075, Days_to_Flower_d21,Days_to_Flower_d2125, Days_to_Flower_d2150, Days_to_Flower_d2175, Days_to_Flower_d22, Days_to_Flower_d2225, Days_to_Flower_d2250 , Days_to_Flower_d2275, Days_to_Flower_d23, Days_to_Flower_d2325, Days_to_Flower_d2350, Days_to_Flower_d2375, Days_to_Flower_d24]);

DTF = ([32.5232, 32.5493, 32.5292, 32.5241, 32.5372, 32.5080, 32.5587, 32.5291, 32.5169, 32.5108]);

%ATHB2A = ([Total_Area_ATHB2_d0, Total_Area_ATHB2_d1, Total_Area_ATHB2_d2, Total_Area_ATHB2_d3, Total_Area_ATHB2_d4, Total_Area_ATHB2_d5, Total_Area_ATHB2_d6, Total_Area_ATHB2_d7, Total_Area_ATHB2_d8, Total_Area_ATHB2_d9, Total_Area_ATHB2_d10, Total_Area_ATHB2_d11, Total_Area_ATHB2_d12, Total_Area_ATHB2_d13, Total_Area_ATHB2_d14, Total_Area_ATHB2_d15, Total_Area_ATHB2_d16, Total_Area_ATHB2_d17, Total_Area_ATHB2_d18, Total_Area_ATHB2_d19, Total_Area_ATHB2_d20, Total_Area_ATHB2_d21, Total_Area_ATHB2_d22, Total_Area_ATHB2_d23, Total_Area_ATHB2_d24]);
% % ATHB2A = ([Total_Area_ATHB2_d6, Total_Area_ATHB2_d8, Total_Area_ATHB2_d10, Total_Area_ATHB2_d12, Total_Area_ATHB2_d14, Total_Area_ATHB2_d16, Total_Area_ATHB2_d18]);
%ATHB2A = ([Total_Area_ATHB2_d0, Total_Area_ATHB2_d025, Total_Area_ATHB2_d05, Total_Area_ATHB2_d075, Total_Area_ATHB2_d1, Total_Area_ATHB2_d125, Total_Area_ATHB2_d150, Total_Area_ATHB2_d0, Total_Area_ATHB2_d2,Total_Area_ATHB2_d225, Total_Area_ATHB2_d250, Total_Area_ATHB2_d275, Total_Area_ATHB2_d3,Total_Area_ATHB2_d325, Total_Area_ATHB2_d350, Total_Area_ATHB2_d375, Total_Area_ATHB2_d4,Total_Area_ATHB2_d425, Total_Area_ATHB2_d450, Total_Area_ATHB2_d475, Total_Area_ATHB2_d5,Total_Area_ATHB2_d525, Total_Area_ATHB2_d550, Total_Area_ATHB2_d575, Total_Area_ATHB2_d6,Total_Area_ATHB2_d625, Total_Area_ATHB2_d650, Total_Area_ATHB2_d675, Total_Area_ATHB2_d7, Total_Area_ATHB2_d725, Total_Area_ATHB2_d750, Total_Area_ATHB2_d775, Total_Area_ATHB2_d8, Total_Area_ATHB2_d825, Total_Area_ATHB2_d850, Total_Area_ATHB2_d875, Total_Area_ATHB2_d9, Total_Area_ATHB2_d925, Total_Area_ATHB2_d950, Total_Area_ATHB2_d975,  Total_Area_ATHB2_d10, Total_Area_ATHB2_d1025, Total_Area_ATHB2_d1050, Total_Area_ATHB2_d1075, Total_Area_ATHB2_d11, Total_Area_ATHB2_d1125, Total_Area_ATHB2_d1150, Total_Area_ATHB2_d1175, Total_Area_ATHB2_d12,Total_Area_ATHB2_d1225, Total_Area_ATHB2_d1250, Total_Area_ATHB2_d1275, Total_Area_ATHB2_d13, Total_Area_ATHB2_d1325, Total_Area_ATHB2_d1350, Total_Area_ATHB2_d1375, Total_Area_ATHB2_d14, Total_Area_ATHB2_d1425, Total_Area_ATHB2_d1450, Total_Area_ATHB2_d1475, Total_Area_ATHB2_d15, Total_Area_ATHB2_d1525, Total_Area_ATHB2_d1550, Total_Area_ATHB2_d1575, Total_Area_ATHB2_d16, Total_Area_ATHB2_d1625, Total_Area_ATHB2_d1650, Total_Area_ATHB2_d1675, Total_Area_ATHB2_d17,Total_Area_ATHB2_d1725, Total_Area_ATHB2_d1750, Total_Area_ATHB2_d1775, Total_Area_ATHB2_d18,Total_Area_ATHB2_d1825, Total_Area_ATHB2_d1850, Total_Area_ATHB2_d1875, Total_Area_ATHB2_d19, Total_Area_ATHB2_d1925,Total_Area_ATHB2_d1950, Total_Area_ATHB2_d1975,Total_Area_ATHB2_d20,Total_Area_ATHB2_d2025, Total_Area_ATHB2_d2050, Total_Area_ATHB2_d2075, Total_Area_ATHB2_d21,Total_Area_ATHB2_d2125, Total_Area_ATHB2_d2150, Total_Area_ATHB2_d2175, Total_Area_ATHB2_d22, Total_Area_ATHB2_d2225, Total_Area_ATHB2_d2250 , Total_Area_ATHB2_d2275, Total_Area_ATHB2_d23, Total_Area_ATHB2_d2325, Total_Area_ATHB2_d2350, Total_Area_ATHB2_d2375, Total_Area_ATHB2_d24]);

ATHB2A = ([2.8540, 2.8538, 2.8552, 2.8548, 2.8538, 2.8551, 2.8540, 2.8550, 2.8536, 2.8560]);

%HE = ([Hypocotyl_Elongation_d0, Hypocotyl_Elongation_d1, Hypocotyl_Elongation_d2, Hypocotyl_Elongation_d3, Hypocotyl_Elongation_d4, Hypocotyl_Elongation_d5, Hypocotyl_Elongation_d6, Hypocotyl_Elongation_d7, Hypocotyl_Elongation_d8, Hypocotyl_Elongation_d9, Hypocotyl_Elongation_d10, Hypocotyl_Elongation_d11, Hypocotyl_Elongation_d12, Hypocotyl_Elongation_d13, Hypocotyl_Elongation_d14, Hypocotyl_Elongation_d15, Hypocotyl_Elongation_d16, Hypocotyl_Elongation_d17, Hypocotyl_Elongation_d18, Hypocotyl_Elongation_d19, Hypocotyl_Elongation_d20, Hypocotyl_Elongation_d21, Hypocotyl_Elongation_d22, Hypocotyl_Elongation_d23, Hypocotyl_Elongation_d24]);
% % HE = ([Hypocotyl_Elongation_d6, Hypocotyl_Elongation_d8, Hypocotyl_Elongation_d10, Hypocotyl_Elongation_d12, Hypocotyl_Elongation_d14, Hypocotyl_Elongation_d16, Hypocotyl_Elongation_d18]);
%HE = ([Hypocotyl_Elongation_d0, Hypocotyl_Elongation_d025, Hypocotyl_Elongation_d05, Hypocotyl_Elongation_d075, Hypocotyl_Elongation_d1, Hypocotyl_Elongation_d125, Hypocotyl_Elongation_d150, Hypocotyl_Elongation_d0, Hypocotyl_Elongation_d2,Hypocotyl_Elongation_d225, Hypocotyl_Elongation_d250, Hypocotyl_Elongation_d275, Hypocotyl_Elongation_d3,Hypocotyl_Elongation_d325, Hypocotyl_Elongation_d350, Hypocotyl_Elongation_d375, Hypocotyl_Elongation_d4,Hypocotyl_Elongation_d425, Hypocotyl_Elongation_d450, Hypocotyl_Elongation_d475, Hypocotyl_Elongation_d5,Hypocotyl_Elongation_d525, Hypocotyl_Elongation_d550, Hypocotyl_Elongation_d575, Hypocotyl_Elongation_d6,Hypocotyl_Elongation_d625, Hypocotyl_Elongation_d650, Hypocotyl_Elongation_d675, Hypocotyl_Elongation_d7, Hypocotyl_Elongation_d725, Hypocotyl_Elongation_d750, Hypocotyl_Elongation_d775, Hypocotyl_Elongation_d8, Hypocotyl_Elongation_d825, Hypocotyl_Elongation_d850, Hypocotyl_Elongation_d875, Hypocotyl_Elongation_d9, Hypocotyl_Elongation_d925, Hypocotyl_Elongation_d950, Hypocotyl_Elongation_d975,  Hypocotyl_Elongation_d10, Hypocotyl_Elongation_d1025, Hypocotyl_Elongation_d1050, Hypocotyl_Elongation_d1075, Hypocotyl_Elongation_d11, Hypocotyl_Elongation_d1125, Hypocotyl_Elongation_d1150, Hypocotyl_Elongation_d1175, Hypocotyl_Elongation_d12,Hypocotyl_Elongation_d1225, Hypocotyl_Elongation_d1250, Hypocotyl_Elongation_d1275, Hypocotyl_Elongation_d13, Hypocotyl_Elongation_d1325, Hypocotyl_Elongation_d1350, Hypocotyl_Elongation_d1375, Hypocotyl_Elongation_d14, Hypocotyl_Elongation_d1425, Hypocotyl_Elongation_d1450, Hypocotyl_Elongation_d1475, Hypocotyl_Elongation_d15, Hypocotyl_Elongation_d1525, Hypocotyl_Elongation_d1550, Hypocotyl_Elongation_d1575, Hypocotyl_Elongation_d16, Hypocotyl_Elongation_d1625, Hypocotyl_Elongation_d1650, Hypocotyl_Elongation_d1675, Hypocotyl_Elongation_d17,Hypocotyl_Elongation_d1725, Hypocotyl_Elongation_d1750, Hypocotyl_Elongation_d1775, Hypocotyl_Elongation_d18,Hypocotyl_Elongation_d1825, Hypocotyl_Elongation_d1850, Hypocotyl_Elongation_d1875, Hypocotyl_Elongation_d19, Hypocotyl_Elongation_d1925,Hypocotyl_Elongation_d1950, Hypocotyl_Elongation_d1975,Hypocotyl_Elongation_d20,Hypocotyl_Elongation_d2025, Hypocotyl_Elongation_d2050, Hypocotyl_Elongation_d2075, Hypocotyl_Elongation_d21,Hypocotyl_Elongation_d2125, Hypocotyl_Elongation_d2150, Hypocotyl_Elongation_d2175, Hypocotyl_Elongation_d22, Hypocotyl_Elongation_d2225, Hypocotyl_Elongation_d2250 , Hypocotyl_Elongation_d2275, Hypocotyl_Elongation_d23, Hypocotyl_Elongation_d2325, Hypocotyl_Elongation_d2350, Hypocotyl_Elongation_d2375, Hypocotyl_Elongation_d24]);

HE = ([1.8983, 1.8982, 1.8994, 1.8991, 1.8982, 1.8993, 1.8983, 1.8993, 1.8980, 1.9002]);


d = ([0:2:18]);
% % d = ([6, 8, 10, 12, 14, 16, 18]);
% 
x_FTA = [2.9100, 2.9100];
x_DTF = [32.5232, 32.5232];
x_ATHB2A = [2.8540, 2.8540];
x_HE = [1.8983, 1.8983];

q = [0,18];

subplot(2, 2, 1)
hold on
plot(d, FTA, 'g-', 'LineWidth',1.5 )
plot(q, x_FTA, 'k--')
box on
xlabel('Dawn Time')
ylabel('FT_A_R_E_A')
axis([0, 18, 0.95*min(FTA), 1.05*max(FTA)])


subplot(2, 2, 3)
hold on
plot(d, DTF, 'g-', 'LineWidth', 1.5)
plot(q, x_DTF, 'k--')
box on
xlabel('Dawn Time')
ylabel('Days to Flower')
axis([0, 18, 0.95*min(DTF), 1.05*max(DTF)])


subplot(2, 2, 2)
hold on
plot(d, ATHB2A, 'g-', 'LineWidth', 1.5)
plot(q, x_ATHB2A, 'k--')
box on
xlabel('Dawn Time')
ylabel('ATHB2_A_R_E_A')
axis([0, 18, 0.95*min(ATHB2A), 1.05*max(ATHB2A)])


subplot(2, 2, 4)
hold on
plot(d, HE, 'g-', 'LineWidth', 1.5)
plot(q, x_HE, 'k--')
box on
xlabel('Dawn Time')
ylabel('Hypocotyl Elongation (mm)')
axis([0, 18, 0.95*min(HE), 1.05*max(HE)])


% --------------------- LIGHT OFFSET MANIPULATION ------------------------


% % FTA = ([Total_Area_FT_o0, Total_Area_FT_o001, Total_Area_FT_o002, Total_Area_FT_o003, Total_Area_FT_o004, Total_Area_FT_o005, Total_Area_FT_o006, Total_Area_FT_o007]);
FTA = ([2.9100, 4.5462, 5.4553, 5.9658, 6.4073, 6.7873, 7.0994, 7.3145])
%     
% % DTF = ([Days_to_Flower_o0, Days_to_Flower_o001, Days_to_Flower_o002, Days_to_Flower_o003, Days_to_Flower_o004, Days_to_Flower_o005, Days_to_Flower_o006, Days_to_Flower_o007]);
DTF =([32.5232, 26.7490, 25.0432, 24.3139, 23.7772, 23.3714, 23.0707, 22.8785])
% 
% % ATHB2A = ([Total_Area_ATHB2_o0, Total_Area_ATHB2_o001, Total_Area_ATHB2_o002, Total_Area_ATHB2_o003, Total_Area_ATHB2_o004, Total_Area_ATHB2_o005, Total_Area_ATHB2_o006, Total_Area_ATHB2_o007]);
ATHB2A = ([2.8540, 2.0573, 2.0572, 2.0572, 2.0572, 2.0572, 2.0572, 2.0572])
% 
% % HE = ([Hypocotyl_Elongation_o0, Hypocotyl_Elongation_o002, Hypocotyl_Elongation_o002, Hypocotyl_Elongation_o003, Hypocotyl_Elongation_o004, Hypocotyl_Elongation_o005, Hypocotyl_Elongation_o006, Hypocotyl_Elongation_o007]);
HE = ([1.8983, 1.1813, 1.1812, 1.1812, 1.1812, 1.1812, 1.1812, 1.1812])
% 
o = ([0, 1, 2, 3, 4, 5, 6, 7]);


% x_FTA = [Total_Area_FT_o0, Total_Area_FT_o0];
x_FTA = [2.9100, 2.9100];
% x_DTF = [Days_to_Flower_o0, Days_to_Flower_o0];
x_DTF = [32.5232, 32.5232];
% x_ATHB2A = [Total_Area_ATHB2_o0, Total_Area_ATHB2_o0];
x_ATHB2A = [2.8540, 2.8540];
% x_HE = [Hypocotyl_Elongation_o0, Hypocotyl_Elongation_o0];
x_HE = [1.8983, 1.8983];
q = [0,10];

subplot(2, 2, 1)
hold on
plot(o, FTA, 'm-', 'LineWidth',1.5 )
plot(q, x_FTA, 'k--')
box on
xlabel('Light Offset %')
ylabel('FT_A_R_E_A')
axis([0, 10, 0.9*min(FTA), 1.1*max(FTA)])


subplot(2, 2, 3)
hold on
plot(o, DTF, 'm-', 'LineWidth', 1.5)
plot(q, x_DTF, 'k--')
box on
xlabel('Light Offset %')
ylabel('Days to Flower')
axis([0, 10, 0.9*min(DTF), 1.1*max(DTF)])


subplot(2, 2, 2)
hold on
plot(o, ATHB2A, 'm-', 'LineWidth', 1.5)
plot(q, x_ATHB2A, 'k--')
box on
xlabel('Light Offset %')
ylabel('ATHB2_A_R_E_A')
axis([0, 10, 0.9*min(ATHB2A), 1.1*max(ATHB2A)])


subplot(2, 2, 4)
hold on
plot(o, HE, 'm-', 'LineWidth', 1.5)
plot(q, x_HE, 'k--')
box on
xlabel('Light Offset %')
ylabel('Hypocotyl Elongation (mm)')
axis([0, 10, 0.9*min(HE), 1.1*max(HE)])


% --------------------- LIGHT AMPLITUDE MANIPULATION ------------------------


ATHB2A = ([2.8518, 2.8482, 2.8465, 2.8463, 2.8479, 2.8540, 2.8636, 2.8767, 2.8975, 2.9241, 2.9636, 3.0146, 3.0821, 3.1755, 3.2982, 3.4437, 3.6093, 3.7876]) 

HE = ([1.8964, 1.8931, 1.8916, 1.8914, 1.8929, 1.8983, 1.9070, 1.9188, 1.9375, 1.9615, 1.9970, 2.0429, 2.1036, 2.1877, 2.2982, 2.4291, 2.5781, 2.7386])

FTA = ([0.7243, 0.8682, 1.0721, 1.3823, 1.8980, 2.9100, 4.5702, 5.2917, 5.6038, 5.8446, 6.0645, 6.2676, 6.4686, 6.6718, 6.9003, 7.1720, 7.5352, 8.0271])

DTF = ([82.0928, 70.9716, 60.4256, 50.4357, 41.1311 32.5232, 26.6952, 25.3068, 24.8173, 24.4754, 24.1871, 23.9388, 23.7086, 23.4899, 23.2594, 23.0045, 22.6926, 22.3152])


a = ([-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]);


x_FTA = [2.9100, 2.9100];
x_DTF = [32.5232, 32.5232];
x_ATHB2A = [2.8540, 2.8540];
x_HE = [1.8983, 1.8983];

q = [-5,15];

subplot(2, 2, 1)
hold on
plot(a, FTA, 'r-', 'LineWidth',1.5 )
plot(q, x_FTA, 'k--')
box on
xlabel('Light Apmlitude Increase %')
ylabel('FT_A_R_E_A')
axis([-5, 15, 0.9*min(FTA), 1.1*max(FTA)])


subplot(2, 2, 3)
hold on
plot(a, DTF, 'r-', 'LineWidth', 1.5)
plot(q, x_DTF, 'k--')
box on
xlabel('Light Apmlitude Increase %')
ylabel('Days to Flower')
axis([-5, 15, 0.9*min(DTF), 1.1*max(DTF)])


subplot(2, 2, 2)
hold on
plot(a, ATHB2A, 'r-', 'LineWidth', 1.5)
plot(q, x_ATHB2A, 'k--')
box on
xlabel('Light Apmlitude Increase %')
ylabel('ATHB2_A_R_E_A')
axis([-5, 15, 0.9*min(ATHB2A), 1.1*max(ATHB2A)])


subplot(2, 2, 4)
hold on
plot(a, HE, 'r-', 'LineWidth', 1.5)
plot(q, x_HE, 'k--')
box on
xlabel('Light Apmlitude Increase %')
ylabel('Hypocotyl Elongation (mm)')
axis([-5, 15, 0.9*min(HE), 1.1*max(HE)])




% --------------------- LIGHT OFFSET MANIPULATION ------------------------


FTA = ([Total_Area_FT_a1, Total_Area_FT_a101, Total_Area_FT_a102, Total_Area_FT_a103, Total_Area_FT_a104, Total_Area_FT_a105, Total_Area_FT_a106, Total_Area_FT_a107, Total_Area_FT_a108, Total_Area_FT_a109, Total_Area_FT_a110, Total_Area_FT_a111, Total_Area_FT_a112, Total_Area_FT_a115]);

DTF = ([Days_to_Flower_a1, Days_to_Flower_a101, Days_to_Flower_a102, Days_to_Flower_a103, Days_to_Flower_a104, Days_to_Flower_a105, Days_to_Flower_a106, Days_to_Flower_a107, Days_to_Flower_a108, Days_to_Flower_a109, Days_to_Flower_a110, Days_to_Flower_a111, Days_to_Flower_a112, Days_to_Flower_a115]);

ATHB2A = ([Total_Area_ATHB2_a1, Total_Area_ATHB2_a101, Total_Area_ATHB2_a102, Total_Area_ATHB2_a103, Total_Area_ATHB2_a104, Total_Area_ATHB2_a105, Total_Area_ATHB2_a106, Total_Area_ATHB2_a107, Total_Area_ATHB2_a108, Total_Area_ATHB2_a109, Total_Area_ATHB2_a110, Total_Area_ATHB2_a111, Total_Area_ATHB2_a112, Total_Area_ATHB2_a115]);

HE = ([Hypocotyl_Elongation_a1, Hypocotyl_Elongation_a101, Hypocotyl_Elongation_a102, Hypocotyl_Elongation_a103, Hypocotyl_Elongation_a104, Hypocotyl_Elongation_a105, Hypocotyl_Elongation_a106, Hypocotyl_Elongation_a107, Hypocotyl_Elongation_a108, Hypocotyl_Elongation_a109, Hypocotyl_Elongation_a110, Hypocotyl_Elongation_a111, Hypocotyl_Elongation_a112, Hypocotyl_Elongation_a115]);

a = ([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 15]);


x_FTA = [Total_Area_FT_a1, Total_Area_FT_a1];
x_DTF = [Days_to_Flower_a1, Days_to_Flower_a1];
x_ATHB2A = [Total_Area_ATHB2_a1, Total_Area_ATHB2_a1];
x_HE = [Hypocotyl_Elongation_a1, Hypocotyl_Elongation_a1];

q = [0,a(end)];

subplot(2, 2, 1)
hold on
plot(a, FTA, 'r-', 'LineWidth',1.5 )
plot(q, x_FTA, 'k--')
box on
xlabel('Light Apmlitude Increase %')
ylabel('FT_A_R_E_A')
axis([0, a(end), 0.9*min(FTA), 1.1*max(FTA)])


subplot(2, 2, 3)
hold on
plot(a, DTF, 'r-', 'LineWidth', 1.5)
plot(q, x_DTF, 'k--')
box on
xlabel('Light Apmlitude Increase %')
ylabel('Days to Flower')
axis([0, a(end), 0.9*min(DTF), 1.1*max(DTF)])


subplot(2, 2, 2)
hold on
plot(a, ATHB2A, 'r-', 'LineWidth', 1.5)
plot(q, x_ATHB2A, 'k--')
box on
xlabel('Light Apmlitude Increase %')
ylabel('ATHB2_A_R_E_A')
axis([0, a(end), 0.9*min(ATHB2A), 1.1*max(ATHB2A)])


subplot(2, 2, 4)
hold on
plot(a, HE, 'r-', 'LineWidth', 1.5)
plot(q, x_HE, 'k--')
box on
xlabel('Light Apmlitude Increase %')
ylabel('Hypocotyl Elongation (mm)')
axis([0, a(end), 0.9*min(HE), 1.1*max(HE)])




% --------------------- TWILIGHT MANIPULATION ------------------------


FTA = ([Total_Area_FT_w001, Total_Area_FT_w005, Total_Area_FT_w010, Total_Area_FT_w020, Total_Area_FT_w050, Total_Area_FT_w1, Total_Area_FT_w150, Total_Area_FT_w2, Total_Area_FT_w250, Total_Area_FT_w3]);

DTF = ([Days_to_Flower_w001, Days_to_Flower_w005, Days_to_Flower_w010, Days_to_Flower_w020, Days_to_Flower_w050, Days_to_Flower_w1, Days_to_Flower_w150, Days_to_Flower_w2, Days_to_Flower_w250, Days_to_Flower_w3]);

ATHB2A = ([Total_Area_ATHB2_w001, Total_Area_ATHB2_w005, Total_Area_ATHB2_w010, Total_Area_ATHB2_w020, Total_Area_ATHB2_w050, Total_Area_ATHB2_w1, Total_Area_ATHB2_w150, Total_Area_ATHB2_w2, Total_Area_ATHB2_w250, Total_Area_ATHB2_w3]);

HE = ([Hypocotyl_Elongation_w001, Hypocotyl_Elongation_w005, Hypocotyl_Elongation_w010, Hypocotyl_Elongation_w020, Hypocotyl_Elongation_w050, Hypocotyl_Elongation_w1, Hypocotyl_Elongation_w150, Hypocotyl_Elongation_w2, Hypocotyl_Elongation_w250, Hypocotyl_Elongation_w3]);

a = ([0.01, 0.05, 0.10, 0.20, 0.50, 1, 1.5, 2, 2.5, 3]);


x_FTA = [Total_Area_FT_w005, Total_Area_FT_w005];
x_DTF = [Days_to_Flower_w005, Days_to_Flower_w005];
x_ATHB2A = [Total_Area_ATHB2_w005, Total_Area_ATHB2_w005];
x_HE = [Hypocotyl_Elongation_w005, Hypocotyl_Elongation_w005];

q = [0.01,a(end)];

subplot(2, 2, 1)
hold on
plot(a, FTA, 'c-', 'LineWidth',1.5 )
plot(q, x_FTA, 'k--')
box on
xlabel('Twilight Period')
ylabel('FT_A_R_E_A')
axis([0, a(end), 0.9*min(FTA), 1.1*max(FTA)])


subplot(2, 2, 3)
hold on
plot(a, DTF, 'c-', 'LineWidth', 1.5)
plot(q, x_DTF, 'k--')
box on
xlabel('Twilight Period')
ylabel('Days to Flower')
axis([0, a(end), 0.9*min(DTF), 1.1*max(DTF)])


subplot(2, 2, 2)
hold on
plot(a, ATHB2A, 'c-', 'LineWidth', 1.5)
plot(q, x_ATHB2A, 'k--')
box on
xlabel('Twilight Period')
ylabel('ATHB2_A_R_E_A')
axis([0, a(end), 0.9*min(ATHB2A), 1.1*max(ATHB2A)])


subplot(2, 2, 4)
hold on
plot(a, HE, 'c-', 'LineWidth', 1.5)
plot(q, x_HE, 'k--')
box on
xlabel('Twilight Period')
ylabel('Hypocotyl Elongation (mm)')
axis([0, a(end), 0.9*min(HE), 1.1*max(HE)])
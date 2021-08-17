function P = load_PIF_CO_FT_parameters(genotype,temperature)

if nargin >2
    error('Too many input parameters to load_PIF_CO_FT_parameters')
elseif nargin > 1
    % Temperature has been input by the user
elseif nargin == 1
    % Default temperature value
    temperature = 22;
elseif nargin == 0
    % Default temperature and genotype
    temperature = 22;
    genotype = {''};
end

load('PIF_CO_FT_parameters','P')

% Modify parameters according to genotype
if ismember('co',genotype)
    P.n5 = 0;
    P.n4 = 0;
    P.Bco = 0;
end
if ismember('COox',genotype)
    P.n5 = 0;
    P.n4 = 0;
    P.Bco = 2;
end
if ismember('cdf1',genotype)
    P.n2 = 0;
    P.n1 = 0;
end
if ismember('CDF1ox',genotype)
    P.n2 = 0;
    P.n1 = 2;
    P.g2 = 100000;
end
if ismember('fkf1',genotype)
    P.q1 = 0;
    P.n3 = 0;
end
if ismember('pif4',genotype)
    P.n7 = 0;
    P.n6 = 0;
end
if ismember('pif5',genotype)
    P.n8 = 0;
    P.n9 = 0;
end
if ismember('PIF4ox',genotype)
    P.g7 = P.g7*10000;
    P.n6 = P.n6*2;
end
if ismember('PIF5ox',genotype)
    P.g8 = P.g8*10000;
    P.n8 = P.n8*2;
end
if ismember('delta1',genotype)
    % No CDF1 destabilisation by FKF1
    P.p2 = 0;
end
if ismember('delta2',genotype)
    % No CO stabilisation by FKF1
    %make michaelis constant very high to reduce FKF1 effect to negligible level
    P.k2 = 100000;
end
if ismember('cop1',genotype)
    % No role for cop1 in this pathway
    P.m7 = 0;
    P.n5 = 0;
end

% Modify parameters according to temperature
if temperature == 22;
    %do nothing
elseif temperature == 27;
    % Relieve EC inhibition of PIF4 transcription
    P.g7 = P.g7*4;
    % FT activation at the higher temperature
    f = 3.24;
    P.n14 = P.n14*f;
    P.n15 = P.n15*f;
else
    %raise exception
    error('Invalid temperature selected: Temperature must be 22oC or 27oC')
end
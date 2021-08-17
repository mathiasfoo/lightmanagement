function L = my_light_conditions(t,c)

t = mod(t, c.period); % b = mod(a,m) = a - m.*floor(a./m)


if (c.photoperiod == 0)
    L = 0;
elseif (c.photoperiod == c.period)
    L = 1;
else
    
    % Seaton Light Equation - Contains c.dawn (begining of light shining) and
    % c.photoperiod (duration between dawn and dusk).
    L = c.LightOffset + 0.5*c.LightAmp*((1 + tanh((c.period/c.twilight)*((t+c.dawn)/c.period - floor(floor(t+c.dawn)/c.period)))) - (1 + tanh((c.period/c.twilight)*((t+c.dawn)/c.period - floor(floor(t+c.dawn)/c.period)) - c.photoperiod/c.twilight)) + (1 + tanh((c.period/c.twilight)*((t+c.dawn)/c.period - floor(floor(t+c.dawn)/c.period)) - c.period/c.twilight)));

    
    %Pokhilko Light Equation - Contains c.dawn and c.dusk and c.period =
    %c.dusk - c.dawn and t =/= mod(t, c.period).
 %     L = c.LightOffset + 0.5*c.LightAmp*((1 + tanh((t - c.period*floor(t/c.period) - c.dawn)/c.twilight)) - (1 + tanh((t - c.period*floor(t/c.period) - c.dusk)/c.twilight)) + (1 + tanh((t - c.period*floor(t/c.period) - c.period)/c.twilight)));
end





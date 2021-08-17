The main file to run the simulation is FT_ATHB2_simscript.m

The six light properties can be varied under the heading "LIGHT CONDITIONS TO MANIPULATE". The resulting plots are the gene expression for FT and ATHB2, which are associated with days to flower and hypocotyl length, respectively.

The days to flower and hypocotyl length are calculated using Equations (2) and (3) given in the main text.

The main file will call the function my_simulate_model.m which we have modified from Seaton et al (2015) to simulate the genes from plant circadian system and the flowering and hypocotyl pathways. The parameters associated with the plant circadian model are loaded from P2011_model folder, while the parameters associated with flowering and hypocotyl pathways are loaded from PIF_CO_FT_model folder.

The variation of each light properties as depicted in Figures 2 to 5 in the main text can be plotted using Light_Fnc_plots.m

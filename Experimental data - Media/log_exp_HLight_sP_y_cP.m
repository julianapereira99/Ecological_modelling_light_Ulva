for iexp=1:inputs.exps.n_exp
 inputs.exps.n_obs{iexp}=3;                      % Number of observed quantities per experiment   
 inputs.exps.obs_names{iexp}=char('A','B','P');
 inputs.exps.obs{iexp}=char('A=NA','B=NB','P=NP'); 
 inputs.exps.exp_y0{iexp}=[0 0 0];                 % Initial conditions for each experiment       
%  inputs.exps.u_interp{iexp}='step';              %Stimuli definition 
 inputs.exps.u_interp{iexp}='sustained'; 
%  inputs.exps.n_steps{iexp}=2;                    %Stimuli definition 
 % We need n_steps=2 to handle sequential innoculation
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sin Phaeobacter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

HA_sP=[0     3.546   3.09691001    -40
       4     5.751   6.36361198    -40
       6     5.941   6.14197208    -40
]; %Dados_praticos_superficie_bactéria_na_alga_a

inputs.exps.exp_y0{1}=[HA_sP(1,2) HA_sP(1,3) -40];                        % Initial conditions for each experiment  
inputs.exps.n_s{1}=size(HA_sP,1);                               % Number of sampling times
inputs.exps.t_s{1}=HA_sP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{1}=[6 6;0 0];  % time at which Phaeobacter_A is inoculated/inoculation
inputs.exps.t_f{1}=inputs.exps.t_s{1}(1,inputs.exps.n_s{1});  % Experiments duration
inputs.exps.t_con{1}=[0 6];
inputs.exps.exp_data{1}=[HA_sP(:,2)   log10(10.^HA_sP(:,3)) HA_sP(:,4)];
inputs.exps.exp_data{1}(1,:)=[HA_sP(1,2) HA_sP(1,3) NaN];


HB_sP=[0     3.627   3.23044892     -40
       4     5.532   5.70757018     -40
       6     7.221   5.36172784     -40
]; %Dados_praticos_superficie_bactéria_na_alga_b

inputs.exps.exp_y0{2}=[HB_sP(1,2) HB_sP(1,3) -40];                        % Initial conditions for each experiment  
inputs.exps.n_s{2}=size(HB_sP,1);                               % Number of sampling times
inputs.exps.t_s{2}=HB_sP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{2}=[6 6;0 0];
inputs.exps.t_f{2}=inputs.exps.t_s{2}(1,inputs.exps.n_s{2});  % Experiments duration
inputs.exps.t_con{2}=[0 6];
inputs.exps.exp_data{2}=[HB_sP(:,2)   log10(10.^HB_sP(:,3)) HB_sP(:,4)];
inputs.exps.exp_data{2}(1,:)=[HB_sP(1,2) HB_sP(1,3) NaN];


HC_sP=[0     4.162   2.69897        -40
       4     5.255   5.72263392     -40
       6     6.702   6.05435766     -40
]; %Dados_praticos_superficie_bactéria_na_alga_c

inputs.exps.exp_y0{3}=[HC_sP(1,2) HC_sP(1,3) -40];                        % Initial conditions for each experiment  
inputs.exps.n_s{3}=size(HC_sP,1);                               % Number of sampling times
inputs.exps.t_s{3}=HC_sP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{3}=[6 6;0 0];
inputs.exps.t_f{3}=inputs.exps.t_s{3}(1,inputs.exps.n_s{3});  % Experiments duration
inputs.exps.t_con{3}=[0 6];
inputs.exps.exp_data{3}=[HC_sP(:,2)   log10(10.^HC_sP(:,3)) HC_sP(:,4)];
inputs.exps.exp_data{3}(1,:)=[HC_sP(1,2) HC_sP(1,3) NaN];


HD_sP=[0     3.995   2.47712125     -40
       4     6.188   6.33243846     -40
       6     8.145   6.49369036     -40
]; %Dados_praticos_superficie_bactéria_na_alga_d

inputs.exps.exp_y0{4}=[HD_sP(1,2) HD_sP(1,3) -40];                        % Initial conditions for each experiment  

inputs.exps.n_s{4}=size(HD_sP,1);                               % Number of sampling times
inputs.exps.t_s{4}=HD_sP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{4}=[6 6;0 0];
inputs.exps.t_f{4}=inputs.exps.t_s{4}(1,inputs.exps.n_s{4});  % Experiments duration
inputs.exps.t_con{4}=[0 6];
inputs.exps.exp_data{4}=[HD_sP(:,2)   log10(10.^HD_sP(:,3)) HD_sP(:,4)];
inputs.exps.exp_data{4}(1,:)=[HD_sP(1,2) HD_sP(1,3) NaN];



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Con Phaeobacter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

HA_cP=[0     12.67   8.18184359   7.95904139
       3    14.493  6.24797327   6.12548127
       5    16.786  5.99122608   5.2367891
       7    15.955  6.95424251   5.07918125
       10    22.037  6.80617997   6.24179543
]; %Dados_praticos_superficie_bactéria_na_alga_a

inputs.exps.exp_y0{5}=[HA_cP(1,2) HA_cP(1,3)  0 ];                        % Initial conditions for each experiment  
inputs.exps.n_s{5}=size(HA_cP,1);                               % Number of sampling times
inputs.exps.t_s{5}=HA_cP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{5}=[0 0;7.95904139 7.95904139];  % time at which phaeobacter is inoculated/inoculation
inputs.exps.t_f{5}=inputs.exps.t_s{5}(1,inputs.exps.n_s{5});  % Experiments duration
inputs.exps.t_con{5}=[0 10];
inputs.exps.exp_data{5}=[HA_cP(:,2)   log10(10.^HA_cP(:,3)-10.^HA_cP(:,4))     HA_cP(:,4)];
inputs.exps.exp_data{5}(1,:)=[HA_cP(1,2) HA_cP(1,3)  NaN ];


HB_cP=[0     12.704  7.54220278  7.48287358
       3    13.449  6.67209786  6.50105926
       5    16.091  6.41161971  5.25527251
       7    21.89   6.69019608  5.42324587
       10    19.063  6.40053799  4
]; %Dados_praticos_superficie_bactéria_na_alga_b

inputs.exps.exp_y0{6}=[HB_cP(1,2) HB_cP(1,3) 0 ];                        % Initial conditions for each experiment  
inputs.exps.n_s{6}=size(HB_cP,1);                               % Number of sampling times
inputs.exps.t_s{6}=HB_cP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{6}=[0 0;7.48287358 7.48287358];
inputs.exps.t_f{6}=inputs.exps.t_s{6}(1,inputs.exps.n_s{6});  % Experiments duration
inputs.exps.t_con{6}=[0 10];
inputs.exps.exp_data{6}=[HB_cP(:,2)   log10(10.^HB_cP(:,3)-10.^HB_cP(:,4))   HB_cP(:,4)];
inputs.exps.exp_data{6}(1,:)=[HB_cP(1,2) HB_cP(1,3) NaN ];


HC_cP=[0     9.528   7.60906055   7.57460994
       3    17.585  6.43136376   6.14612804
       5    18.384  7.12385164   6.41497335
       7    16.369  7.22271647   6.07188201
       10    24.328  6.60368555   5.30103
]; %Dados_praticos_superficie_bactéria_na_alga_c

inputs.exps.exp_y0{7}=[HC_cP(1,2) HC_cP(1,3) 0 ];                        % Initial conditions for each experiment  

inputs.exps.n_s{7}=size(HC_cP,1);                               % Number of sampling times
inputs.exps.t_s{7}=HC_cP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{7}=[0 0;7.57460994 7.57460994];
inputs.exps.t_f{7}=inputs.exps.t_s{3}(1,inputs.exps.n_s{3});  % Experiments duration
inputs.exps.t_con{7}=[0 10];
inputs.exps.exp_data{7}=[HC_cP(:,2)   log10(10.^HC_cP(:,3)-10.^HC_cP(:,4))   HC_cP(:,4)];
inputs.exps.exp_data{7}(1,:)=[HC_cP(1,2) HC_cP(1,3) NaN ];


HD_cP=[0     12.941  7.39619935  7.21484385
       3    15.137  6.14921911  5.81954394
       5    20.822  6.50785587  5.70757018
       7    22.98   7.03342376  5.92168648
       10    19.759  6.64345268  5.25527251
]; %Dados_praticos_superficie_bactéria_na_alga_d

inputs.exps.exp_y0{8}=[HD_cP(1,2) HD_cP(1,3) 0 ];                        % Initial conditions for each experiment  
inputs.exps.n_s{8}=size(HD_cP,1);                               % Number of sampling times
inputs.exps.t_s{8}=HD_cP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{8}=[0 0;7.21484385 7.21484385];
inputs.exps.t_f{8}=inputs.exps.t_s{8}(1,inputs.exps.n_s{8});  % Experiments duration
inputs.exps.t_con{8}=[0 10];
inputs.exps.exp_data{8}=[HD_cP(:,2)   log10(10.^HD_cP(:,3)-10.^HD_cP(:,4))   HD_cP(:,4)];
inputs.exps.exp_data{8}(1,:)=[HD_cP(1,2) HD_cP(1,3) NaN];

%media
inputs.exps.n_exp=2;

Alga_sP=[HA_sP(:,2) HB_sP(:,2) HC_sP(:,2) HD_sP(:,2)];
Bacteria_sP = [HA_sP(:,3) HB_sP(:,3) HC_sP(:,3) HD_sP(:,3)];
Phaeo_sP = [HA_sP(:,4) HB_sP(:,4) HC_sP(:,4) HD_sP(:,4)];

mean_alga_sP = mean(Alga_sP')';
mean_Bacteria_sP = mean(Bacteria_sP')';
mean_Phaeo_sP = mean(Phaeo_sP')';
std_alga_sP = std(Alga_sP')';
std_Bacteria_sP = std(Bacteria_sP')';
std_Phaeo_sP = std(Phaeo_sP')';


inputs.exps.exp_data{1}=[mean_alga_sP mean_Bacteria_sP mean_Phaeo_sP];
inputs.exps.error_data{1}=[std_alga_sP std_Bacteria_sP std_Phaeo_sP];
inputs.exps.t_con{1}=[0 6];
% inputs.exps.u{1}=[8 8;mean_Phaeo(1,1) mean_Phaeo(1,1)];

Alga_cP=[HA_cP(:,2) HB_cP(:,2) HC_cP(:,2) HD_cP(:,2)];
Bacteria_cP=[HA_cP(:,3) HB_cP(:,3) HC_cP(:,3) HD_cP(:,3)];
Phaeo_cP = [HA_cP(:,4) HB_cP(:,4) HC_cP(:,4) HD_cP(:,4)];

mean_alga_cP = mean(Alga_cP')';
mean_Bacteria_cP = mean(Bacteria_cP')';
mean_Phaeo_cP = mean(Phaeo_cP')';
std_alga_cP = std(Alga_cP')';
std_Bacteria_cP = std(Bacteria_cP')';
std_Phaeo_cP = std(Phaeo_cP')';

inputs.exps.exp_data{2}=[mean_alga_cP mean_Bacteria_cP mean_Phaeo_cP];
inputs.exps.error_data{2}=[std_alga_cP std_Bacteria_cP std_Phaeo_cP];
inputs.exps.t_con{2}=[0 10];
% inputs.exps.u{2}=[0 0;mean_Phaeo(1,1) mean_Phaeo(1,1)];

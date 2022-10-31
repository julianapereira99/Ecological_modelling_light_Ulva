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

MA_sP=[0     3.546   3.09691001  -40
        4     5.751   6.36361198  -40
        6     8.589   5.67669361  -40
]; %Dados_praticos_superficie_bactéria_na_alga_a

inputs.exps.exp_y0{1}=[MA_sP(1,2) MA_sP(1,3) -40];                        % Initial conditions for each experiment  
inputs.exps.n_s{1}=size(MA_sP,1);                               % Number of sampling times
inputs.exps.t_s{1}=MA_sP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{1}=[6 6;0 0];  % time at which Phaeobacter_A is inoculated/inoculation
inputs.exps.t_f{1}=inputs.exps.t_s{1}(1,inputs.exps.n_s{1});  % Experiments duration
inputs.exps.t_con{1}=[0 6];
inputs.exps.exp_data{1}=[MA_sP(:,2)   log10(10.^MA_sP(:,3)) MA_sP(:,4)];
inputs.exps.exp_data{1}(1,:)=[MA_sP(1,2) MA_sP(1,3) NaN];


MB_sP=[0     3.627   3.23044892  -40
        4     5.532   5.70757018  -40
        6     9.801   5.34242268  -40
]; %Dados_praticos_superficie_bactéria_na_alga_b

inputs.exps.exp_y0{2}=[MB_sP(1,2) MB_sP(1,3) -40];                        % Initial conditions for each experiment  
inputs.exps.n_s{2}=size(MB_sP,1);                               % Number of sampling times
inputs.exps.t_s{2}=MB_sP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{2}=[6 6;0 0];
inputs.exps.t_f{2}=inputs.exps.t_s{2}(1,inputs.exps.n_s{2});  % Experiments duration
inputs.exps.t_con{2}=[0 6];
inputs.exps.exp_data{2}=[MB_sP(:,2)   log10(10.^MB_sP(:,3)) MB_sP(:,4)];
inputs.exps.exp_data{2}(1,:)=[MB_sP(1,2) MB_sP(1,3) NaN];


MC_sP=[0     4.162   2.69897     -40
        4     5.255   5.72263392  -40
        6     7.261   6.39328265  -40
]; %Dados_praticos_superficie_bactéria_na_alga_c

inputs.exps.exp_y0{3}=[MC_sP(1,2) MC_sP(1,3) -40];                        % Initial conditions for each experiment  
inputs.exps.n_s{3}=size(MC_sP,1);                               % Number of sampling times
inputs.exps.t_s{3}=MC_sP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{3}=[6 6;0 0];
inputs.exps.t_f{3}=inputs.exps.t_s{3}(1,inputs.exps.n_s{3});  % Experiments duration
inputs.exps.t_con{3}=[0 6];
inputs.exps.exp_data{3}=[MC_sP(:,2)   log10(10.^MC_sP(:,3)) MC_sP(:,4)];
inputs.exps.exp_data{3}(1,:)=[MC_sP(1,2) MC_sP(1,3) NaN];


MD_sP=[0     3.995   2.47712125  -40
        4     6.188   6.33243846  -40
        6     5.312   6.02530587  -40
]; %Dados_praticos_superficie_bactéria_na_alga_d

inputs.exps.exp_y0{4}=[MD_sP(1,2) MD_sP(1,3) -40];                        % Initial conditions for each experiment  

inputs.exps.n_s{4}=size(MD_sP,1);                               % Number of sampling times
inputs.exps.t_s{4}=MD_sP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{4}=[6 6;0 0];
inputs.exps.t_f{4}=inputs.exps.t_s{4}(1,inputs.exps.n_s{4});  % Experiments duration
inputs.exps.t_con{4}=[0 6];
inputs.exps.exp_data{4}=[MD_sP(:,2)   log10(10.^MD_sP(:,3)) MD_sP(:,4)];
inputs.exps.exp_data{4}(1,:)=[MD_sP(1,2) MD_sP(1,3) NaN];



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Con Phaeobacter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

MA_cP=[0     9.473   7.29225607  7.22010809
        3    22.145  6.34635297  5.11394335
        5    16.82   6.60205999  5.87506126
        7    18.736  6.55388303  6.45331834
        10    23.557  6.66275783  5.17609126
]; %Dados_praticos_superficie_bactéria_na_alga_a

inputs.exps.exp_y0{5}=[MA_cP(1,2) MA_cP(1,3)  0 ];                        % Initial conditions for each experiment  
inputs.exps.n_s{5}=size(MA_cP,1);                               % Number of sampling times
inputs.exps.t_s{5}=MA_cP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{5}=[0 0;7.95904139 7.95904139];  % time at which phaeobacter is inoculated/inoculation
inputs.exps.t_f{5}=inputs.exps.t_s{5}(1,inputs.exps.n_s{5});  % Experiments duration
inputs.exps.t_con{5}=[0 10];
inputs.exps.exp_data{5}=[MA_cP(:,2)   log10(10.^MA_cP(:,3)-10.^MA_cP(:,4))     MA_cP(:,4)];
inputs.exps.exp_data{5}(1,:)=[MA_cP(1,2) MA_cP(1,3)  NaN ];


MB_cP=[0     11.395  7.36921586  7.2787536
    3    18.998  6.51982799  5.63346846
    5    19.404  6.38021124  5.89762709
    7    13.038  6.44326299  6.10209053
    10    24.783  6.75587486  4.60205999
]; %Dados_praticos_superficie_bactéria_na_alga_b

inputs.exps.exp_y0{6}=[MB_cP(1,2) MB_cP(1,3) 0 ];                        % Initial conditions for each experiment  
inputs.exps.n_s{6}=size(MB_cP,1);                               % Number of sampling times
inputs.exps.t_s{6}=MB_cP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{6}=[0 0;7.48287358 7.48287358];
inputs.exps.t_f{6}=inputs.exps.t_s{6}(1,inputs.exps.n_s{6});  % Experiments duration
inputs.exps.t_con{6}=[0 10];
inputs.exps.exp_data{6}=[MB_cP(:,2)   log10(10.^MB_cP(:,3)-10.^MB_cP(:,4))   MB_cP(:,4)];
inputs.exps.exp_data{6}(1,:)=[MB_cP(1,2) MB_cP(1,3) NaN ];


MC_cP=[0     14.653  7.06445799  6.86923172
    3    14.524  6.63346846  6.25527251
    5    22.13   6.07554696  5.25527251
    7    15.483  6.70757018  6.23299611
    10    20.95   7.08635983  6.16583762
]; %Dados_praticos_superficie_bactéria_na_alga_c

inputs.exps.exp_y0{7}=[MC_cP(1,2) MC_cP(1,3) 0 ];                        % Initial conditions for each experiment  

inputs.exps.n_s{7}=size(MC_cP,1);                               % Number of sampling times
inputs.exps.t_s{7}=MC_cP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{7}=[0 0;7.57460994 7.57460994];
inputs.exps.t_f{7}=inputs.exps.t_s{3}(1,inputs.exps.n_s{3});  % Experiments duration
inputs.exps.t_con{7}=[0 10];
inputs.exps.exp_data{7}=[MC_cP(:,2)   log10(10.^MC_cP(:,3)-10.^MC_cP(:,4))   MC_cP(:,4)];
inputs.exps.exp_data{7}(1,:)=[MC_cP(1,2) MC_cP(1,3) NaN ];


MD_cP=[0     10.328  7.26951294  7.15228834
    3    15.544  6.85125835  6.61278386
    5    18.582  6.44793287  5.94694327
    7    14.356  6.87506126  5.60205999
    10    19.29   6.8785218   5.56820172
]; %Dados_praticos_superficie_bactéria_na_alga_d

inputs.exps.exp_y0{8}=[MD_cP(1,2) MD_cP(1,3) 0 ];                        % Initial conditions for each experiment  
inputs.exps.n_s{8}=size(MD_cP,1);                               % Number of sampling times
inputs.exps.t_s{8}=MD_cP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{8}=[0 0;7.21484385 7.21484385];
inputs.exps.t_f{8}=inputs.exps.t_s{8}(1,inputs.exps.n_s{8});  % Experiments duration
inputs.exps.t_con{8}=[0 10];
inputs.exps.exp_data{8}=[MD_cP(:,2)   log10(10.^MD_cP(:,3)-10.^MD_cP(:,4))   MD_cP(:,4)];
inputs.exps.exp_data{8}(1,:)=[MD_cP(1,2) MD_cP(1,3) NaN];

%media
inputs.exps.n_exp=2;

Alga_sP=[MA_sP(:,2) MB_sP(:,2) MC_sP(:,2) MD_sP(:,2)];
Bacteria_sP = [MA_sP(:,3) MB_sP(:,3) MC_sP(:,3) MD_sP(:,3)];
Phaeo_sP = [MA_sP(:,4) MB_sP(:,4) MC_sP(:,4) MD_sP(:,4)];

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

Alga_cP=[MA_cP(:,2) MB_cP(:,2) MC_cP(:,2) MD_cP(:,2)];
Bacteria_cP=[MA_cP(:,3) MB_cP(:,3) MC_cP(:,3) MD_cP(:,3)];
Phaeo_cP = [MA_cP(:,4) MB_cP(:,4) MC_cP(:,4) MD_cP(:,4)];

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

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

DA_sP=[0     3.546   3.09691001  -40
        4     5.751   6.36361198  -40
        6     6.001   4.30103     -40
]; %Dados_praticos_superficie_bactéria_na_alga_a

inputs.exps.exp_y0{1}=[DA_sP(1,2) DA_sP(1,3) -40];                        % Initial conditions for each experiment  
inputs.exps.n_s{1}=size(DA_sP,1);                               % Number of sampling times
inputs.exps.t_s{1}=DA_sP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{1}=[6 6;0 0];  % time at which Phaeobacter_A is inoculated/inoculation
inputs.exps.t_f{1}=inputs.exps.t_s{1}(1,inputs.exps.n_s{1});  % Experiments duration
inputs.exps.t_con{1}=[0 6];
inputs.exps.exp_data{1}=[DA_sP(:,2)   log10(10.^DA_sP(:,3)) DA_sP(:,4)];
inputs.exps.exp_data{1}(1,:)=[DA_sP(1,2) DA_sP(1,3) NaN];


DB_sP=[0     3.627   3.23044892  -40
        4     5.532   5.70757018  -40
        6     6.256   5.7187784   -40
]; %Dados_praticos_superficie_bactéria_na_alga_b

inputs.exps.exp_y0{2}=[DB_sP(1,2) DB_sP(1,3) -40];                        % Initial conditions for each experiment  
inputs.exps.n_s{2}=size(DB_sP,1);                               % Number of sampling times
inputs.exps.t_s{2}=DB_sP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{2}=[6 6;0 0];
inputs.exps.t_f{2}=inputs.exps.t_s{2}(1,inputs.exps.n_s{2});  % Experiments duration
inputs.exps.t_con{2}=[0 6];
inputs.exps.exp_data{2}=[DB_sP(:,2)   log10(10.^DB_sP(:,3)) DB_sP(:,4)];
inputs.exps.exp_data{2}(1,:)=[DB_sP(1,2) DB_sP(1,3) NaN];


DC_sP=[0     4.162   2.69897     -40
        4     5.255   5.72263392  -40
        6     8.569   5.75076545  -40
]; %Dados_praticos_superficie_bactéria_na_alga_c

inputs.exps.exp_y0{3}=[DC_sP(1,2) DC_sP(1,3) -40];                        % Initial conditions for each experiment  
inputs.exps.n_s{3}=size(DC_sP,1);                               % Number of sampling times
inputs.exps.t_s{3}=DC_sP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{3}=[6 6;0 0];
inputs.exps.t_f{3}=inputs.exps.t_s{3}(1,inputs.exps.n_s{3});  % Experiments duration
inputs.exps.t_con{3}=[0 6];
inputs.exps.exp_data{3}=[DC_sP(:,2)   log10(10.^DC_sP(:,3)) DC_sP(:,4)];
inputs.exps.exp_data{3}(1,:)=[DC_sP(1,2) DC_sP(1,3) NaN];


DD_sP=[0     3.995   2.47712125  -40
    4     6.188   6.33243846  -40
    6     6.17    6.16633142  -40
]; %Dados_praticos_superficie_bactéria_na_alga_d

inputs.exps.exp_y0{4}=[DD_sP(1,2) DD_sP(1,3) -40];                        % Initial conditions for each experiment  

inputs.exps.n_s{4}=size(DD_sP,1);                               % Number of sampling times
inputs.exps.t_s{4}=DD_sP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{4}=[6 6;0 0];
inputs.exps.t_f{4}=inputs.exps.t_s{4}(1,inputs.exps.n_s{4});  % Experiments duration
inputs.exps.t_con{4}=[0 6];
inputs.exps.exp_data{4}=[DD_sP(:,2)   log10(10.^DD_sP(:,3)) DD_sP(:,4)];
inputs.exps.exp_data{4}(1,:)=[DD_sP(1,2) DD_sP(1,3) NaN];



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Con Phaeobacter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

DA_cP=[0     6.702   6.36172784  5.71600334
    3    6.531   6.34242268  5.90308999
    5    5.182   6.42813479  5.66275783
    7    6.383   6.36172784  5.04139269
    10    6.856   6.34242268  6.08635983
]; %Dados_praticos_superficie_bactéria_na_alga_a

inputs.exps.exp_y0{5}=[DA_cP(1,2) DA_cP(1,3)  0 ];                        % Initial conditions for each experiment  
inputs.exps.n_s{5}=size(DA_cP,1);                               % Number of sampling times
inputs.exps.t_s{5}=DA_cP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{5}=[0 0;7.95904139 7.95904139];  % time at which phaeobacter is inoculated/inoculation
inputs.exps.t_f{5}=inputs.exps.t_s{5}(1,inputs.exps.n_s{5});  % Experiments duration
inputs.exps.t_con{5}=[0 10];
inputs.exps.exp_data{5}=[DA_cP(:,2)   log10(10.^DA_cP(:,3)-10.^DA_cP(:,4))     DA_cP(:,4)];
inputs.exps.exp_data{5}(1,:)=[DA_cP(1,2) DA_cP(1,3)  NaN ];


DB_cP=[0     6.925   6.76342799  6.34242268
    3    7.942   6.52244423  5.60205999
    5    7.027   6           4.93951925
    7    7.067   6.54654266  6.03342376
    10    7.152   6.83250891  6.2764618
]; %Dados_praticos_superficie_bactéria_na_alga_b

inputs.exps.exp_y0{6}=[DB_cP(1,2) DB_cP(1,3) 0 ];                        % Initial conditions for each experiment  
inputs.exps.n_s{6}=size(DB_cP,1);                               % Number of sampling times
inputs.exps.t_s{6}=DB_cP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{6}=[0 0;7.48287358 7.48287358];
inputs.exps.t_f{6}=inputs.exps.t_s{6}(1,inputs.exps.n_s{6});  % Experiments duration
inputs.exps.t_con{6}=[0 10];
inputs.exps.exp_data{6}=[DB_cP(:,2)   log10(10.^DB_cP(:,3)-10.^DB_cP(:,4))   DB_cP(:,4)];
inputs.exps.exp_data{6}(1,:)=[DB_cP(1,2) DB_cP(1,3) NaN ];


DC_cP=[0     7.588   6.93449845  6.66275783
        3    7.593   6.462398    5.47712125
        5    7.041   6.26951294  5
        7    4.848   6.54777471  5.49136169
        10   7.464   6.53147892  5.5797836
]; %Dados_praticos_superficie_bactéria_na_alga_c

inputs.exps.exp_y0{7}=[DC_cP(1,2) DC_cP(1,3) 0 ];                        % Initial conditions for each experiment  

inputs.exps.n_s{7}=size(DC_cP,1);                               % Number of sampling times
inputs.exps.t_s{7}=DC_cP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{7}=[0 0;7.57460994 7.57460994];
inputs.exps.t_f{7}=inputs.exps.t_s{3}(1,inputs.exps.n_s{3});  % Experiments duration
inputs.exps.t_con{7}=[0 10];
inputs.exps.exp_data{7}=[DC_cP(:,2)   log10(10.^DC_cP(:,3)-10.^DC_cP(:,4))   DC_cP(:,4)];
inputs.exps.exp_data{7}(1,:)=[DC_cP(1,2) DC_cP(1,3) NaN ];


DD_cP=[0     5.704   7.24674471  6.79588002
        3    6.117   6.2380461   5.5563025
        5    5.962   6.26007139  4.60205999
        7    5.446   6.85672889  6.26481782
        10    6.636   6.0211893   5.49136169
]; %Dados_praticos_superficie_bactéria_na_alga_d

inputs.exps.exp_y0{8}=[DD_cP(1,2) DD_cP(1,3) 0 ];                        % Initial conditions for each experiment  
inputs.exps.n_s{8}=size(DD_cP,1);                               % Number of sampling times
inputs.exps.t_s{8}=DD_cP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{8}=[0 0;7.21484385 7.21484385];
inputs.exps.t_f{8}=inputs.exps.t_s{8}(1,inputs.exps.n_s{8});  % Experiments duration
inputs.exps.t_con{8}=[0 10];
inputs.exps.exp_data{8}=[DD_cP(:,2)   log10(10.^DD_cP(:,3)-10.^DD_cP(:,4))   DD_cP(:,4)];
inputs.exps.exp_data{8}(1,:)=[DD_cP(1,2) DD_cP(1,3) NaN];

%media
inputs.exps.n_exp=2;

Alga_sP=[DA_sP(:,2) DB_sP(:,2) DC_sP(:,2) DD_sP(:,2)];
Bacteria_sP = [DA_sP(:,3) DB_sP(:,3) DC_sP(:,3) DD_sP(:,3)];
Phaeo_sP = [DA_sP(:,4) DB_sP(:,4) DC_sP(:,4) DD_sP(:,4)];

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

Alga_cP=[DA_cP(:,2) DB_cP(:,2) DC_cP(:,2) DD_cP(:,2)];
Bacteria_cP=[DA_cP(:,3) DB_cP(:,3) DC_cP(:,3) DD_cP(:,3)];
Phaeo_cP = [DA_cP(:,4) DB_cP(:,4) DC_cP(:,4) DD_cP(:,4)];

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

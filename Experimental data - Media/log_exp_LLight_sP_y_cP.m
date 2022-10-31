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

LA_sP=[0     3.546   3.09691001  -40
    4     5.751   6.36361198  -40
    6     7.101   5.93785209  -40
]; %Dados_praticos_superficie_bactéria_na_alga_a

inputs.exps.exp_y0{1}=[LA_sP(1,2) LA_sP(1,3) -40];                        % Initial conditions for each experiment  
inputs.exps.n_s{1}=size(LA_sP,1);                               % Number of sampling times
inputs.exps.t_s{1}=LA_sP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{1}=[6 6;0 0];  % time at which Phaeobacter_A is inoculated/inoculation
inputs.exps.t_f{1}=inputs.exps.t_s{1}(1,inputs.exps.n_s{1});  % Experiments duration
inputs.exps.t_con{1}=[0 6];
inputs.exps.exp_data{1}=[LA_sP(:,2)   log10(10.^LA_sP(:,3)) LA_sP(:,4)];
inputs.exps.exp_data{1}(1,:)=[LA_sP(1,2) LA_sP(1,3) NaN];


LB_sP=[0     3.627   3.23044892  -40
    4     5.532   5.70757018  -40
    6     6.323   5.161368    -40
]; %Dados_praticos_superficie_bactéria_na_alga_b

inputs.exps.exp_y0{2}=[LB_sP(1,2) LB_sP(1,3) -40];                        % Initial conditions for each experiment  
inputs.exps.n_s{2}=size(LB_sP,1);                               % Number of sampling times
inputs.exps.t_s{2}=LB_sP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{2}=[6 6;0 0];
inputs.exps.t_f{2}=inputs.exps.t_s{2}(1,inputs.exps.n_s{2});  % Experiments duration
inputs.exps.t_con{2}=[0 6];
inputs.exps.exp_data{2}=[LB_sP(:,2)   log10(10.^LB_sP(:,3)) LB_sP(:,4)];
inputs.exps.exp_data{2}(1,:)=[LB_sP(1,2) LB_sP(1,3) NaN];


LC_sP=[0     4.162   2.69897     -40
    4     5.255   5.72263392  -40
    6     8.684   5.69897     -40
]; %Dados_praticos_superficie_bactéria_na_alga_c

inputs.exps.exp_y0{3}=[LC_sP(1,2) LC_sP(1,3) -40];                        % Initial conditions for each experiment  
inputs.exps.n_s{3}=size(LC_sP,1);                               % Number of sampling times
inputs.exps.t_s{3}=LC_sP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{3}=[6 6;0 0];
inputs.exps.t_f{3}=inputs.exps.t_s{3}(1,inputs.exps.n_s{3});  % Experiments duration
inputs.exps.t_con{3}=[0 6];
inputs.exps.exp_data{3}=[LC_sP(:,2)   log10(10.^LC_sP(:,3)) LC_sP(:,4)];
inputs.exps.exp_data{3}(1,:)=[LC_sP(1,2) LC_sP(1,3) NaN];


LD_sP=[0     3.995   2.47712125  -40
    4     6.188   6.33243846  -40
    6     8.182   5           -40
]; %Dados_praticos_superficie_bactéria_na_alga_d

inputs.exps.exp_y0{4}=[LD_sP(1,2) LD_sP(1,3) -40];                        % Initial conditions for each experiment  

inputs.exps.n_s{4}=size(LD_sP,1);                               % Number of sampling times
inputs.exps.t_s{4}=LD_sP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{4}=[6 6;0 0];
inputs.exps.t_f{4}=inputs.exps.t_s{4}(1,inputs.exps.n_s{4});  % Experiments duration
inputs.exps.t_con{4}=[0 6];
inputs.exps.exp_data{4}=[LD_sP(:,2)   log10(10.^LD_sP(:,3)) LD_sP(:,4)];
inputs.exps.exp_data{4}(1,:)=[LD_sP(1,2) LD_sP(1,3) NaN];



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Con Phaeobacter
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

LA_cP=[0     8.628   6.87506126  6.72427587
    3    17.414  6.30103     6.13672057
    5    13.277  6.1172713   5.74818803
    7    14.147  6.94448267  6.29336255
    10    17.811  6.88649073  5.86332286
]; %Dados_praticos_superficie_bactéria_na_alga_a

inputs.exps.exp_y0{5}=[LA_cP(1,2) LA_cP(1,3)  0 ];                        % Initial conditions for each experiment  
inputs.exps.n_s{5}=size(LA_cP,1);                               % Number of sampling times
inputs.exps.t_s{5}=LA_cP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{5}=[0 0;7.95904139 7.95904139];  % time at which phaeobacter is inoculated/inoculation
inputs.exps.t_f{5}=inputs.exps.t_s{5}(1,inputs.exps.n_s{5});  % Experiments duration
inputs.exps.t_con{5}=[0 10];
inputs.exps.exp_data{5}=[LA_cP(:,2)   log10(10.^LA_cP(:,3)-10.^LA_cP(:,4))     LA_cP(:,4)];
inputs.exps.exp_data{5}(1,:)=[LA_cP(1,2) LA_cP(1,3)  NaN ];


LB_cP=[0     12.27   7.59383966  7.5132176
    3    11.787  6.77815125  6.01703334
    5    15.323  6.49831055  5.47712125
    7    11.205  6.97312785  6.88081359
    10    14.961  6.91381385  6.18326984
]; %Dados_praticos_superficie_bactéria_na_alga_b

inputs.exps.exp_y0{6}=[LB_cP(1,2) LB_cP(1,3) 0 ];                        % Initial conditions for each experiment  
inputs.exps.n_s{6}=size(LB_cP,1);                               % Number of sampling times
inputs.exps.t_s{6}=LB_cP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{6}=[0 0;7.48287358 7.48287358];
inputs.exps.t_f{6}=inputs.exps.t_s{6}(1,inputs.exps.n_s{6});  % Experiments duration
inputs.exps.t_con{6}=[0 10];
inputs.exps.exp_data{6}=[LB_cP(:,2)   log10(10.^LB_cP(:,3)-10.^LB_cP(:,4))   LB_cP(:,4)];
inputs.exps.exp_data{6}(1,:)=[LB_cP(1,2) LB_cP(1,3) NaN ];


LC_cP=[0     11.087  7.47494434  7.39445168
    3    16.451  6.86332286  6.38021124
    5    14.67   5.96378783  5.47712125
    7    14.912  6.49136169  5.87506126
    10    19.316  6.24303805  4.47712125
]; %Dados_praticos_superficie_bactéria_na_alga_c

inputs.exps.exp_y0{7}=[LC_cP(1,2) LC_cP(1,3) 0 ];                        % Initial conditions for each experiment  

inputs.exps.n_s{7}=size(LC_cP,1);                               % Number of sampling times
inputs.exps.t_s{7}=LC_cP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{7}=[0 0;7.57460994 7.57460994];
inputs.exps.t_f{7}=inputs.exps.t_s{3}(1,inputs.exps.n_s{3});  % Experiments duration
inputs.exps.t_con{7}=[0 10];
inputs.exps.exp_data{7}=[LC_cP(:,2)   log10(10.^LC_cP(:,3)-10.^LC_cP(:,4))   LC_cP(:,4)];
inputs.exps.exp_data{7}(1,:)=[LC_cP(1,2) LC_cP(1,3) NaN ];


LD_cP=[0     12.562  7.19589965  7.10720997
    3    18.556  5.91381385  5.36172784
    5    16.999  6.45255306  5.32221929
    7    11.936  7.03342376  6.47421626
    10    18.293  6.60205999  5.56820172
]; %Dados_praticos_superficie_bactéria_na_alga_d

inputs.exps.exp_y0{8}=[LD_cP(1,2) LD_cP(1,3) 0 ];                        % Initial conditions for each experiment  
inputs.exps.n_s{8}=size(LD_cP,1);                               % Number of sampling times
inputs.exps.t_s{8}=LD_cP(:,1)';                         % [] Sampling times, by default equidistant                                                            
% inputs.exps.u{8}=[0 0;7.21484385 7.21484385];
inputs.exps.t_f{8}=inputs.exps.t_s{8}(1,inputs.exps.n_s{8});  % Experiments duration
inputs.exps.t_con{8}=[0 10];
inputs.exps.exp_data{8}=[LD_cP(:,2)   log10(10.^LD_cP(:,3)-10.^LD_cP(:,4))   LD_cP(:,4)];
inputs.exps.exp_data{8}(1,:)=[LD_cP(1,2) LD_cP(1,3) NaN];

%media
inputs.exps.n_exp=2;

Alga_sP=[LA_sP(:,2) LB_sP(:,2) LC_sP(:,2) LD_sP(:,2)];
Bacteria_sP = [LA_sP(:,3) LB_sP(:,3) LC_sP(:,3) LD_sP(:,3)];
Phaeo_sP = [LA_sP(:,4) LB_sP(:,4) LC_sP(:,4) LD_sP(:,4)];

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

Alga_cP=[LA_cP(:,2) LB_cP(:,2) LC_cP(:,2) LD_cP(:,2)];
Bacteria_cP=[LA_cP(:,3) LB_cP(:,3) LC_cP(:,3) LD_cP(:,3)];
Phaeo_cP = [LA_cP(:,4) LB_cP(:,4) LC_cP(:,4) LD_cP(:,4)];

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

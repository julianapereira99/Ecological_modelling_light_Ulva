%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TITLE:  Ecological modelling to describe the role of light on microbial
%        interactions in Ulva spp. with implications in aquaculture
% Author: E. Balsa-Canto & J. Pereira
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%============================
% RESULTS PATHS RELATED DATA
%============================
inputs.pathd.results_folder='Algae';    % Folder to keep results (in Results) for a given problem                       
inputs.pathd.short_name='Low_Light_sP_y_cP';              % To identify figures and reports for a given problem 
                                                % ADVISE: the user may introduce any names related to the problem at hand 
inputs.pathd.runident='r1';               % [] Identifier required in order not to overwrite previous results
                                                %    This may be modified from command line. 'run1'(default)
                                                    
%============================
% MODEL RELATED DATA
%============================

inputs.model.input_model_type='charmodelC';          % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|                        
                                                     %                     'blackboxmodel'|'blackboxcost                   
inputs.model.n_st=3;                                 % Number of states                                  
inputs.model.n_par=12;                               % Number of parameters                                  
inputs.model.n_stimulus=0;                           % Number of inputs, stimuli or control variables   
inputs.model.names_type='custom';                    % [] Names given to states/pars/inputs: 'standard' (x1,x2,...p1,p2...,u1, u2,...) 
                                                     %   ed                                    'custom'(default)
inputs.model.st_names=char('NA','NB','NP');          % Names of the states                                         
% inputs.model.stimulus_names=char('tinoc','NPinoc');                                         
inputs.model.par_names=char('muA','KA','aAB','aAP','muB','KB','aBA','aBP','muP','KP','aPA','aPB'); 
                         
inputs.model.eqns=...                                             % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
             char('dNA=muA*NA*(1-NA/KA+aAB*(10^NB)/KA-aAP*(10^NP)/KA)',...
                  'dNB=(1/log(10))*muB*(1-10^(NB-KB)+aBA*NA/10^KB-aBP*10^(NP-KB))',...
                  'dNP=(1/log(10))*muP*(1-10^(NP-KP)+aPA*NA/10^KP-aPB*10^(NB-KP));');           
                  
 inputs.model.par=zeros(1,12);  
% These values may be updated during optimization  

%==============================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================
 inputs.exps.n_exp=2;                                 % Number of experiments             


% log_exp_LLight_sP_y_cP
 llight

%==================================
% EXPERIMENTAL DATA RELATED INFO
%==================================
 inputs.exps.data_type='real';                         % Type of data: 'pseudo'|'pseudo_pos'|'real'             
 inputs.exps.noise_type='homo_var';                    % Experimental noise type: Homoscedastic: 'homo'|'homo_var'(default) 
 
  
 %==================================
 % UNKNOWNS RELATED DATA
 %==================================
 inputs.PEsol.init_steady_state='off';
 
 
inputs.PEsol.id_global_theta=char('muA','KA','aAB','muB','KB','aBA','aBP','muP','KP');
                                %Algae           %Bacteria        Phaeobacter
inputs.PEsol.global_theta_min=[0    0   -4   1.2    4.82   0    -5   0    0   ] ;
inputs.PEsol.global_theta_max=[2    30    10  3.5    10     0.1    5   5   10] ;
                                
                                
% inputs.PEsol.global_theta_min=[0    12    -4    1.2    4.82  0  -20   0   2    ] ;
% inputs.PEsol.global_theta_max=[2    30    1   3.5    10   1  10   5   10.02] ;

%Primera hipótesis - r1

inputs.PEsol.global_theta_guess(1)=5.9595e-06;      
inputs.PEsol.global_theta_guess(2)=5.6284;
inputs.PEsol.global_theta_guess(3)=-6.5621e-01 ;        
inputs.PEsol.global_theta_guess(4)=2.0592;          
inputs.PEsol.global_theta_guess(5)=5.7234;
inputs.PEsol.global_theta_guess(6)=10;          
inputs.PEsol.global_theta_guess(7)=-0.001;        
inputs.PEsol.global_theta_guess(8)=7.60597916e-01;  
inputs.PEsol.global_theta_guess(9)=8.01296535;
   

inputs.PEsol.global_theta_guess=results.fit.thetabest';
 %==================================
 % COST FUNCTION RELATED DATA
 %==================================       
 inputs.PEsol.PEcost_type='lsq';                       % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost' 
  
 inputs.PEsol.lsq_type='Q_expmax';
 inputs.PEsol.llk_type='homo_var';                     % [] To be defined for llk function, 'homo' | 'homo_var' | 'hetero' 
 
%==================================
% NUMERICAL METHODS RELATED DATA
%==================================

% SIMULATION
inputs.ivpsol.ivpsolver='cvodes';                     % [] IVP solver: 'cvodes'(default, C)|'ode15s' (default, MATLAB, sbml)|'ode113'|'ode45'
                                                       %                'lsodesst'|'lsoda'|
                                                       %                'ode15s' (default, MATLAB, sbml)|'ode113'
inputs.ivpsol.senssolver='cvodes';                    % [] Sensitivities solver: 'cvodes'(default, C)| 'sensmat'(matlab)|'fdsens2'|'fdsens5' 
                                                       %                          'sensmat' (matlab) |
                                                       %                          'fdsens2','fdsens5' (finite differences)
inputs.ivpsol.rtol=1.0D-7;                            % [] IVP solver integration tolerances
inputs.ivpsol.atol=1.0D-7; 
inputs.ivpsol.ivp_maxnumsteps=50000;
% OPTIMIZATION

inputs.nlpsol.nlpsolver='ess';                        % [] NLP solver: 
%multi_fminsearch
% local_fminsearch                                                      % LOCAL: 'local_fmincon'|'local_n2fb'|'local_dn2fb'|'local_dhc'|
%                                                       %        'local_ipopt'|'local_solnp'|'local_nomad'||'local_nl2sol'
%                                                       %        'local_lsqnonlin'
%                                                       % MULTISTART:'multi_fmincon'|'multi_n2fb'|'multi_dn2fb'|'multi_dhc'|
%                                                       %            'multi_ipopt'|'multi_solnp'|'multi_nomad'|'multi_nl2sol'
%                                                       %            'multi_lsqnonlin'
%                                                       % GLOBAL: 'de'|'sres'
%                                                       % HYBRID: 'hyb_de_fmincon'|'hyb_de_n2fb'|'hyb_de_dn2fb'|'hyb_de_dhc'|'hyp_de_ipopt'|
%                                                       %         'hyb_de_solnp'|'hyb_de_nomad'|
%                                                       %         'hyb_sres_fmincon'|'hyb_sres_n2fb'|'hyb_sres_dn2fb'|'hyb_sres_dhc'|
%                                                       %         'hyp_sres_ipopt'|'hyb_sres_solnp'|'hyb_sres_nomad'
%                                                       % METAHEURISTICS:
%                                                       % 'ess' or 'eSS' (default)
%                                                       % Note that the corresponding defaults are in files: 
%                                                       % OPT_solvers\DE\de_options.m; OPT_solvers\SRES\sres_options.m; 
%                                                       % OPT_solvers\eSS_**\ess_options.m
%                                                       
% inputs.nlpsol.eSS.log_var = [1:2 4:5 7:8];
inputs.nlpsol.eSS.maxeval = 100000;
inputs.nlpsol.eSS.maxtime = 300;
inputs.nlpsol.eSS.local.solver = 'dhc';
inputs.nlpsol.eSS.local.finish = 'fminsearch';
inputs.nlpsol.multi_starts=50; 
inputs.nlpsol.multistart.maxtime=600;
%==================================
% DISPLAY OF RESULTS
%==================================
% 
inputs.plotd.plotlevel='min';                        % [] Display of figures: 'full'|'medium'(default)|'min' |'noplot' 
inputs.plotd.figsave=1;
inputs.plotd.n_t_plot=200;
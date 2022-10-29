%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TITLE:  Ecological modelling to describe the role of light on microbial
%        interactions in Ulva spp. with implications in aquaculture
% Author: E. Balsa-Canto & J. Pereira
% 
% UPDATE EBC; The model is now used to fit 4 experiments simultaneously
%             with global parameters: muB, muP, KB, KP
%             with local pars: muA, KA and interactions
% Note that only algae is photosynthetic thus we assume that Bacteria and
% Phaeobacter do not change their growth rate or carrying capacity due to 
% light
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%============================
% RESULTS PATHS RELATED DATA
%============================
inputs.pathd.results_folder='Algae';    % Folder to keep results (in Results) for a given problem                       
inputs.pathd.short_name='DEFnewModel';              % To identify figures and reports for a given problem 
                                                % ADVISE: the user may introduce any names related to the problem at hand 
inputs.pathd.runident='H2_muAlight_DEF';               % [] Identifier required in order not to overwrite previous results
                                                %    This may be modified from command line. 'run1'(default)
                                                    
%============================
% MODEL RELATED DATA
%============================

inputs.model.input_model_type='charmodelC';          % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|                        
                                                     %                     'blackboxmodel'|'blackboxcost                   
inputs.model.n_st=3;                                 % Number of states                                  
inputs.model.n_par=8;                               % Number of parameters                                  
inputs.model.n_stimulus=0;                           % Number of inputs, stimuli or control variables   
inputs.model.names_type='custom';                    % [] Names given to states/pars/inputs: 'standard' (x1,x2,...p1,p2...,u1, u2,...) 
                                                     %   ed                                    'custom'(default)
inputs.model.st_names=char('NA','NB','NP');          % Names of the states                                         
% inputs.model.stimulus_names=char('tinoc','NPinoc');                                         
inputs.model.par_names=char('muA','KA','aAB','aAP','aBA','aBP','aPA','aPB'); 
                         
inputs.model.eqns=...                                             % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
             char('dNA=(1/log(10))*muA*(1-10^(NA-KA)-aAB*10^(NB)-aAP*10^(NP))',...
                  'dNB=(1/log(10))*(-aBA*10^(NA)-aBP*10^(NP))',...
                  'dNP=(1/log(10))*(-aPA*10^(NA)-aPB*10^(NB));');   % 10^7 normalization over pars         
                  
 inputs.model.par=[ 0.1 8.2 zeros(1,6) ];  

% These values may be updated during optimization  

%==============================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================
         
inputs.exps.n_exp=4;
nhlight
nmlight
nllight
ndlight

%==================================
% EXPERIMENTAL DATA RELATED INFO
%==================================
 inputs.exps.data_type='real';                         % Type of data: 'pseudo'|'pseudo_pos'|'real'             
 inputs.exps.noise_type='homo_var';                    % Experimental noise type: Homoscedastic: 'homo'|'homo_var'(default) 
 
  
 %==================================
 % UNKNOWNS RELATED DATA
 %==================================
 inputs.PEsol.init_steady_state='off';
 
 inputs.PEsol.id_global_theta=char('KA','aAB','aBA','aBP','aAP','aPB' ); 


                            
inputs.PEsol.global_theta_min=[ 6     -1e-6    -1e-7 -1e-7 -1e-6 -1e-7    ] ;
inputs.PEsol.global_theta_max=[ 8.25  1e-6    1e-7   1e-7    1e-7 1e-7   ] ;
%inputs.PEsol.global_theta_guess=[ results.fit.thetabest(1:6)' ];

j=6;
for iexp=1:inputs.exps.n_exp
    inputs.PEsol.id_local_theta{iexp}=char('muA');
    inputs.PEsol.local_theta_min{iexp}=[  1e-5 ]; 
    inputs.PEsol.local_theta_max{iexp}=[  0.075 ] ; 
  % inputs.PEsol.local_theta_guess{iexp}=[results.fit.thetabest(j+1)'];
    
    j=j+1;
end
    
%Note that algae do not grow in darkness therefore mu=0 

    inputs.PEsol.local_theta_min{4}=[  0   ]; 
    inputs.PEsol.local_theta_max{4}=[ 1e-7]; 

 %==================================
 % COST FUNCTION RELATED DATA
 %==================================       
 inputs.PEsol.PEcost_type='lsq';                        % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost' 
  
 inputs.PEsol.lsq_type='Q_I';
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
%inputs.nlpsol.eSS.log_var = find(results.fit.thetabest>0)';
inputs.nlpsol.eSS.maxeval = 100000;
inputs.nlpsol.eSS.maxtime = 200;
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
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
inputs.pathd.short_name='SplineModelflight';              % To identify figures and reports for a given problem 
                                                % ADVISE: the user may introduce any names related to the problem at hand 
inputs.pathd.runident='r1_clight_97_157';               % [] Identifier required in order not to overwrite previous results
                                                %    This may be modified from command line. 'run1'(default)
                                                    
%============================
% MODEL RELATED DATA
%============================

inputs.model.input_model_type='charmodelC';          % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|                        
                                                     %                     'blackboxmodel'|'blackboxcost                   
inputs.model.n_st=3;                                 % Number of states                                  
inputs.model.n_par=5;                               % Number of parameters                                  
inputs.model.n_stimulus=3;                           % Number of inputs, stimuli or control variables   
inputs.model.names_type='custom';                    % [] Names given to states/pars/inputs: 'standard' (x1,x2,...p1,p2...,u1, u2,...) 
                                                     %   ed                                    'custom'(default)
inputs.model.st_names=char('NA','NB','NP');          % Names of the states                                         
inputs.model.stimulus_names=char('muA','aBA','aPA');                                         
inputs.model.par_names=char('KA','aAB','aAP','aBP','aPB'); 
                         
inputs.model.eqns=...                                             % Equations describing system dynamics. Time derivatives are regarded 'd'st_name''
             char('dNA=(1/log(10))*muA*(1-10^(NA-KA)-aAB*10^(NB)-aAP*10^(NP))',...
                  'dNB=(1/log(10))*(-aBA*10^(NA)-aBP*10^(NP))',...
                  'dNP=(1/log(10))*(-aPA*10^(NA)-aPB*10^(NB));');   % 10^7 normalization over pars         
 

inputs.model.par=[8.264 7.913e-8 0.0 4.039e-9 3.801e-8];   % estimated from individual exp fitting


% These values may be updated during optimization  

%==============================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================

% USE for simulation for each integer value of clight between 0 and 224
clight=[115:1:130];
inputs.exps.n_exp=length(clight);
load muA_spline.mat
load aBA_spline.mat
load aPA_spline.mat
for iexp=1:inputs.exps.n_exp
 inputs.exps.exp_y0{iexp}=[ 7.8040  6.6277  7.1301];
 inputs.exps.u_interp{iexp}='sustained';          
 inputs.exps.t_f{iexp}=8*24; 
 inputs.exps.t_con{iexp}=[ 0 inputs.exps.t_f{iexp}];         %Experiment duration
 inputs.exps.u{iexp}(1,1)=muA_spline(clight(iexp));          %Values of the inputs for iexp
 inputs.exps.u{iexp}(2,1)=aBA_spline(clight(iexp));
 inputs.exps.u{iexp}(3,1)=aPA_spline(clight(iexp));
 
end

 
%==================================
% DISPLAY OF RESULTS
%==================================
% 
inputs.plotd.plotlevel='min';                        % [] Display of figures: 'full'|'medium'(default)|'min' |'noplot' 
inputs.plotd.figsave=1;
inputs.plotd.n_t_plot=200;

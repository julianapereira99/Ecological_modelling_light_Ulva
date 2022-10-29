% Darkness

 inputs.exps.n_obs{4}=3;                      % Number of observed quantities per experiment   
 inputs.exps.obs_names{4}=char('A','B','P');
 inputs.exps.obs{4}=char('A=NA','B=NB','P=NP'); 
 inputs.exps.u_interp{4}='sustained'; 



% Media_1 = [0 3.83250 2.8758625450 -40
%            4 5.68150 6.0315636350 -40
%            6 6.74900 5.4842263175 -40
%            ];
% 
% inputs.exps.exp_y0{4}=[Media_1(1,2) Media_1(1,3) Media_1(1,4)];                        % Initial conditions for each experiment  
% inputs.exps.n_s{4}=size(Media_1,1);                               % Number of sampling times
% inputs.exps.t_s{4}=Media_1(:,1)';                         % [] Sampling times, by default equidistant                                                            
% % inputs.exps.u{4}=[6 6;0 0];
% inputs.exps.t_f{4}=inputs.exps.t_s{4}(1,inputs.exps.n_s{4});  % Experiments duration
% inputs.exps.t_con{4}=[0 6];
% inputs.exps.exp_data{4}=[Media_1(:,2)   log10(10.^Media_1(:,3)) Media_1(:,4)];
% inputs.exps.exp_data{4}(1,:)=[Media_1(1,2) Media_1(1,3) Media_1(1,4)]; 
% inputs.exps.error_data{4}= [0.293989228827634 0.348749705822299 0
%                             0.393964888452427 0.365691623925969 0
%                             1.217948274763750 0.814714405003585 0];

Media_2 = [0  6.729750  6.8265997475  6.3792659675
           3  7.045750  6.3913277525  5.6346434325
           5  6.303000  6.2394297800  5.0510842675
           7  5.936000  6.5781935250  5.7077489900
           10 7.027000  6.4318999525  5.8584917300
           ];
       % Assume cells of 6 microm x 6 microm; 2 cells in thickness
       % Surface: (0.0006)^2 cm^2 =3.6e-7 cm2
       % cells: (2/3.6e-7) * surface cm2

inputs.exps.exp_y0{4}=[log10((2/3.6e-7)*Media_2(1,2)) log10(10.^Media_2(1,3)-10.^Media_2(1,4)) Media_2(1,4)];                        % Initial conditions for each experiment  
inputs.exps.n_s{4}=size(Media_2,1);                               % Number of sampling times
inputs.exps.t_s{4}=24*Media_2(:,1)';                         % [] Sampling times, by default equidistant                                                            
inputs.exps.t_f{4}=inputs.exps.t_s{4}(1,inputs.exps.n_s{4});  % Experiments duration
inputs.exps.t_con{4}=[0 inputs.exps.t_f{4}];
inputs.exps.exp_data{4}=[log10((2/3.6e-7).*Media_2(:,2))   log10(10.^Media_2(:,3)-10.^Media_2(:,4)) Media_2(:,4)];

inputs.exps.error_data{4}=[log10((2/3.6e-7)*0.780523061798945) 0.368899480818121 0.481390224840584
                           log10((2/3.6e-7)*0.862224013815436) 0.126661598838638 0.186257684086039
                           log10((2/3.6e-7)*0.902171823989200) 0.177263714024168 0.443780615605514
                           log10((2/3.6e-7)*0.983668982263173) 0.205236793240925 0.549922394319751
                           log10((2/3.6e-7)*0.359961109010404) 0.340143562812634 0.382572667786533];
inputs.exps.error_data{4}(1:5,1)=0.01*inputs.exps.exp_data{4}(1:5,1);

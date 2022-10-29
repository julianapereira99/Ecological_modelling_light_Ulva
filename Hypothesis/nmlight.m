% Medium light

 inputs.exps.n_obs{2}=3;                      % Number of observed quantities per experiment   
 inputs.exps.obs_names{2}=char('A','B','P');
 inputs.exps.obs{2}=char('A=NA','B=NB','P=NP'); 
 inputs.exps.exp_y0{2}=[0 0 0];                 % Initial conditions for each experiment       
 inputs.exps.u_interp{2}='sustained'; 



% Media_1 = [0 3.8325  2.875862545  -40
%            4 5.6815  6.031563635  -40
%            6 7.74075 5.8594262025 -40
%            ];
% 
% inputs.exps.exp_y0{2}=[Media_1(1,2) Media_1(1,3) Media_1(1,4)];                        % Initial conditions for each experiment  
% inputs.exps.n_s{2}=size(Media_1,1);                               % Number of sampling times
% inputs.exps.t_s{2}=Media_1(:,1)';                         % [] Sampling times, by default equidistant                                                            
% % inputs.exps.u{4}=[6 6;0 0];
% inputs.exps.t_f{2}=inputs.exps.t_s{2}(1,inputs.exps.n_s{2});  % Experiments duration
% inputs.exps.t_con{2}=[0 6];
% inputs.exps.exp_data{2}=[Media_1(:,2)   log10(10.^Media_1(:,3)) Media_1(:,4)];
% inputs.exps.exp_data{2}(1,:)=[Media_1(1,2) Media_1(1,3) Media_1(1,4)]; 
% inputs.exps.error_data{2}= [0.293989228827634 0.348749705822299 0
%                             0.393964888452427 0.365691623925969 0
%                             1.92294433530112  0.452107145584764 0];

Media_2 = [0  11.46225  7.248860715   7.1300954375
           3  17.80275  6.5877269425  5.903867045
           5  19.234    6.376437765   5.7437260325
           7  15.40325  6.644944365   6.0976162425
           10 22.145    6.84587858    5.3780476475
           ];

       
        % Assume cells of 6 microm x 6 microm; 2 cells in thickness
       % Surface: (0.0006)^2 cm^2 =3.6e-7 cm2
       % cells: (2/3.6e-7) * surface cm2
inputs.exps.exp_y0{2}=[log10((2/3.6e-7)*Media_2(1,2)) log10(10.^Media_2(1,3)-10.^Media_2(1,4)) Media_2(1,4)];                        % Initial conditions for each experiment  
inputs.exps.n_s{2}=size(Media_2,1);                               % Number of sampling times
inputs.exps.t_s{2}=24*Media_2(:,1)';                         % [] Sampling times, by default equidistant                                                            
inputs.exps.t_f{2}=inputs.exps.t_s{2}(1,inputs.exps.n_s{2});  % Experiments duration
inputs.exps.t_con{2}=[0 inputs.exps.t_f{2}];
inputs.exps.exp_data{2}=[log10((2/3.6e-7).*Media_2(:,2))   log10(10.^Media_2(:,3)-10.^Media_2(:,4)) Media_2(:,4)];

inputs.exps.error_data{2}=[log10((2/3.6e-7)*2.26782177062778) 0.130127369845116 0.181423933479256
                           log10((2/3.6e-7)*3.47063446409058) 0.211670145519833 0.664114370198905
                           log10((2/3.6e-7)*2.21119997588037) 0.221032768385169 0.327016088667354
                           log10((2/3.6e-7)*2.43616657544868) 0.187832657635041 0.360762021897489
                           log10((2/3.6e-7)*2.48541331237550) 0.183057996372672 0.658208386228423];
inputs.exps.error_data{2}(1:5,1)=0.01*inputs.exps.exp_data{2}(1:5,1);
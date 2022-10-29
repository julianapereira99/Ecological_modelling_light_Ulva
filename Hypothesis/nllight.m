%Low light

 inputs.exps.n_obs{3}=3;                      % Number of observed quantities per experiment   
 inputs.exps.obs_names{3}=char('A','B','P');
 inputs.exps.obs{3}=char('A=NA','B=NB','P=NP'); 
 inputs.exps.exp_y0{3}=[0 0 0];                 % Initial conditions for each experiment       
 inputs.exps.u_interp{3}='sustained'; 


% Media_1 = [0 3.83250 2.8758625450 -40
%            4 5.68150 6.0315636350 -40
%            6 7.57250 5.4495475225 -40
%            ];
% 
% inputs.exps.exp_y0{3}=[Media_1(1,2) Media_1(1,3) Media_1(1,4)];                        % Initial conditions for each experiment  
% inputs.exps.n_s{3}=size(Media_1,1);                               % Number of sampling times
% inputs.exps.t_s{3}=Media_1(:,1)';                         % [] Sampling times, by default equidistant                                                            
% % inputs.exps.u{4}=[6 6;0 0];
% inputs.exps.t_f{3}=inputs.exps.t_s{3}(1,inputs.exps.n_s{3});  % Experiments duration
% inputs.exps.t_con{3}=[0 6];
% inputs.exps.exp_data{3}=[Media_1(:,2)   log10(10.^Media_1(:,3)) Media_1(:,4)];
% inputs.exps.exp_data{3}(1,:)=[Media_1(1,2) Media_1(1,3) Media_1(1,4)]; 
% inputs.exps.error_data{3}= [0.293989228827634 0.348749705822299 0
%                             0.393964888452427 0.365691623925969 0
%                             1.063090620157410 0.441887366907683 0];


Media_2 = [0  11.13675  7.2849362275  7.1847887800
           3  16.05200  6.4640794900  5.9739232475
           5  15.06725  6.2579806850  5.5061624550
           7  13.05000  6.8605989925  6.3808634150
           10 17.59525  6.6613506550  5.5229789175
           ];

       % Assume cells of 6 microm x 6 microm; 2 cells in thickness
       % Surface: (0.0006)^2 cm^2 =3.6e-7 cm2
       % cells: (2/3.6e-7) * surface cm2
inputs.exps.exp_y0{3}=[log10((2/3.6e-7)*Media_2(1,2)) log10(10.^Media_2(1,3)-10.^Media_2(1,4)) Media_2(1,4)];                        % Initial conditions for each experiment  
inputs.exps.n_s{3}=size(Media_2,1);                               % Number of sampling times
inputs.exps.t_s{3}=24*Media_2(:,1)';                         % [] Sampling times, by default equidistant                                                            

inputs.exps.t_f{3}=inputs.exps.t_s{3}(1,inputs.exps.n_s{3});  % Experiments duration
inputs.exps.t_con{3}=[0 inputs.exps.t_f{3}];
inputs.exps.exp_data{3}=[log10((2/3.6e-7).*Media_2(:,2))   log10(10.^Media_2(:,3)-10.^Media_2(:,4)) Media_2(:,4)];

inputs.exps.error_data{3}=[log10((2/3.6e-7)*1.78996226682762) 0.320129877051036 0.351147942934165
                           log10((2/3.6e-7)*2.97066131806820) 0.442498116633402 0.435206693461968
                           log10((2/3.6e-7)*1.54486987046374) 0.259464461332818 0.177104724273523
                           log10((2/3.6e-7)*1.76214585094424) 0.248933592844949 0.417195858293007
                           log10((2/3.6e-7)*1.86490900135458) 0.312477485406891 0.741098613336273];
inputs.exps.error_data{3}(1:5,1)=0.01*inputs.exps.exp_data{3}(1:5,1);

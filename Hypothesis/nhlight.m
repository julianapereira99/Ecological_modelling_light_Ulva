% high light


 inputs.exps.n_obs{1}=3;                      % Number of observed quantities per experiment   
 inputs.exps.obs_names{1}=char('A','B','P');
 inputs.exps.obs{1}=char('A=NA','B=NB','P=NP'); 
 inputs.exps.exp_y0{1}=[0 0 0];                 % Initial conditions for each experiment       
 inputs.exps.u_interp{1}='sustained'; 



% Media_1 = [0 3.83250 2.875862545 -40
%            4 5.68150 6.031563635 -40
%            6 7.00225 6.012936985 -40
%            ];
% 
% inputs.exps.exp_y0{1}=[Media_1(1,2) Media_1(1,3) Media_1(1,4)];                        % Initial conditions for each experiment  
% inputs.exps.n_s{1}=size(Media_1,1);                               % Number of sampling times
% inputs.exps.t_s{1}=Media_1(:,1)';                         % [] Sampling times, by default equidistant                                                            
% % inputs.exps.u{4}=[6 6;0 0];
% inputs.exps.t_f{1}=inputs.exps.t_s{1}(1,inputs.exps.n_s{1});  % Experiments duration
% inputs.exps.t_con{1}=[0 6];
% inputs.exps.exp_data{1}=[Media_1(:,2)   log10(10.^Media_1(:,3)) Media_1(:,4)];
% inputs.exps.exp_data{1}(1,:)=[Media_1(1,2) Media_1(1,3) Media_1(1,4)]; 
% inputs.exps.error_data{1}= [0.293989228827634 0.348749705822299 0
%                             0.393964888452427 0.365691623925969 0
%                             0.925586435726021 0.473836429640946 0];

Media_2 = [0  11.96075  7.6823265675  7.5578421900
           3  15.16600  6.3751635000  6.1480531275
           5  18.02075  6.5086383250  5.6536512850
           7  19.29850  6.9751447050  5.6239989025
           10 21.29675  6.6134640475  5.1995244850
           ];
 % Assume cells of 6 microm x 6 microm; 2 cells in thickness
       % Surface: (0.0006)^2 cm^2 =3.6e-7 cm2
       % cells: (2/3.6e-7) * surface cm2
inputs.exps.exp_y0{1}=[log10((2/3.6e-7)*Media_2(1,2)) log10(10.^Media_2(1,3)-10.^Media_2(1,4)) Media_2(1,4)];                        % Initial conditions for each experiment  
inputs.exps.n_s{1}=size(Media_2,1);                               % Number of sampling times
inputs.exps.t_s{1}=24*Media_2(:,1)';                         % [] Sampling times, by default equidistant                                                            

inputs.exps.t_f{1}=inputs.exps.t_s{1}(1,inputs.exps.n_s{1});  % Experiments duration
inputs.exps.t_con{1}=[0 inputs.exps.t_f{1}];
inputs.exps.t_con{1}=[0 10];
inputs.exps.exp_data{1}=[log10((2/3.6e-7).*Media_2(:,2))   log10(10.^Media_2(:,3)-10.^Media_2(:,4)) Media_2(:,4)];

inputs.exps.error_data{1}=[log10((2/3.6e-7)*1.62630652604811) 0.344668258622313 0.307955683634724
                           log10((2/3.6e-7)*1.75626687417754) 0.229896139849137 0.278714196844127
                           log10((2/3.6e-7)*2.09980116122138) 0.467481221769593 0.552267526822330
                           log10((2/3.6e-7)*3.65286540494810) 0.220847494682127 0.456926407756301
                           log10((2/3.6e-7)*2.38682220745493) 0.166805145644148 0.919891103115386];
inputs.exps.error_data{1}(1:5,1)=0.01*inputs.exps.exp_data{1}(1:5,1);

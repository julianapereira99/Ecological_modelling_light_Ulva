   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2017a [March 2017]    *
   *********************************** 

Date: 11-Oct-2022
Problem folder:	 Results\Algae
Results folder in problem folder:	 Results\Algae\PE_DEFnewModel_ess_H1_muAlight_DEF 


-------------------------------
Optimisation related active settings
-------------------------------


------> Global Optimizer: Enhanced SCATTER SEARCH for parameter estimation

		>Summary of selected eSS options: 
ess_options.
	dim_refset:	'auto'
	inter_save:	0
	iterprint:	1
	local:	(1x1 struct)
	log_var:	(1x6 double)
	maxeval:	100000
	maxtime:	200
	ndiverse:	'auto'

		  default options are used. 


		>Bounds on the unknowns:

		v_guess(1)=8.261375;  v_min(1)=6.000000; v_max(1)=8.500000;
		v_guess(2)=0.000000;  v_min(2)=-0.000000; v_max(2)=0.000001;
		v_guess(3)=0.000000;  v_min(3)=-0.000000; v_max(3)=0.000001;
		v_guess(4)=0.000000;  v_min(4)=-0.000000; v_max(4)=0.000001;
		v_guess(5)=0.004685;  v_min(5)=0.000010; v_max(5)=0.100000;
		v_guess(6)=-0.000000;  v_min(6)=-0.000001; v_max(6)=0.000001;
		v_guess(7)=-0.000000;  v_min(7)=-0.000001; v_max(7)=0.000001;
		v_guess(8)=0.019774;  v_min(8)=0.000010; v_max(8)=0.100000;
		v_guess(9)=-0.000000;  v_min(9)=-0.000001; v_max(9)=0.000001;
		v_guess(10)=-0.000000;  v_min(10)=-0.000001; v_max(10)=0.000001;
		v_guess(11)=0.012129;  v_min(11)=0.000010; v_max(11)=0.100000;
		v_guess(12)=-0.000000;  v_min(12)=-0.000001; v_max(12)=0.000001;
		v_guess(13)=-0.000000;  v_min(13)=-0.000001; v_max(13)=0.000001;
		v_guess(14)=0.000000;  v_min(14)=0.000000; v_max(14)=0.000010;
		v_guess(15)=0.000000;  v_min(15)=-0.000000; v_max(15)=0.000000;
		v_guess(16)=-0.000000;  v_min(16)=-0.000000; v_max(16)=0.000000;



-----------------------------------------------
 Initial value problem related active settings
-----------------------------------------------
ivpsolver: cvodes
RelTol: 1e-07
AbsTol: 1e-07
MaxStepSize: Inf
MaxNumberOfSteps: 50000


---------------------------------------------------
Local sensitivity problem related active settings
---------------------------------------------------
senssolver: cvodes
ivp_RelTol: 1e-07
ivp_AbsTol: 1e-07
sensmex: cvodesg_DEFnewModel
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


-------------------------------
   Model related information
-------------------------------

--> Number of states: 3


--> Number of model parameters: 8

--> Vector of parameters (nominal values):

	par0=[   0.10000     8.20000     0.00000     0.00000     0.00000     0.00000     0.00000     0.00000  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 4


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[7.822e+00  7.079e+00  7.558e+00  ]
		Experiment 2: 
			exp_y0=[7.804e+00  6.628e+00  7.130e+00  ]
		Experiment 3: 
			exp_y0=[7.791e+00  6.599e+00  7.185e+00  ]
		Experiment 4: 
			exp_y0=[7.573e+00  6.635e+00  6.379e+00  ]

-->Final process time for each experiment: 
		Experiment 1: 	 240.000000

-->Final process time for each experiment: 
		Experiment 2: 	 240.000000

-->Final process time for each experiment: 
		Experiment 3: 	 240.000000

-->Final process time for each experiment: 
		Experiment 4: 	 240.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 5: 	 0.000e+00  7.200e+01  1.200e+02  1.680e+02  2.400e+02  

-->Sampling times for each experiment: 
		Experiment 2: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 5: 	 0.000e+00  7.200e+01  1.200e+02  1.680e+02  2.400e+02  

-->Sampling times for each experiment: 
		Experiment 3: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 5: 	 0.000e+00  7.200e+01  1.200e+02  1.680e+02  2.400e+02  

-->Sampling times for each experiment: 
		Experiment 4: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 5: 	 0.000e+00  7.200e+01  1.200e+02  1.680e+02  2.400e+02  

--> There is no manipulable (control, stimulus, input) variable, inputs.model.n_stimulus=0


-->Number of observables:
	Experiment 1: 3
	Experiment 2: 3
	Experiment 3: 3
	Experiment 4: 3

-->Observables:
		Experiment 1:
			A=NA
			B=NB
			P=NP
		Experiment 2:
			A=NA
			B=NB
			P=NP
		Experiment 3:
			A=NA
			B=NB
			P=NP
		Experiment 4:
			A=NA
			B=NB
			P=NP

-->Number of sampling times for each experiment:
		Experiment 1: 	 5
		Experiment 2: 	 5
		Experiment 3: 	 5
		Experiment 4: 	 5

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000    72.000   120.000   168.000   240.000  ]
		Experiment 2, 
			t_s=[   0.000    72.000   120.000   168.000   240.000  ]
		Experiment 3, 
			t_s=[   0.000    72.000   120.000   168.000   240.000  ]
		Experiment 4, 
			t_s=[   0.000    72.000   120.000   168.000   240.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		7.82249  7.0789  7.55784
		7.9256  5.985  6.14805
		8.0005  6.44332  5.65365
		8.03025  6.95535  5.624
		8.07304  6.59639  5.19952
		];

		
Experiment 2: 
		inputs.exp_data{2}=[
		7.804  6.62774  7.1301
		7.99521  6.48696  5.90387
		8.0288  6.26125  5.74373
		7.93234  6.50011  6.09762
		8.09  6.83083  5.37805
		];

		
Experiment 3: 
		inputs.exp_data{3}=[
		7.79149  6.59868  7.18479
		7.95026  6.29436  5.97392
		7.92276  6.17334  5.50616
		7.86034  6.68581  6.38086
		7.99012  6.62856  5.52298
		];

		
Experiment 4: 
		inputs.exp_data{4}=[
		7.57273  6.63481  6.37927
		7.59265  6.30772  5.63464
		7.54427  6.21033  5.05108
		7.51822  6.51533  5.70775
		7.5915  6.29697  5.85849
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 1.244371 %	 max error: 1.967839 %
		 Observable 2 --> mean error: 4.225436 %	 max error: 11.411398 %
		 Observable 3 --> mean error: 1.151543 %	 max error: 3.708476 %

		Experiment 2 : 
		 Observable 1 --> mean error: 0.797490 %	 max error: 2.458029 %
		 Observable 2 --> mean error: 1.724118 %	 max error: 3.743355 %
		 Observable 3 --> mean error: 1.742900 %	 max error: 3.710031 %

		Experiment 3 : 
		 Observable 1 --> mean error: 1.160942 %	 max error: 2.826711 %
		 Observable 2 --> mean error: 1.870736 %	 max error: 5.039007 %
		 Observable 3 --> mean error: 3.702232 %	 max error: 9.231482 %

		Experiment 4 : 
		 Observable 1 --> mean error: 0.322367 %	 max error: 0.724973 %
		 Observable 2 --> mean error: 1.796828 %	 max error: 3.960188 %
		 Observable 3 --> mean error: 2.957925 %	 max error: 5.882224 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.158864 max data: 8.073041
		 Observable 2 -->  max residual: 0.682972 max data: 7.078901
		 Observable 3 -->  max residual: 0.227999 max data: 7.557842

		Experiment 2 : 
		 Observable 1 -->  max residual: 0.194979 max data: 8.090003
		 Observable 2 -->  max residual: 0.255702 max data: 6.830831
		 Observable 3 -->  max residual: 0.213094 max data: 7.130095

		Experiment 3 : 
		 Observable 1 -->  max residual: 0.222189 max data: 7.990123
		 Observable 2 -->  max residual: 0.336898 max data: 6.685809
		 Observable 3 -->  max residual: 0.508300 max data: 7.184789

		Experiment 4 : 
		 Observable 1 -->  max residual: 0.054505 max data: 7.592655
		 Observable 2 -->  max residual: 0.245941 max data: 6.634812
		 Observable 3 -->  max residual: 0.297116 max data: 6.379266

--------------------------------------------------------------------------	   

>>>> Best objective function: 1.959082 
	   

>>>> Computational cost: 215.457098 s
> 98.71% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	KA  = 8.26427129e+00  +-  3.63412402e-04 (  0.0044%); 
	aBP = 4.03939958e-09  +-  1.52491205e-02 (3.78e+08%); 
	aPB = 3.80073931e-08  +-  8.13453354e-09 (    21.4%); 
	aAB = 7.91315216e-08  +-  2.99407105e-12 ( 0.00378%); 


>>> Estimated local parameters: 

	Experiment 1, muA = 4.64954645e-03  +-  1.76986122e-01 (3.81e+03%); 
	Experiment 1, aBA = -3.98589751e-11  +-  1.24481304e+01 (-3.12e+13%); 
	Experiment 1, aPA = -2.31952316e-09  +-  2.48829028e-06 (-1.07e+05%); 
	Experiment 2, muA = 1.96170517e-02  +-  7.00478630e-02 (     357%); 
	Experiment 2, aBA = -4.73900457e-11  +-  2.76157348e+00 (-5.83e+12%); 
	Experiment 2, aPA = -7.62274254e-10  +-  1.63347910e-06 (-2.14e+05%); 
	Experiment 3, muA = 1.20592016e-02  +-  6.69664644e-02 (     555%); 
	Experiment 3, aBA = -5.94182909e-11  +-  4.04141465e+00 (-6.8e+12%); 
	Experiment 3, aPA = -6.71864432e-10  +-  2.93023475e-06 (-4.36e+05%); 
	Experiment 4, muA = 3.70784655e-11  +-  5.83891569e+01 (1.57e+14%); (active bound) 
	Experiment 4, aBA = 2.79153731e-11  +-  2.67699238e+12 (9.59e+24%); 
	Experiment 4, aPA = -2.86333371e-09  +-  1.24516481e+05 (-4.35e+15%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 4.790877e-01	 -6.765578e-01	 -7.487791e-01
	 4.790877e-01	 1.000000e+00	 -6.725934e-01	 -7.912426e-01
	 -6.765578e-01	 -6.725934e-01	 1.000000e+00	 9.734110e-01
	 -7.487791e-01	 -7.912426e-01	 9.734110e-01	 1.000000e+00


>>> Correlation matrix for the experiment 1

	 1.000000e+00	 -1.598035e-01	 4.451993e-01	 6.238037e-01	 -8.641998e-01	 8.917547e-01	 -9.150097e-01
	 -1.598035e-01	 1.000000e+00	 8.114636e-01	 -7.100631e-01	 1.784954e-01	 -1.115107e-01	 6.828588e-02
	 4.451993e-01	 8.114636e-01	 1.000000e+00	 -2.738331e-01	 -3.452434e-01	 4.147463e-01	 -4.709312e-01
	 6.238037e-01	 -7.100631e-01	 -2.738331e-01	 1.000000e+00	 -7.783098e-01	 6.243337e-01	 -6.481232e-01
	 -8.641998e-01	 1.784954e-01	 -3.452434e-01	 -7.783098e-01	 1.000000e+00	 -8.884167e-01	 9.466808e-01
	 8.917547e-01	 -1.115107e-01	 4.147463e-01	 6.243337e-01	 -8.884167e-01	 1.000000e+00	 -9.844016e-01
	 -9.150097e-01	 6.828588e-02	 -4.709312e-01	 -6.481232e-01	 9.466808e-01	 -9.844016e-01	 1.000000e+00


>>> Correlation matrix for the experiment 2

	 1.000000e+00	 7.330143e-01	 7.892331e-01	 6.911484e-01	 -6.245932e-01	 6.682893e-01	 -6.749682e-01
	 7.330143e-01	 1.000000e+00	 9.929918e-01	 3.578394e-01	 -6.077966e-01	 7.962322e-01	 -8.373468e-01
	 7.892331e-01	 9.929918e-01	 1.000000e+00	 3.913355e-01	 -6.178865e-01	 7.817883e-01	 -8.272370e-01
	 6.911484e-01	 3.578394e-01	 3.913355e-01	 1.000000e+00	 -8.353799e-01	 5.771081e-01	 -6.305522e-01
	 -6.245932e-01	 -6.077966e-01	 -6.178865e-01	 -8.353799e-01	 1.000000e+00	 -7.103009e-01	 8.468026e-01
	 6.682893e-01	 7.962322e-01	 7.817883e-01	 5.771081e-01	 -7.103009e-01	 1.000000e+00	 -9.641965e-01
	 -6.749682e-01	 -8.373468e-01	 -8.272370e-01	 -6.305522e-01	 8.468026e-01	 -9.641965e-01	 1.000000e+00


>>> Correlation matrix for the experiment 3

	 1.000000e+00	 7.971017e-01	 8.741909e-01	 5.655029e-01	 -6.188900e-01	 7.247294e-01	 -7.403890e-01
	 7.971017e-01	 1.000000e+00	 9.878859e-01	 2.476042e-01	 -5.476321e-01	 7.196847e-01	 -7.700385e-01
	 8.741909e-01	 9.878859e-01	 1.000000e+00	 3.169685e-01	 -5.779864e-01	 7.296005e-01	 -7.801688e-01
	 5.655029e-01	 2.476042e-01	 3.169685e-01	 1.000000e+00	 -8.390682e-01	 6.344976e-01	 -6.774928e-01
	 -6.188900e-01	 -5.476321e-01	 -5.779864e-01	 -8.390682e-01	 1.000000e+00	 -7.544774e-01	 8.807413e-01
	 7.247294e-01	 7.196847e-01	 7.296005e-01	 6.344976e-01	 -7.544774e-01	 1.000000e+00	 -9.636317e-01
	 -7.403890e-01	 -7.700385e-01	 -7.801688e-01	 -6.774928e-01	 8.807413e-01	 -9.636317e-01	 1.000000e+00


>>> Correlation matrix for the experiment 4

	 1.000000e+00	 -9.999998e-01	 -9.999983e-01	 7.875134e-01	 -8.450037e-01	 9.360153e-01	 -9.539235e-01
	 -9.999998e-01	 1.000000e+00	 9.999992e-01	 -7.876179e-01	 8.450925e-01	 -9.360413e-01	 9.539429e-01
	 -9.999983e-01	 9.999992e-01	 1.000000e+00	 -7.878465e-01	 8.452888e-01	 -9.361264e-01	 9.540027e-01
	 7.875134e-01	 -7.876179e-01	 -7.878465e-01	 1.000000e+00	 -9.907498e-01	 9.096091e-01	 -9.136835e-01
	 -8.450037e-01	 8.450925e-01	 8.452888e-01	 -9.907498e-01	 1.000000e+00	 -9.339583e-01	 9.437361e-01
	 9.360153e-01	 -9.360413e-01	 -9.361264e-01	 9.096091e-01	 -9.339583e-01	 1.000000e+00	 -9.966220e-01
	 -9.539235e-01	 9.539429e-01	 9.540027e-01	 -9.136835e-01	 9.437361e-01	 -9.966220e-01	 1.000000e+00

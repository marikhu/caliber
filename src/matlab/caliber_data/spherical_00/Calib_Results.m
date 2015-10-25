% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly excecuted under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 14213.113376244333000 ; 14267.348884552130000 ];

%-- Principal point:
cc = [ 2367.966011693903100 ; 1763.723875033040000 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.306159368661167 ; 10.301783336915831 ; 0.000000000000000 ; 0.000000000000000 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 154.656982805066410 ; 110.308248210387890 ];

%-- Principal point uncertainty:
cc_error = [ 102.587951746572120 ; 159.869811358689080 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.132111272544082 ; 9.982394496390894 ; 0.000000000000000 ; 0.000000000000000 ; 0.000000000000000 ];

%-- Image size:
nx = 4770;
ny = 3177;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 24;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 0 ; 0 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 1.663322e-002 ; 2.104251e+000 ; 5.598901e-003 ];
Tc_1  = [ 3.471130e+001 ; -4.241571e+001 ; 5.445309e+002 ];
omc_error_1 = [ 6.895622e-003 ; 7.683008e-003 ; 1.184484e-002 ];
Tc_error_1  = [ 3.936160e+000 ; 6.107091e+000 ; 3.957855e+000 ];

%-- Image #2:
omc_2 = [ 1.857700e-002 ; 2.627926e+000 ; 8.856476e-003 ];
Tc_2  = [ 3.987960e+001 ; -4.247557e+001 ; 5.262750e+002 ];
omc_error_2 = [ 4.042749e-003 ; 1.024516e-002 ; 1.499835e-002 ];
Tc_error_2  = [ 3.801463e+000 ; 5.902407e+000 ; 4.034351e+000 ];

%-- Image #3:
omc_3 = [ -1.456439e-002 ; -2.608658e+000 ; 3.211684e-003 ];
Tc_3  = [ 2.155717e+001 ; -4.223482e+001 ; 4.941377e+002 ];
omc_error_3 = [ 4.094090e-003 ; 1.019741e-002 ; 1.477755e-002 ];
Tc_error_3  = [ 3.571134e+000 ; 5.538183e+000 ; 3.766404e+000 ];

%-- Image #4:
omc_4 = [ -1.033814e-002 ; -2.085651e+000 ; 1.831316e-003 ];
Tc_4  = [ 3.209905e+000 ; -4.206681e+001 ; 4.890134e+002 ];
omc_error_4 = [ 6.940140e-003 ; 7.691729e-003 ; 1.172848e-002 ];
Tc_error_4  = [ 3.534674e+000 ; 5.479115e+000 ; 3.889036e+000 ];

%-- Image #5:
omc_5 = [ -1.068964e+000 ; 1.887305e+000 ; -6.137372e-001 ];
Tc_5  = [ 3.928996e+001 ; -7.399725e-001 ; 5.535181e+002 ];
omc_error_5 = [ 7.693591e-003 ; 7.004809e-003 ; 1.229927e-002 ];
Tc_error_5  = [ 3.999718e+000 ; 6.208516e+000 ; 4.041293e+000 ];

%-- Image #6:
omc_6 = [ -1.325234e+000 ; 2.333391e+000 ; -3.399573e-001 ];
Tc_6  = [ 4.749872e+001 ; -7.920726e-001 ; 5.319376e+002 ];
omc_error_6 = [ 6.567216e-003 ; 8.316791e-003 ; 1.616577e-002 ];
Tc_error_6  = [ 3.842191e+000 ; 5.966941e+000 ; 4.114556e+000 ];

%-- Image #7:
omc_7 = [ 1.321226e+000 ; -2.318218e+000 ; -3.481309e-001 ];
Tc_7  = [ 2.904067e+001 ; -5.696034e-001 ; 4.921337e+002 ];
omc_error_7 = [ 7.266031e-003 ; 8.757028e-003 ; 1.481805e-002 ];
Tc_error_7  = [ 3.554000e+000 ; 5.516119e+000 ; 3.789356e+000 ];

%-- Image #8:
omc_8 = [ 1.068217e+000 ; -1.870711e+000 ; -6.202448e-001 ];
Tc_8  = [ 7.536098e+000 ; -3.557723e-001 ; 4.833718e+002 ];
omc_error_8 = [ 8.004446e-003 ; 6.954355e-003 ; 1.185847e-002 ];
Tc_error_8  = [ 3.489475e+000 ; 5.415393e+000 ; 3.914199e+000 ];

%-- Image #9:
omc_9 = [ -2.040096e+000 ; 1.197981e+000 ; -1.172386e+000 ];
Tc_9  = [ 2.316474e+001 ; 2.744747e+001 ; 5.249913e+002 ];
omc_error_9 = [ 9.514607e-003 ; 6.028826e-003 ; 1.241598e-002 ];
Tc_error_9  = [ 3.791831e+000 ; 5.884790e+000 ; 4.055495e+000 ];

%-- Image #10:
omc_10 = [ -2.432809e+000 ; 1.426846e+000 ; -6.430522e-001 ];
Tc_10  = [ 1.973770e+001 ; 2.740414e+001 ; 5.152342e+002 ];
omc_error_10 = [ 9.893268e-003 ; 4.026123e-003 ; 1.666660e-002 ];
Tc_error_10  = [ 3.719006e+000 ; 5.775572e+000 ; 4.029956e+000 ];

%-- Image #11:
omc_11 = [ 2.429182e+000 ; -1.420392e+000 ; -6.561490e-001 ];
Tc_11  = [ 1.530645e+000 ; 2.755294e+001 ; 5.076928e+002 ];
omc_error_11 = [ 1.114331e-002 ; 4.224891e-003 ; 1.501373e-002 ];
Tc_error_11  = [ 3.663007e+000 ; 5.689660e+000 ; 3.954228e+000 ];

%-- Image #12:
omc_12 = [ 2.035885e+000 ; -1.187230e+000 ; -1.183652e+000 ];
Tc_12  = [ -8.165835e+000 ; 2.766037e+001 ; 5.109181e+002 ];
omc_error_12 = [ 1.007589e-002 ; 5.815610e-003 ; 1.181181e-002 ];
Tc_error_12  = [ 3.687720e+000 ; 5.724940e+000 ; 3.995939e+000 ];

%-- Image #13:
omc_13 = [ -2.719945e+000 ; 1.999152e-002 ; -1.559691e+000 ];
Tc_13  = [ 2.566584e+000 ; 1.409139e+001 ; 4.895664e+002 ];
omc_error_13 = [ 9.460101e-003 ; 8.931745e-003 ; 1.230515e-002 ];
Tc_error_13  = [ 3.535327e+000 ; 5.485059e+000 ; 3.962112e+000 ];

%-- Image #14:
omc_14 = [ -3.029451e+000 ; 2.030360e-002 ; -8.019803e-001 ];
Tc_14  = [ -1.552719e+001 ; 1.407478e+001 ; 4.949595e+002 ];
omc_error_14 = [ 1.051216e-002 ; 4.642492e-003 ; 1.641918e-002 ];
Tc_error_14  = [ 3.574478e+000 ; 5.545836e+000 ; 3.851882e+000 ];

%-- Image #15:
omc_15 = [ -3.033602e+000 ; 1.758239e-002 ; 8.207141e-001 ];
Tc_15  = [ -3.341075e+001 ; 1.407283e+001 ; 5.266490e+002 ];
omc_error_15 = [ 1.120408e-002 ; 4.803820e-003 ; 1.591453e-002 ];
Tc_error_15  = [ 3.802411e+000 ; 5.904145e+000 ; 4.100155e+000 ];

%-- Image #16:
omc_16 = [ -2.717085e+000 ; 1.497343e-002 ; 1.576920e+000 ];
Tc_16  = [ -2.819026e+001 ; 1.406992e+001 ; 5.448369e+002 ];
omc_error_16 = [ 1.061722e-002 ; 9.068721e-003 ; 1.126465e-002 ];
Tc_error_16  = [ 3.935378e+000 ; 6.108212e+000 ; 4.032080e+000 ];

%-- Image #17:
omc_17 = [ 2.063390e+000 ; 1.172124e+000 ; 1.175395e+000 ];
Tc_17  = [ -1.941064e+000 ; -2.763519e+001 ; 4.837564e+002 ];
omc_error_17 = [ 1.128101e-002 ; 5.098833e-003 ; 1.047420e-002 ];
Tc_error_17  = [ 3.495593e+000 ; 5.418990e+000 ; 3.885573e+000 ];

%-- Image #18:
omc_18 = [ 2.458990e+000 ; 1.398565e+000 ; 6.370056e-001 ];
Tc_18  = [ -2.316946e+001 ; -2.766387e+001 ; 4.927723e+002 ];
omc_error_18 = [ 1.209694e-002 ; 4.115912e-003 ; 1.376493e-002 ];
Tc_error_18  = [ 3.562087e+000 ; 5.522296e+000 ; 3.751787e+000 ];

%-- Image #19:
omc_19 = [ -2.443017e+000 ; -1.390819e+000 ; 6.452670e-001 ];
Tc_19  = [ -4.101207e+001 ; -2.768589e+001 ; 5.322557e+002 ];
omc_error_19 = [ 1.097913e-002 ; 3.923848e-003 ; 1.544356e-002 ];
Tc_error_19  = [ 3.847739e+000 ; 5.968591e+000 ; 4.089309e+000 ];

%-- Image #20:
omc_20 = [ -2.046469e+000 ; -1.165337e+000 ; 1.180397e+000 ];
Tc_20  = [ -3.263971e+001 ; -2.770986e+001 ; 5.536739e+002 ];
omc_error_20 = [ 1.079332e-002 ; 5.395999e-003 ; 1.109050e-002 ];
Tc_error_20  = [ 4.004110e+000 ; 6.207486e+000 ; 4.022351e+000 ];

%-- Image #21:
omc_21 = [ 1.097485e+000 ; 1.871965e+000 ; 6.201156e-001 ];
Tc_21  = [ 1.420500e+001 ; -5.588057e+001 ; 5.107086e+002 ];
omc_error_21 = [ 8.829610e-003 ; 6.540515e-003 ; 1.114880e-002 ];
Tc_error_21  = [ 3.691951e+000 ; 5.723753e+000 ; 3.908182e+000 ];

%-- Image #22:
omc_22 = [ 1.354811e+000 ; 2.311707e+000 ; 3.444928e-001 ];
Tc_22  = [ 4.683966e+000 ; -5.590662e+001 ; 5.074992e+002 ];
omc_error_22 = [ 7.958130e-003 ; 8.845829e-003 ; 1.393033e-002 ];
Tc_error_22  = [ 3.668029e+000 ; 5.687711e+000 ; 3.858596e+000 ];

%-- Image #23:
omc_23 = [ -1.343060e+000 ; -2.295711e+000 ; 3.454050e-001 ];
Tc_23  = [ -1.335308e+001 ; -5.581930e+001 ; 5.151726e+002 ];
omc_error_23 = [ 7.405255e-003 ; 8.405924e-003 ; 1.503470e-002 ];
Tc_error_23  = [ 3.724626e+000 ; 5.774421e+000 ; 3.929000e+000 ];

%-- Image #24:
omc_24 = [ -1.084455e+000 ; -1.856738e+000 ; 6.199695e-001 ];
Tc_24  = [ -1.681479e+001 ; -5.574576e+001 ; 5.248037e+002 ];
omc_error_24 = [ 8.606372e-003 ; 6.634661e-003 ; 1.143863e-002 ];
Tc_error_24  = [ 3.796109e+000 ; 5.882037e+000 ; 3.972243e+000 ];

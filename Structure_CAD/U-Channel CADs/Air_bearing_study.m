function out = model
%
% Air_bearing_study.m
%
% Model exported on Jan 9 2024, 23:43 by COMSOL 6.2.0.290.

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('C:\Users\booni\Desktop\Helmholtz-cage\Structure_CAD\U-Channel CADs');

model.component.create('comp1', true);

model.component('comp1').geom.create('geom1', 3);

model.component('comp1').mesh.create('mesh1');

model.component('comp1').physics.create('mf', 'InductionCurrents', 'geom1');
model.component('comp1').physics.create('mfnc', 'MagnetostaticsNoCurrents', 'geom1');

model.component('comp1').geom('geom1').create('imp1', 'Import');
model.component('comp1').geom('geom1').feature('imp1').label('Air Bearing Top');
model.component('comp1').geom('geom1').feature('imp1').set('type', 'cad');
model.component('comp1').geom('geom1').feature('imp1').set('filename', 'C:\Users\booni\Desktop\Helmholtz-cage\Structure_CAD\A-651.045_PIGLIDE HB SPHERICAL AIR BRG, 50MM DIA, 45DEG.STEP');
model.component('comp1').geom('geom1').feature('imp1').importData;
model.component('comp1').geom('geom1').feature('imp1').set('knit', 'solid');
model.component('comp1').geom('geom1').run;

model.component('comp1').physics('mf').create('mfb1', 'MagneticFieldBoundary', 2);
model.component('comp1').physics('mf').feature('mfb1').label('Magnetic Field ');
model.component('comp1').physics('mf').feature('mfb1').set('H0', [1 1 1]);

model.component('comp1').material.create('mat1', 'Common');
model.component('comp1').material('mat1').propertyGroup.create('BHCurve', 'B-H Curve');
model.component('comp1').material('mat1').propertyGroup('BHCurve').func.create('BH', 'Interpolation');
model.component('comp1').material('mat1').label('Stainless Steel 430 Annealed');
model.component('comp1').material('mat1').propertyGroup('def').set('electricconductivity', {'1.74[MS/m]' '0' '0' '0' '1.74[MS/m]' '0' '0' '0' '1.74[MS/m]'});
model.component('comp1').material('mat1').propertyGroup('def').set('relpermittivity', {'1[1]' '0' '0' '0' '1[1]' '0' '0' '0' '1[1]'});
model.component('comp1').material('mat1').propertyGroup('BHCurve').label('B-H Curve');
model.component('comp1').material('mat1').propertyGroup('BHCurve').func('BH').label('Interpolation 1');
model.component('comp1').material('mat1').propertyGroup('BHCurve').func('BH').set('table', {'0' '0';  ...
'53.0513333333333' '0.0335543209876543';  ...
'106.102666666667' '0.0680345679012346';  ...
'159.154' '0.104366666666667';  ...
'212.205333333333' '0.143476543209877';  ...
'265.256666666667' '0.18629012345679';  ...
'318.308' '0.233733333333333';  ...
'371.850549382716' '0.286501234567901';  ...
'428.340395061728' '0.344365432098765';  ...
'490.724833333333' '0.406866666666667';  ...
'561.951160493827' '0.473545679012346';  ...
'644.966672839506' '0.543943209876543';  ...
'742.718666666667' '0.6176';  ...
'858.891262345679' '0.693887962962963';  ...
'1000.11587654321' '0.771503703703704';  ...
'1173.76075' '0.848975';  ...
'1387.19412345679' '0.924829629629629';  ...
'1647.78423765432' '0.99759537037037';  ...
'1962.89933333333' '1.0658';  ...
'2336.96035493827' '1.12822608024691';  ...
'2762.59906172839' '1.18467530864198';  ...
'3229.49991666666' '1.23520416666667';  ...
'3727.34738271604' '1.27986913580247';  ...
'4245.8259228395' '1.31872669753086';  ...
'4774.61999999999' '1.35183333333333';  ...
'5321.92441804783' '1.37948962037037';  ...
'5969.97534438271' '1.40297251851852';  ...
'6819.51928729166' '1.42380308333333';  ...
'7971.30275506172' '1.44350237037037';  ...
'9526.07225597993' '1.46359143518519';  ...
'11584.5742983333' '1.48559133333333';  ...
'14240.7775913426' '1.51061209953704';  ...
'17561.539647963' '1.53811968518519';  ...
'21606.9401820834' '1.56716902083333';  ...
'26437.0589075926' '1.59681503703704';  ...
'32111.9755383797' '1.62611266435185';  ...
'38691.7697883334' '1.65411683333333';  ...
'46206.1981134415' '1.68007650308642';  ...
'54563.7239380866' '1.70401674691358';  ...
'63642.4874287502' '1.72615666666667';  ...
'73320.6287519138' '1.74671536419753';  ...
'83476.2880740588' '1.76591194135802';  ...
'93987.6055616669' '1.7839655';  ...
'104815.614212284' '1.80117155092593';  ...
'116252.918347716' '1.81813124074074';  ...
'128675.015120834' '1.835522125';  ...
'142457.401684507' '1.85402175925926';  ...
'157975.575191605' '1.87430769907407';  ...
'175605.032795001' '1.8970575';  ...
'195492.549143944' '1.92262369117514';  ...
'216870.00887321' '1.95005869606775';  ...
'238740.574113959' '1.97808991172865';  ...
'260107.406997346' '2.00544473520866';  ...
'279973.66965453' '2.03085056355857';  ...
'297342.524216667' '2.05303479382921';  ...
'311922.429292053' '2.07161731474393';  ...
'326243.029397531' '2.08978798171619';  ...
'343539.265527083' '2.11162914183203';  ...
'367046.078674691' '2.14122314217745';  ...
'399998.409834336' '2.18265232983848';  ...
'445631.199999999' '2.23999905190114';  ...
'506198.138888888' '2.31610971200689';  ...
'580027.91111111' '2.408886940019';  ...
'664467.949999998' '2.51499742235622';  ...
'756865.688888886' '2.63110784543725';  ...
'854568.561111108' '2.75388489568083';  ...
'954924' '2.87999525950569'});
model.component('comp1').material('mat1').propertyGroup('BHCurve').func('BH').set('extrap', 'linear');
model.component('comp1').material('mat1').propertyGroup('BHCurve').func('BH').set('fununit', {'T'});
model.component('comp1').material('mat1').propertyGroup('BHCurve').func('BH').set('argunit', {'A/m'});
model.component('comp1').material('mat1').propertyGroup('BHCurve').func('BH').set('defineinv', true);
model.component('comp1').material('mat1').propertyGroup('BHCurve').func('BH').set('defineprimfun', true);
model.component('comp1').material('mat1').propertyGroup('BHCurve').set('normB', 'BH(normHin)');
model.component('comp1').material('mat1').propertyGroup('BHCurve').set('normH', 'BH_inv(normBin)');
model.component('comp1').material('mat1').propertyGroup('BHCurve').set('Wpm', 'BH_prim(normHin)');
model.component('comp1').material('mat1').propertyGroup('BHCurve').descr('normHin', 'Magnetic field norm');
model.component('comp1').material('mat1').propertyGroup('BHCurve').descr('normBin', 'Magnetic flux density norm');
model.component('comp1').material('mat1').propertyGroup('BHCurve').addInput('magneticfield');
model.component('comp1').material('mat1').propertyGroup('BHCurve').addInput('magneticfluxdensity');

model.component('comp1').physics('mf').feature('mfb1').create('hp1', 'HarmonicPerturbation', 2);
model.component('comp1').physics('mf').feature('mfb1').feature.remove('hp1');
model.component('comp1').physics('mf').feature('mfb1').selection.set([49 54 55 56 58 59 60 61 67 73 74 75 76 77 78 79 90 91 92 93 94 95 98 99 100 104 105 115 129 130 133 136]);

model.component('comp1').material.create('mat2', 'Common');
model.component('comp1').material('mat2').label('Aluminum [solid,grit blasted black anodized]');
model.component('comp1').material('mat2').propertyGroup('def').set('resistivity', 'res_solid_1(T)');
model.component('comp1').material('mat2').propertyGroup('def').set('INFO_PREFIX:resistivity', ['Reference: P.D. Desai, H.M. James, and C.Y. Ho, Journal of Physical and Chemical Reference Data, v13, No. 4, p1131 (1984) https://srd.nist.gov/JPCRD/jpcrd260.pdf' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), data below -233.1 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (40 K) is for Al with a residual resistivity of 1 x 10{' native2unicode(hex2dec({'00' 'b9'}), 'unicode')  native2unicode(hex2dec({'00' 'b2'}), 'unicode') ' ohm-m, not corrected for thermal expansion, > 99.9 (wt%)']);
model.component('comp1').material('mat2').propertyGroup('def').set('thermalexpansioncoefficient', '(alpha_solid_1(T)+(Tempref-293[K])*if(abs(T-Tempref)>1e-3,(alpha_solid_1(T)-alpha_solid_1(Tempref))/(T-Tempref),d(alpha_solid_1(T),T)))/(1+alpha_solid_1(Tempref)*(Tempref-293[K]))');
model.component('comp1').material('mat2').propertyGroup('def').set('INFO_PREFIX:thermalexpansioncoefficient', ['Reference: F.C. Nix and D. MacNair, Physical Review, v60, p597 (1941) https://doi.org/10.1103/PhysRev.60.597 and R. Feder and A.S. Norwick, Physical Review, v109, p1959 (1958) https://doi.org/10.1103/PhysRev.109.1959 and D.F. Gibbons, Physical Review, v112, p136 (1958) https://doi.org/10.1103/PhysRev.112.136 and F.R. Kroeger Jr., Iowa State University, Retrospective Theses and Dissertations, 5151 (1974) https://lib.dr.iastate.edu/rtd/5151' newline 'Note: the reference temperature is 20 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (293 K), Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), 8% error' newline 'Reference temperature: 293.00[K]']);
model.component('comp1').material('mat2').propertyGroup('def').set('heatcapacity', 'C_solid_1(T)');
model.component('comp1').material('mat2').propertyGroup('def').set('INFO_PREFIX:heatcapacity', ['Reference: B.J. McBride, S. Gordon, and M.A. Reno, Thermodynamic Data for Fifty Reference Elements, NASA Technical Paper 3287 (1993) https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/20010021116.pdf and J.E. Jensen, W.A. Tuttle, R.B. Stewart, H. Brechna, and A.G. Prodell, Brookhaven National Laboratory Selected Cryogenics Data Handbook, v1, sections I-IX (1980) https://www.bnl.gov/magnets/Staff/Gupta/cryogenic-data-handbook/index.htm' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K)']);
model.component('comp1').material('mat2').propertyGroup('def').set('electricconductivity', 'sigma_solid_1(T)');
model.component('comp1').material('mat2').propertyGroup('def').set('INFO_PREFIX:electricconductivity', ['Reference: P.D. Desai, H.M. James, and C.Y. Ho, Journal of Physical and Chemical Reference Data, v13, No. 4, p1131 (1984) https://srd.nist.gov/JPCRD/jpcrd260.pdf' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), data below -233.1 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (40 K) is for Al with a residual resistivity of 1 x 10{' native2unicode(hex2dec({'00' 'b9'}), 'unicode')  native2unicode(hex2dec({'00' 'b2'}), 'unicode') ' ohm-m, not corrected for thermal expansion, calculated as the reciprocal of the resistivity, > 99.9 (wt%)']);
model.component('comp1').material('mat2').propertyGroup('def').set('HC', 'HC_solid_1(T)');
model.component('comp1').material('mat2').propertyGroup('def').set('INFO_PREFIX:HC', ['Reference: B.J. McBride, S. Gordon, and M.A. Reno, Thermodynamic Data for Fifty Reference Elements, NASA Technical Paper 3287 (1993) https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/20010021116.pdf and J.E. Jensen, W.A. Tuttle, R.B. Stewart, H. Brechna, and A.G. Prodell, Brookhaven National Laboratory Selected Cryogenics Data Handbook, v1, sections I-IX (1980) https://www.bnl.gov/magnets/Staff/Gupta/cryogenic-data-handbook/index.htm' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K)']);
model.component('comp1').material('mat2').propertyGroup('def').set('VP', 'VP_solid_1(T)');
model.component('comp1').material('mat2').propertyGroup('def').set('INFO_PREFIX:VP', ['Reference: C.B. Alcock, V.P. Itkin, and M.K. Horrigan, Canadian Metallurgical Quarterly, v23, No. 3, p309 (1984) https://doi.org/10.1179/cmq.1984.23.3.309' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), 5% error or less']);
model.component('comp1').material('mat2').propertyGroup('def').set('emissivity', 'epsilon_solid_grit_blasted_black_anodized_2(T)');
model.component('comp1').material('mat2').propertyGroup('def').set('INFO_PREFIX:emissivity', ['Reference: D.A. Jaworske, S.K. Rutledge, and W.H. Cunningham, p738 in 40th International SAMPE Symposium, May 8-11 (1995) https://www.gbv.de/dms/tib-ub-hannover/190873310.pdf' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), grit blasted black anodized 6061-T6']);
model.component('comp1').material('mat2').propertyGroup('def').set('density', 'rho_solid_1(T)');
model.component('comp1').material('mat2').propertyGroup('def').set('INFO_PREFIX:density', ['Reference: F.C. Nix and D. MacNair, Physical Review, v60, p597 (1941) https://doi.org/10.1103/PhysRev.60.597 and R. Feder and A.S. Norwick, Physical Review, v109, p1959 (1958) https://doi.org/10.1103/PhysRev.109.1959 and D.F. Gibbons, Physical Review, v112, p136 (1958) https://doi.org/10.1103/PhysRev.112.136 and F.R. Kroeger Jr., Iowa State University, Retrospective Theses and Dissertations, 5151 (1974) https://lib.dr.iastate.edu/rtd/5151' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), calculated from the linear expansion and the room temperature density']);
model.component('comp1').material('mat2').propertyGroup('def').func.create('res_solid_1', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('def').func('res_solid_1').set('funcname', 'res_solid_1');
model.component('comp1').material('mat2').propertyGroup('def').func('res_solid_1').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('def').func('res_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat2').propertyGroup('def').func('res_solid_1').set('pieces', {'1.0' '19.5' '1.091612E-12-1.10726E-13*T^1+3.696901E-14*T^2-2.781934E-15*T^3+1.008733E-16*T^4';  ...
'19.5' '50.6' '-3.323487E-11+7.29041E-12*T^1-4.771551E-13*T^2+1.071535E-14*T^3';  ...
'50.6' '200.0' '1.0445563E-10-3.988929E-11*T^1+1.061978E-12*T^2-2.337666E-15*T^3';  ...
'200.0' '933.16' '-1.037048E-8+1.451201E-10*T^1-8.192563E-14*T^2+6.619834E-17*T^3'});
model.component('comp1').material('mat2').propertyGroup('def').func('res_solid_1').label('Piecewise');
model.component('comp1').material('mat2').propertyGroup('def').func('res_solid_1').set('fununit', 'ohm*m');
model.component('comp1').material('mat2').propertyGroup('def').func('res_solid_1').set('argunit', 'K');
model.component('comp1').material('mat2').propertyGroup('def').func.create('alpha_solid_1', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('def').func('alpha_solid_1').set('funcname', 'alpha_solid_1');
model.component('comp1').material('mat2').propertyGroup('def').func('alpha_solid_1').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('def').func('alpha_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat2').propertyGroup('def').func('alpha_solid_1').set('pieces', {'10.0' '137.0' '1.43109188E-5+3.37038626E-8*T^1+8.16435956E-10*T^2-1.08888719E-11*T^3+5.23223423E-14*T^4-8.82682652E-17*T^5'; '137.0' '247.0' '2.07834478E-5-4.08338871E-8*T^1+2.32930107E-10*T^2+1.49187457E-12*T^3-1.07271913E-14*T^4+1.67112321E-17*T^5'; '247.0' '933.16' '7.73307064E-6+1.51327401E-7*T^1-5.79889205E-10*T^2+1.08298998E-12*T^3-9.44189288E-16*T^4+3.12958753E-19*T^5'});
model.component('comp1').material('mat2').propertyGroup('def').func('alpha_solid_1').label('Piecewise 1');
model.component('comp1').material('mat2').propertyGroup('def').func('alpha_solid_1').set('fununit', '1/K');
model.component('comp1').material('mat2').propertyGroup('def').func('alpha_solid_1').set('argunit', 'K');
model.component('comp1').material('mat2').propertyGroup('def').func.create('C_solid_1', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('def').func('C_solid_1').set('funcname', 'C_solid_1');
model.component('comp1').material('mat2').propertyGroup('def').func('C_solid_1').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('def').func('C_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat2').propertyGroup('def').func('C_solid_1').set('pieces', {'10.0' '26.0' '10.0147917-3.90760773*T^1+0.648758442*T^2-0.0548161053*T^3+0.00262892806*T^4-6.45484119E-5*T^5+6.54234808E-7*T^6';  ...
'26.0' '108.0' '-71.838152+9.71552515*T^1-0.55581666*T^2+0.0172355785*T^3-2.25678347E-4*T^4+1.36370432E-6*T^5-3.14875506E-9*T^6';  ...
'108.0' '300.0' '-892.25551+28.0210131*T^1-0.219689057*T^2+0.00103357024*T^3-2.84563726E-6*T^4+4.15606786E-9*T^5-2.45888664E-12*T^6';  ...
'300.0' '933.16' '663.125754+1.17769949*T^1-0.00154549231*T^2+1.04234523E-6*T^3'});
model.component('comp1').material('mat2').propertyGroup('def').func('C_solid_1').label('Piecewise 2');
model.component('comp1').material('mat2').propertyGroup('def').func('C_solid_1').set('fununit', 'J/(kg*K)');
model.component('comp1').material('mat2').propertyGroup('def').func('C_solid_1').set('argunit', 'K');
model.component('comp1').material('mat2').propertyGroup('def').func.create('sigma_solid_1', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('def').func('sigma_solid_1').set('funcname', 'sigma_solid_1');
model.component('comp1').material('mat2').propertyGroup('def').func('sigma_solid_1').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('def').func('sigma_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat2').propertyGroup('def').func('sigma_solid_1').set('pieces', {'1.0' '19.5' '1/(1.008733E-16*T^4-2.781934E-15*T^3+3.696901E-14*T^2-1.107260E-13*T+1.091612E-12)';  ...
'19.5' '50.6' '1/(1.071535E-14*T^3-4.771551E-13*T^2+7.290410E-12*T-3.323487E-11)';  ...
'50.6' '200.0' '1/(-2.337666E-15*T^3+1.061978E-12*T^2-3.988929E-11*T+1.0445563E-10)';  ...
'200.0' '933.16' '1/(6.619834E-17*T^3-8.192563E-14*T^2+1.451201E-10*T-1.037048E-08)'});
model.component('comp1').material('mat2').propertyGroup('def').func('sigma_solid_1').label('Piecewise 3');
model.component('comp1').material('mat2').propertyGroup('def').func('sigma_solid_1').set('fununit', 'S/m');
model.component('comp1').material('mat2').propertyGroup('def').func('sigma_solid_1').set('argunit', 'K');
model.component('comp1').material('mat2').propertyGroup('def').func.create('HC_solid_1', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('def').func('HC_solid_1').set('funcname', 'HC_solid_1');
model.component('comp1').material('mat2').propertyGroup('def').func('HC_solid_1').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('def').func('HC_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat2').propertyGroup('def').func('HC_solid_1').set('pieces', {'10.0' '26.0' '0.270214103-0.105433118*T^1+0.0175044759*T^2-0.00147902075*T^3+7.09324227E-5*T^4-1.74161297E-6*T^5+1.76522365E-8*T^6';  ...
'26.0' '108.0' '-1.93830109+0.262139441*T^1-0.0149967672*T^2+4.65041763E-4*T^3-6.08914034E-6*T^4+3.67947882E-8*T^5-8.49581346E-11*T^6';  ...
'108.0' '300.0' '-24.0743921+0.756048963*T^1-0.00592754029*T^2+2.78872755E-5*T^3-7.67795618E-8*T^4+1.12136945E-10*T^5-6.634445E-14*T^6';  ...
'300.0' '933.16' '17.8921265+0.0317760987*T^1-4.16997008E-5*T^2+2.81240378E-8*T^3'});
model.component('comp1').material('mat2').propertyGroup('def').func('HC_solid_1').label('Piecewise 4');
model.component('comp1').material('mat2').propertyGroup('def').func('HC_solid_1').set('fununit', 'J/(mol*K)');
model.component('comp1').material('mat2').propertyGroup('def').func('HC_solid_1').set('argunit', 'K');
model.component('comp1').material('mat2').propertyGroup('def').func.create('VP_solid_1', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('def').func('VP_solid_1').set('funcname', 'VP_solid_1');
model.component('comp1').material('mat2').propertyGroup('def').func('VP_solid_1').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('def').func('VP_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat2').propertyGroup('def').func('VP_solid_1').set('pieces', {'293.0' '933.16' '(exp((-1.73420000e+04/T-7.92700000e-01*log10(T)+1.23398100e+01)*log(10.0)))*1.33320000e+02'});
model.component('comp1').material('mat2').propertyGroup('def').func('VP_solid_1').label('Piecewise 5');
model.component('comp1').material('mat2').propertyGroup('def').func('VP_solid_1').set('fununit', 'Pa');
model.component('comp1').material('mat2').propertyGroup('def').func('VP_solid_1').set('argunit', 'K');
model.component('comp1').material('mat2').propertyGroup('def').func.create('epsilon_solid_grit_blasted_black_anodized_2', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('def').func('epsilon_solid_grit_blasted_black_anodized_2').set('funcname', 'epsilon_solid_grit_blasted_black_anodized_2');
model.component('comp1').material('mat2').propertyGroup('def').func('epsilon_solid_grit_blasted_black_anodized_2').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('def').func('epsilon_solid_grit_blasted_black_anodized_2').set('extrap', 'constant');
model.component('comp1').material('mat2').propertyGroup('def').func('epsilon_solid_grit_blasted_black_anodized_2').set('pieces', {'175.0' '300.0' '-1.998721+0.03492934*T^1-1.733187E-4*T^2+3.996101E-7*T^3-3.508772E-10*T^4'});
model.component('comp1').material('mat2').propertyGroup('def').func('epsilon_solid_grit_blasted_black_anodized_2').label('Piecewise 6');
model.component('comp1').material('mat2').propertyGroup('def').func('epsilon_solid_grit_blasted_black_anodized_2').set('fununit', '');
model.component('comp1').material('mat2').propertyGroup('def').func('epsilon_solid_grit_blasted_black_anodized_2').set('argunit', 'K');
model.component('comp1').material('mat2').propertyGroup('def').func.create('rho_solid_1', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('def').func('rho_solid_1').set('funcname', 'rho_solid_1');
model.component('comp1').material('mat2').propertyGroup('def').func('rho_solid_1').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('def').func('rho_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat2').propertyGroup('def').func('rho_solid_1').set('pieces', {'10.0' '247.0' '2734.57514-0.0398881851*T^1+0.00187559788*T^2-3.69839365E-5*T^3+2.55112441E-7*T^4-8.1685655E-10*T^5+1.00385922E-12*T^6'; '247.0' '933.16' '2751.77566-0.179058415*T^1+4.65832302E-5*T^2-1.51653304E-7*T^3+6.83086165E-11*T^4+8.71886752E-16*T^5-2.11179857E-18*T^6'});
model.component('comp1').material('mat2').propertyGroup('def').func('rho_solid_1').label('Piecewise 7');
model.component('comp1').material('mat2').propertyGroup('def').func('rho_solid_1').set('fununit', 'kg/m^3');
model.component('comp1').material('mat2').propertyGroup('def').func('rho_solid_1').set('argunit', 'K');
model.component('comp1').material('mat2').propertyGroup('def').addInput('temperature');
model.component('comp1').material('mat2').propertyGroup('def').addInput('strainreferencetemperature');
model.component('comp1').material('mat2').propertyGroup.create('ThermalExpansion', 'Thermal_expansion');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').set('dL', '(dL_solid_1(T)-dL_solid_1(Tempref))/(1+dL_solid_1(Tempref))');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').set('INFO_PREFIX:dL', ['Reference: F.C. Nix and D. MacNair, Physical Review, v60, p597 (1941) https://doi.org/10.1103/PhysRev.60.597 and R. Feder and A.S. Norwick, Physical Review, v109, p1959 (1958) https://doi.org/10.1103/PhysRev.109.1959 and D.F. Gibbons, Physical Review, v112, p136 (1958) https://doi.org/10.1103/PhysRev.112.136 and F.R. Kroeger Jr., Iowa State University, Retrospective Theses and Dissertations, 5151 (1974) https://lib.dr.iastate.edu/rtd/5151' newline 'Note: the reference temperature is 20 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (293 K), Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K)' newline 'Reference temperature: 293.00[K]']);
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').set('alphatan', 'CTE_solid_1(T)');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').set('INFO_PREFIX:alphatan', ['Reference: F.C. Nix and D. MacNair, Physical Review, v60, p597 (1941) https://doi.org/10.1103/PhysRev.60.597 and D.F. Gibbons, Physical Review, v112, p136 (1958) https://doi.org/10.1103/PhysRev.112.136 and F.R. Kroeger Jr., Iowa State University, Retrospective Theses and Dissertations, 5151 (1974) https://lib.dr.iastate.edu/rtd/5151' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K)']);
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').func.create('dL_solid_1', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').func('dL_solid_1').set('funcname', 'dL_solid_1');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').func('dL_solid_1').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').func('dL_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').func('dL_solid_1').set('pieces', {'10.0' '25.0' '-0.00416732581-3.26820168E-13*T^1-6.40537926E-9*T^2+7.35005611E-10*T^3-3.34650303E-11*T^4+1.0196671E-12*T^5-9.00232037E-15*T^6'; '25.0' '189.0' '-0.00424379768+7.68932463E-6*T^1-2.86497054E-7*T^2+4.90825879E-9*T^3-3.08623048E-11*T^4+8.74528953E-14*T^5-8.97335932E-17*T^6'; '189.0' '933.16' '-0.00226518274-3.66079307E-5*T^1+3.21234948E-7*T^2-8.97205299E-10*T^3+1.35963749E-12*T^4-1.03588624E-15*T^5+3.12958765E-19*T^6'});
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').func('dL_solid_1').label('Piecewise');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').func('dL_solid_1').set('fununit', '');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').func('dL_solid_1').set('argunit', 'K');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').func.create('CTE_solid_1', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').func('CTE_solid_1').set('funcname', 'CTE_solid_1');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').func('CTE_solid_1').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').func('CTE_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').func('CTE_solid_1').set('pieces', {'10.0' '27.0' '3.26614079E-8-1.2811084E-8*T^1+2.2050497E-9*T^2-1.3386148E-10*T^3+5.0983621E-12*T^4-5.4014065E-14*T^5';  ...
'27.0' '79.0' '-3.29120927E-6+3.06868839E-7*T^1-1.00481619E-8*T^2+1.72476772E-10*T^3-8.8460608E-13*T^4';  ...
'79.0' '230.0' '-2.28632108E-5+6.67491471E-7*T^1-4.40262199E-9*T^2+1.45535841E-11*T^3-1.91062188E-14*T^4';  ...
'230.0' '900.0' '1.24556905E-5+5.05077193E-8*T^1-5.80655625E-11*T^2+3.01430546E-14*T^3'});
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').func('CTE_solid_1').label('Piecewise 1');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').func('CTE_solid_1').set('fununit', '1/K');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').func('CTE_solid_1').set('argunit', 'K');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').addInput('temperature');
model.component('comp1').material('mat2').propertyGroup('ThermalExpansion').addInput('strainreferencetemperature');
model.component('comp1').material('mat2').propertyGroup.create('Enu', 'Young''s_modulus_and_Poisson''s_ratio');
model.component('comp1').material('mat2').propertyGroup('Enu').set('E', 'E(T)');
model.component('comp1').material('mat2').propertyGroup('Enu').set('INFO_PREFIX:E', ['Reference: temperature dependence from M. Lalpoor, D.G. Eskin, and L. Katgerman, Metallurgical and Materials Transactions A, v40A, No. 13, p3304 (2009) https://doi.org/10.1007/s11661-009-0031-y and S.C. Sharma, Metallurgical and Materials Transactions A, v31A, No. 3, p773 (2000) https://doi.org/10.1007/s11661-000-0019-0 and K. Sakai, A. Matsumuro, and M. Senoo, Journal of Materials Science, v31, No. 12, p3309 (1996) https://doi.org/10.1007/BF00354683 and E.R. Naimon, H.M. Ledbetter, and W.F. Weston, Journal of Materials Science, v10, No. 8, p1309 (1975) https://doi.org/10.1007/BF00540820 and R.B. McLellan and T. Ishikawa, Journal of Physics and Chemistry of Solids, v48, No. 7, p603 (1987) https://doi.org/10.1016/0022-3697(87)90147-8 and H.J. Stokes, Scientific Instruments, v37, No. 4, p117 (1960) https://doi.org/10.1088/0950-7671/37/4/302' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), uncertainty at -273.1 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (0 K) is 5%, at 500 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (773 K) it is 10%']);
model.component('comp1').material('mat2').propertyGroup('Enu').set('nu', 'nu(T)');
model.component('comp1').material('mat2').propertyGroup('Enu').set('INFO_PREFIX:nu', ['Reference: temperature dependence from M. Lalpoor, D.G. Eskin, and L. Katgerman, Metallurgical and Materials Transactions A, v40A, No. 13, p3304 (2009) https://doi.org/10.1007/s11661-009-0031-y and S.C. Sharma, Metallurgical and Materials Transactions A, v31A, No. 3, p773 (2000) https://doi.org/10.1007/s11661-000-0019-0 and K. Sakai, A. Matsumuro, and M. Senoo, Journal of Materials Science, v31, No. 12, p3309 (1996) https://doi.org/10.1007/BF00354683 and E.R. Naimon, H.M. Ledbetter, and W.F. Weston, Journal of Materials Science, v10, No. 8, p1309 (1975) https://doi.org/10.1007/BF00540820 and R.B. McLellan and T. Ishikawa, Journal of Physics and Chemistry of Solids, v48, No. 7, p603 (1987) https://doi.org/10.1016/0022-3697(87)90147-8 and H.J. Stokes, Scientific Instruments, v37, No. 4, p117 (1960) https://doi.org/10.1088/0950-7671/37/4/302' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), uncertainty at -273.1 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (0 K) is 5%, at 500 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (773 K) it is 10%']);
model.component('comp1').material('mat2').propertyGroup('Enu').func.create('E', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('Enu').func('E').set('funcname', 'E');
model.component('comp1').material('mat2').propertyGroup('Enu').func('E').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('Enu').func('E').set('extrap', 'constant');
model.component('comp1').material('mat2').propertyGroup('Enu').func('E').set('pieces', {'0.0' '773.16' '7.659324E10+2007396.0*T^1-186458.4*T^2+419.2175*T^3-0.3495083*T^4'});
model.component('comp1').material('mat2').propertyGroup('Enu').func('E').label('Piecewise');
model.component('comp1').material('mat2').propertyGroup('Enu').func('E').set('fununit', 'Pa');
model.component('comp1').material('mat2').propertyGroup('Enu').func('E').set('argunit', 'K');
model.component('comp1').material('mat2').propertyGroup('Enu').func.create('nu', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('Enu').func('nu').set('funcname', 'nu');
model.component('comp1').material('mat2').propertyGroup('Enu').func('nu').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('Enu').func('nu').set('extrap', 'constant');
model.component('comp1').material('mat2').propertyGroup('Enu').func('nu').set('pieces', {'0.0' '773.16' '0.3238668+3.754548E-6*T^1+2.213647E-7*T^2-6.565023E-10*T^3+4.21277E-13*T^4+3.170505E-16*T^5'});
model.component('comp1').material('mat2').propertyGroup('Enu').func('nu').label('Piecewise 1');
model.component('comp1').material('mat2').propertyGroup('Enu').func('nu').set('fununit', '');
model.component('comp1').material('mat2').propertyGroup('Enu').func('nu').set('argunit', 'K');
model.component('comp1').material('mat2').propertyGroup('Enu').addInput('temperature');
model.component('comp1').material('mat2').propertyGroup.create('KG', 'Bulk_modulus_and_shear_modulus');
model.component('comp1').material('mat2').propertyGroup('KG').set('G', 'mu(T)');
model.component('comp1').material('mat2').propertyGroup('KG').set('INFO_PREFIX:G', ['Reference: temperature dependence from M. Lalpoor, D.G. Eskin, and L. Katgerman, Metallurgical and Materials Transactions A, v40A, No. 13, p3304 (2009) https://doi.org/10.1007/s11661-009-0031-y and S.C. Sharma, Metallurgical and Materials Transactions A, v31A, No. 3, p773 (2000) https://doi.org/10.1007/s11661-000-0019-0 and K. Sakai, A. Matsumuro, and M. Senoo, Journal of Materials Science, v31, No. 12, p3309 (1996) https://doi.org/10.1007/BF00354683 and E.R. Naimon, H.M. Ledbetter, and W.F. Weston, Journal of Materials Science, v10, No. 8, p1309 (1975) https://doi.org/10.1007/BF00540820 and R.B. McLellan and T. Ishikawa, Journal of Physics and Chemistry of Solids, v48, No. 7, p603 (1987) https://doi.org/10.1016/0022-3697(87)90147-8 and H.J. Stokes, Scientific Instruments, v37, No. 4, p117 (1960) https://doi.org/10.1088/0950-7671/37/4/302' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), uncertainty at -273.1 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (0 K) is 5%, at 500 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (773 K) it is 10%']);
model.component('comp1').material('mat2').propertyGroup('KG').set('K', 'kappa(T)');
model.component('comp1').material('mat2').propertyGroup('KG').set('INFO_PREFIX:K', ['Reference: temperature dependence from M. Lalpoor, D.G. Eskin, and L. Katgerman, Metallurgical and Materials Transactions A, v40A, No. 13, p3304 (2009) https://doi.org/10.1007/s11661-009-0031-y and S.C. Sharma, Metallurgical and Materials Transactions A, v31A, No. 3, p773 (2000) https://doi.org/10.1007/s11661-000-0019-0 and K. Sakai, A. Matsumuro, and M. Senoo, Journal of Materials Science, v31, No. 12, p3309 (1996) https://doi.org/10.1007/BF00354683 and E.R. Naimon, H.M. Ledbetter, and W.F. Weston, Journal of Materials Science, v10, No. 8, p1309 (1975) https://doi.org/10.1007/BF00540820 and R.B. McLellan and T. Ishikawa, Journal of Physics and Chemistry of Solids, v48, No. 7, p603 (1987) https://doi.org/10.1016/0022-3697(87)90147-8 and H.J. Stokes, Scientific Instruments, v37, No. 4, p117 (1960) https://doi.org/10.1088/0950-7671/37/4/302' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), errors may be large']);
model.component('comp1').material('mat2').propertyGroup('KG').func.create('mu', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('KG').func('mu').set('funcname', 'mu');
model.component('comp1').material('mat2').propertyGroup('KG').func('mu').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('KG').func('mu').set('extrap', 'constant');
model.component('comp1').material('mat2').propertyGroup('KG').func('mu').set('pieces', {'0.0' '773.16' '2.894653E10-120032.4*T^1-69037.36*T^2+158.6722*T^3-0.1348974*T^4'});
model.component('comp1').material('mat2').propertyGroup('KG').func('mu').label('Piecewise');
model.component('comp1').material('mat2').propertyGroup('KG').func('mu').set('fununit', 'Pa');
model.component('comp1').material('mat2').propertyGroup('KG').func('mu').set('argunit', 'K');
model.component('comp1').material('mat2').propertyGroup('KG').func.create('kappa', 'Piecewise');
model.component('comp1').material('mat2').propertyGroup('KG').func('kappa').set('funcname', 'kappa');
model.component('comp1').material('mat2').propertyGroup('KG').func('kappa').set('arg', 'T');
model.component('comp1').material('mat2').propertyGroup('KG').func('kappa').set('extrap', 'constant');
model.component('comp1').material('mat2').propertyGroup('KG').func('kappa').set('pieces', {'0.0' '773.16' '7.252413E10+1872882.0*T^1-71106.44*T^2+52.7109*T^3'});
model.component('comp1').material('mat2').propertyGroup('KG').func('kappa').label('Piecewise 1');
model.component('comp1').material('mat2').propertyGroup('KG').func('kappa').set('fununit', 'Pa');
model.component('comp1').material('mat2').propertyGroup('KG').func('kappa').set('argunit', 'K');
model.component('comp1').material('mat2').propertyGroup('KG').addInput('temperature');
model.component('comp1').material('mat2').set('family', 'aluminum');

model.label('Air bearing study.mph');

model.component('comp1').geom('geom1').run('fin');
model.component('comp1').geom('geom1').run('imp1');
model.component('comp1').geom('geom1').create('blk1', 'Block');
model.component('comp1').geom('geom1').feature('blk1').label('Block Magnetic field ');
model.component('comp1').geom('geom1').feature('blk1').set('size', [0.5 0.5 0.5]);
model.component('comp1').geom('geom1').feature('blk1').set('pos', [-0.25 -0.25 -0.25]);
model.component('comp1').geom('geom1').feature('blk1').set('axistype', 'cartesian');
model.component('comp1').geom('geom1').run('blk1');

model.component('comp1').view('view1').hideObjects.create('hide1');
model.component('comp1').view('view1').hideObjects('hide1').init;
model.component('comp1').view('view1').hideObjects('hide1').add({'blk1'});

model.component('comp1').geom('geom1').run;

model.component('comp1').material.create('mat3', 'Common');
model.component('comp1').material('mat3').label('Air [saturated liquid]');
model.component('comp1').material('mat3').info.create('Composition');
model.component('comp1').material('mat3').info('Composition').body(['78.09 N' native2unicode(hex2dec({'00' '82'}), 'unicode') ', 20.95 O' native2unicode(hex2dec({'00' '82'}), 'unicode') ', 0.93 Ar, 0.039 CO' native2unicode(hex2dec({'00' '82'}), 'unicode') ', trace others (vol %)']);
model.component('comp1').material('mat3').propertyGroup('def').set('thermalexpansioncoefficient', '(alpha(T)+(Tempref-100[K])*if(abs(T-Tempref)>1e-3,(alpha(T)-alpha(Tempref))/(T-Tempref),d(alpha(T),T)))/(1+alpha(Tempref)*(Tempref-100[K]))');
model.component('comp1').material('mat3').propertyGroup('def').set('INFO_PREFIX:thermalexpansioncoefficient', ['Reference: V.J. Johnson, A Compendium Of The Properties Of Materials At Low Temperature (PHASE 1). Part 1. Properties Of Fluids, WADD TR60-56, pt 1, AD0249644 (1960) http://contrails.iit.edu/reports/6592' newline 'Note: the reference temperature is -173 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (100 K), saturated liquid, calculated from the density' newline 'Reference temperature: 100.00[K]']);
model.component('comp1').material('mat3').propertyGroup('def').set('density', 'rho_saturated_liquid_1(T)');
model.component('comp1').material('mat3').propertyGroup('def').set('INFO_PREFIX:density', ['Reference: V.J. Johnson, A Compendium Of The Properties Of Materials At Low Temperature (PHASE 1). Part 1. Properties Of Fluids, WADD TR60-56, pt 1, AD0249644 (1960) http://contrails.iit.edu/reports/6592' newline 'Note: saturated liquid']);
model.component('comp1').material('mat3').propertyGroup('def').func.create('alpha', 'Piecewise');
model.component('comp1').material('mat3').propertyGroup('def').func('alpha').set('funcname', 'alpha');
model.component('comp1').material('mat3').propertyGroup('def').func('alpha').set('arg', 'T');
model.component('comp1').material('mat3').propertyGroup('def').func('alpha').set('extrap', 'constant');
model.component('comp1').material('mat3').propertyGroup('def').func('alpha').set('pieces', {'77.0' '120.0' '0.08413499-0.003534636*T^1+5.669644E-5*T^2-4.020354E-7*T^3+1.071064E-9*T^4'; '120.0' '128.0' '16.26246-0.5430194*T^1+0.00680161*T^2-3.787499E-5*T^3+7.913027E-8*T^4'; '128.0' '133.16' '183.2765-5.912346*T^1+0.07150531*T^2-3.842685E-4*T^3+7.742478E-7*T^4'});
model.component('comp1').material('mat3').propertyGroup('def').func('alpha').label('Piecewise');
model.component('comp1').material('mat3').propertyGroup('def').func('alpha').set('fununit', '1/K');
model.component('comp1').material('mat3').propertyGroup('def').func('alpha').set('argunit', 'K');
model.component('comp1').material('mat3').propertyGroup('def').func.create('rho_saturated_liquid_1', 'Piecewise');
model.component('comp1').material('mat3').propertyGroup('def').func('rho_saturated_liquid_1').set('funcname', 'rho_saturated_liquid_1');
model.component('comp1').material('mat3').propertyGroup('def').func('rho_saturated_liquid_1').set('arg', 'T');
model.component('comp1').material('mat3').propertyGroup('def').func('rho_saturated_liquid_1').set('extrap', 'constant');
model.component('comp1').material('mat3').propertyGroup('def').func('rho_saturated_liquid_1').set('pieces', {'77.0' '120.0' '-2000.987+133.4055*T^1-2.199379*T^2+0.01558975*T^3-4.179524E-5*T^4'; '120.0' '133.16' '-2535900.0+82925.44*T^1-1016.314*T^2+5.534799*T^3-0.01130283*T^4'});
model.component('comp1').material('mat3').propertyGroup('def').func('rho_saturated_liquid_1').label('Piecewise 1');
model.component('comp1').material('mat3').propertyGroup('def').func('rho_saturated_liquid_1').set('fununit', 'kg/m^3');
model.component('comp1').material('mat3').propertyGroup('def').func('rho_saturated_liquid_1').set('argunit', 'K');
model.component('comp1').material('mat3').propertyGroup('def').addInput('temperature');
model.component('comp1').material('mat3').propertyGroup('def').addInput('strainreferencetemperature');
model.component('comp1').material('mat3').propertyGroup.create('ThermalExpansion', 'Thermal_expansion');
model.component('comp1').material('mat3').propertyGroup('ThermalExpansion').set('dL', '(dL(T)-dL(Tempref))/(1+dL(Tempref))');
model.component('comp1').material('mat3').propertyGroup('ThermalExpansion').set('INFO_PREFIX:dL', ['Reference: V.J. Johnson, A Compendium Of The Properties Of Materials At Low Temperature (PHASE 1). Part 1. Properties Of Fluids, WADD TR60-56, pt 1, AD0249644 (1960) http://contrails.iit.edu/reports/6592' newline 'Note: the reference temperature is -173 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (100 K), saturated liquid, calculated from the density' newline 'Reference temperature: 100.00[K]']);
model.component('comp1').material('mat3').propertyGroup('ThermalExpansion').func.create('dL', 'Piecewise');
model.component('comp1').material('mat3').propertyGroup('ThermalExpansion').func('dL').set('funcname', 'dL');
model.component('comp1').material('mat3').propertyGroup('ThermalExpansion').func('dL').set('arg', 'T');
model.component('comp1').material('mat3').propertyGroup('ThermalExpansion').func('dL').set('extrap', 'constant');
model.component('comp1').material('mat3').propertyGroup('ThermalExpansion').func('dL').set('pieces', {'77.0' '127.0' '-18.16215+0.9423339*T^1-0.01959011*T^2+2.030855E-4*T^3-1.048635E-6*T^4+2.160786E-9*T^5'; '127.0' '133.16' '7304.423-234.5719*T^1+2.824579*T^2-0.01511529*T^3+3.033163E-5*T^4'});
model.component('comp1').material('mat3').propertyGroup('ThermalExpansion').func('dL').label('Piecewise');
model.component('comp1').material('mat3').propertyGroup('ThermalExpansion').func('dL').set('fununit', '');
model.component('comp1').material('mat3').propertyGroup('ThermalExpansion').func('dL').set('argunit', 'K');
model.component('comp1').material('mat3').propertyGroup('ThermalExpansion').addInput('temperature');
model.component('comp1').material('mat3').propertyGroup('ThermalExpansion').addInput('strainreferencetemperature');

model.component('comp1').selection.create('sel1', 'Explicit');
model.component('comp1').selection('sel1').geom(3);
model.component('comp1').selection('sel1').label('Explicit 1');
model.component('comp1').selection('sel1').set([]);

model.component('comp1').material('mat3').selection.named('sel1');

model.component('comp1').geom('geom1').feature('blk1').set('selresult', true);
model.component('comp1').geom('geom1').feature('blk1').set('selresultshow', false);
model.component('comp1').geom('geom1').nodeGroup.create('grp1');
model.component('comp1').geom('geom1').nodeGroup('grp1').placeAfter('imp1');
model.component('comp1').geom('geom1').nodeGroup('grp1').add('blk1');

model.component('comp1').physics.remove('mf');
model.component('comp1').physics('mfnc').selection.named('sel1');
model.component('comp1').physics('mfnc').selection.set([]);
model.component('comp1').physics('mfnc').selection.all;
model.component('comp1').physics('mfnc').feature('mfc1').setIndex('materialType', 'from_mat', 0);

model.component('comp1').material('mat1').selection.set([]);
model.component('comp1').material('mat1').selection.geom('geom1', 2);
model.component('comp1').material('mat1').selection.geom('geom1', 3);

model.component('comp1').view('view1').set('showgrid', false);
model.component('comp1').view('view1').set('scenelight', false);
model.component('comp1').view('view1').set('showaxisorientation', true);

model.component('comp1').geom('geom1').feature.remove('blk1');
model.component('comp1').geom('geom1').run('imp1');
model.component('comp1').geom('geom1').create('del1', 'Delete');
model.component('comp1').geom('geom1').nodeGroup('grp1').add('del1');
model.component('comp1').geom('geom1').feature.remove('del1');
model.component('comp1').geom('geom1').nodeGroup.remove('grp1');
model.component('comp1').geom('geom1').run;

model.component('comp1').view('view1').set('showgrid', true);

model.component('comp1').material('mat1').selection.set([3 5]);
model.component('comp1').material('mat2').selection.set([1 2]);

model.component('comp1').geom('geom1').create('blk1', 'Block');
model.component('comp1').geom('geom1').feature('blk1').label('Air Block');
model.component('comp1').geom('geom1').feature('blk1').set('base', 'center');
model.component('comp1').geom('geom1').run;

model.component('comp1').material('mat3').selection.set([1]);

model.component('comp1').view('view1').set('showgrid', true);
model.component('comp1').view('view1').set('transparency', true);
model.component('comp1').view('view1').set('uniformblending', false);

model.label('Air bearing study.mph');

model.component('comp1').physics('mfnc').prop('BackgroundField').set('SolveFor', 'ReducedField');
model.component('comp1').physics('mfnc').prop('EquationForm').setIndex('form', 'Stationary', 0);
model.component('comp1').physics('mfnc').prop('EquationForm').setIndex('form', 'Transient', 0);
model.component('comp1').physics('mfnc').prop('EquationForm').setIndex('form', 'Automatic', 0);
model.component('comp1').physics('mfnc').prop('EquationForm').setIndex('form', 'TimeToFrequencyLosses', 0);
model.component('comp1').physics('mfnc').prop('EquationForm').setIndex('form', 'Stationary', 0);
model.component('comp1').physics('mfnc').prop('EquationForm').setIndex('form', 'Automatic', 0);
model.component('comp1').physics('mfnc').prop('BackgroundField').set('SolveFor', 'ReducedField');
model.component('comp1').physics('mfnc').prop('BackgroundField').set('Hb', [1 0 0]);
model.component('comp1').physics('mfnc').prop('EquationForm').setIndex('form', 'Transient', 0);
model.component('comp1').physics('mfnc').prop('EquationForm').setIndex('form', 'Stationary', 0);
model.component('comp1').physics('mfnc').prop('EquationForm').setIndex('form', 'Automatic', 0);

model.result.create('pg1', 'PlotGroup2D');
model.result('pg1').run;
model.result('pg1').label('Magnetic Field vs Distance 1');

model.label('Air bearing study.mph');

model.component('comp1').physics.remove('mfnc');
model.component('comp1').physics.create('mf', 'InductionCurrents', 'geom1');

model.component('comp1').view('view1').set('hidestatus', 'ignore');

model.component('comp1').physics('mf').selection.set([2 3 4 5 6 7]);
model.component('comp1').physics('mf').prop('BackgroundField').set('SolveFor', 'ReducedField');
model.component('comp1').physics('mf').prop('BackgroundField').set('Ab', [1 0 0]);
model.component('comp1').physics('mf').selection.set([1 2 3 4 5 6 7]);

model.component('comp1').view('view1').set('transparency', true);
model.component('comp1').view('view1').set('renderwireframe', true);
model.component('comp1').view('view1').set('transparency', false);
model.component('comp1').view('view1').set('renderwireframe', false);
model.component('comp1').view('view1').camera.set('projection', 'perspective');
model.component('comp1').view('view1').set('renderwireframe', false);
model.component('comp1').view('view1').set('transparency', true);

model.component('comp1').physics('mf').selection.set([1 2 3 4 5 6 7]);

model.result('pg1').run;

model.component('comp1').view('view1').camera.set('projection', 'perspective');
model.component('comp1').view('view1').set('scenelight', false);
model.component('comp1').view('view1').set('renderwireframe', true);

model.component('comp1').geom('geom1').feature('blk1').active(false);
model.component('comp1').geom('geom1').feature('blk1').active(true);
model.component('comp1').geom('geom1').feature('blk1').set('selresult', true);
model.component('comp1').geom('geom1').feature('blk1').set('color', 'none');
model.component('comp1').geom('geom1').feature('blk1').set('selresult', false);

model.component('comp1').view('view1').hideEntities.create('hide1');
model.component('comp1').view('view1').hideEntities('hide1').geom(3);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').set('renderwireframe', false);
model.component('comp1').view('view1').set('transparency', false);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').set('renderwireframe', true);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities.create('hide2');
model.component('comp1').view('view1').hideEntities('hide2').geom(2);
model.component('comp1').view('view1').hideEntities('hide2').add([4]);
model.component('comp1').view('view1').hideEntities('hide2').add([4]);
model.component('comp1').view('view1').hideEntities('hide2').add([4]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').set('showgrid', true);
model.component('comp1').view('view1').set('rendermesh', true);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideObjects('hide1').add({'blk1'});
model.component('comp1').view('view1').hideObjects('hide1').add({'blk1'});
model.component('comp1').view('view1').hideObjects('hide1').add({'blk1'});
model.component('comp1').view('view1').hideObjects('hide1').add({'blk1'});
model.component('comp1').view('view1').hideObjects('hide1').add({'blk1'});
model.component('comp1').view('view1').hideObjects('hide1').add({'blk1'});
model.component('comp1').view('view1').hideObjects('hide1').add({'blk1'});
model.component('comp1').view('view1').hideObjects.create('hide2');
model.component('comp1').view('view1').hideObjects('hide2').init(3);
model.component('comp1').view('view1').hideObjects('hide2').add('blk1', [1]);
model.component('comp1').view('view1').hideObjects('hide2').add('blk1', [1]);
model.component('comp1').view('view1').hideObjects('hide2').add('blk1', [1]);
model.component('comp1').view('view1').hideObjects('hide2').add('blk1', [1]);
model.component('comp1').view('view1').hideObjects('hide2').add('blk1', [1]);
model.component('comp1').view('view1').hideObjects('hide2').add('blk1', [1]);
model.component('comp1').view('view1').hideObjects('hide2').add('blk1', [1]);
model.component('comp1').view('view1').hideObjects('hide2').add('blk1', [1]);
model.component('comp1').view('view1').hideObjects('hide2').add('blk1', [1]);
model.component('comp1').view('view1').hideObjects('hide2').add('blk1', [1]);
model.component('comp1').view('view1').hideObjects('hide2').add('blk1', [1]);
model.component('comp1').view('view1').hideObjects('hide2').add('blk1', [1]);
model.component('comp1').view('view1').set('hidestatus', 'hide');
model.component('comp1').view('view1').set('renderwireframe', false);

model.component('comp1').geom('geom1').create('blk2', 'Block');
model.component('comp1').geom('geom1').feature('blk2').label('FINCH');
model.component('comp1').geom('geom1').feature('blk2').set('type', 'surface');
model.component('comp1').geom('geom1').feature('blk2').set('size', {'10[cm]' '10[cm]' '1'});
model.component('comp1').geom('geom1').feature('blk2').setIndex('size', '40[cm]', 2);
model.component('comp1').geom('geom1').run('blk2');
model.component('comp1').geom('geom1').feature('blk2').set('pos', {'10[cm]' '0' '0'});
model.component('comp1').geom('geom1').run('blk2');
model.component('comp1').geom('geom1').feature('blk2').set('pos', {'-5[cm]' '0' '0'});
model.component('comp1').geom('geom1').run('blk2');
model.component('comp1').geom('geom1').feature('blk2').set('pos', {'-5[cm]' '5[cm]' '0'});
model.component('comp1').geom('geom1').run('blk2');
model.component('comp1').geom('geom1').feature('blk2').set('pos', {'-5[cm]' '2.5[cm]' '0'});
model.component('comp1').geom('geom1').run('blk2');
model.component('comp1').geom('geom1').feature('blk2').set('pos', {'-5[cm]' '2[cm]' '0'});
model.component('comp1').geom('geom1').run('blk2');
model.component('comp1').geom('geom1').feature('blk2').setIndex('pos', '-20[cm]', 2);
model.component('comp1').geom('geom1').run('blk2');

model.component('comp1').view('view1').set('hidestatus', 'ignore');
model.component('comp1').view('view1').hideObjects('hide2').add('blk1', [1]);
model.component('comp1').view('view1').set('hidestatus', 'hide');
model.component('comp1').view('view1').set('renderwireframe', true);
model.component('comp1').view('view1').set('hidestatus', 'ignore');

model.component('comp1').geom('geom1').run;

model.label('Air bearing study.mph');

model.component('comp1').view('view1').set('hidestatus', 'showonlyhidden');
model.component('comp1').view('view1').hideEntities('hide1').remove([1]);
model.component('comp1').view('view1').set('hidestatus', 'showonlyhidden');
model.component('comp1').view('view1').hideEntities('hide1').remove([1]);
model.component('comp1').view('view1').set('hidestatus', 'hide');
model.component('comp1').view('view1').hideObjects.clear;
model.component('comp1').view('view1').hideEntities.clear;
model.component('comp1').view('view1').hideEntities.create('hide1');
model.component('comp1').view('view1').hideEntities('hide1').geom(3);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);

model.component('comp1').geom('geom1').create('imp2', 'Import');
model.component('comp1').geom('geom1').feature('imp2').set('type', 'cad');
model.component('comp1').geom('geom1').feature('imp2').set('filename', 'C:\Users\booni\Desktop\Helmholtz-cage\Structure_CAD\A-651.PED_PEDESTAL FOR A-651 50MM SPHERICAL AB.STEP');
model.component('comp1').geom('geom1').feature('imp2').label('Pedestal');
model.component('comp1').geom('geom1').run('imp2');

model.component('comp1').view('view1').set('renderwireframe', false);
model.component('comp1').view('view1').hideObjects.create('hide1');
model.component('comp1').view('view1').hideObjects('hide1').init;
model.component('comp1').view('view1').hideObjects('hide1').add({'blk1'});

model.component('comp1').geom('geom1').create('mov1', 'Move');
model.component('comp1').geom('geom1').feature('mov1').selection('input').set({'imp2'});
model.component('comp1').geom('geom1').feature('mov1').set('disply', -0.25);
model.component('comp1').geom('geom1').run('mov1');
model.component('comp1').geom('geom1').feature('mov1').set('disply', -0.2);
model.component('comp1').geom('geom1').run('mov1');
model.component('comp1').geom('geom1').feature('mov1').set('disply', -0.18);
model.component('comp1').geom('geom1').run('mov1');
model.component('comp1').geom('geom1').feature('mov1').set('disply', -0.175);
model.component('comp1').geom('geom1').run('mov1');
model.component('comp1').geom('geom1').feature('mov1').set('disply', -0.17);
model.component('comp1').geom('geom1').run('mov1');
model.component('comp1').geom('geom1').feature('mov1').set('disply', -0.172);
model.component('comp1').geom('geom1').run('mov1');
model.component('comp1').geom('geom1').feature('mov1').set('disply', -0.173);
model.component('comp1').geom('geom1').run('mov1');
model.component('comp1').geom('geom1').feature('mov1').set('disply', -0.1731);
model.component('comp1').geom('geom1').run('mov1');
model.component('comp1').geom('geom1').feature('mov1').set('disply', -0.173);
model.component('comp1').geom('geom1').run('mov1');
model.component('comp1').geom('geom1').run;

model.component('comp1').view('view1').set('hidestatus', 'hide');
model.component('comp1').view('view1').hideObjects.clear;
model.component('comp1').view('view1').hideEntities.clear;
model.component('comp1').view('view1').hideObjects.clear;
model.component('comp1').view('view1').hideEntities.clear;
model.component('comp1').view('view1').set('hidestatus', 'hide');
model.component('comp1').view('view1').set('transparency', true);

model.component('comp1').material('mat1').selection.set([7 8 15 17 18 19 27 28]);

model.component('comp1').view('view1').hideObjects.create('hide1');
model.component('comp1').view('view1').hideObjects('hide1').init;
model.component('comp1').view('view1').hideObjects('hide1').add({'blk1'});
model.component('comp1').view('view1').set('showaxisorientation', true);
model.component('comp1').view('view1').hideObjects.clear;
model.component('comp1').view('view1').hideEntities.clear;

model.component('comp1').material('mat3').selection.set([1 3 5 9 11 12 14 21 22 25 26 29 31 32 34]);

model.component('comp1').view('view1').hideEntities.create('hide1');
model.component('comp1').view('view1').hideEntities('hide1').geom(3);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);

model.component('comp1').material('mat3').selection.set([1]);

model.component('comp1').view('view1').hideObjects.clear;
model.component('comp1').view('view1').hideEntities.clear;

model.component('comp1').material('mat1').selection.set([5 7 8 15 17 18 19 27 28]);

model.study.create('std1');
model.study('std1').create('stat', 'Stationary');
model.study('std1').feature('stat').setSolveFor('/physics/mf', true);
model.study('std1').feature('stat').set('plot', true);

model.sol.create('sol1');
model.sol('sol1').study('std1');
model.sol('sol1').attach('std1');

model.study('std1').feature('stat').setEntry('mesh', 'geom1', 'nomesh');

model.sol('sol1').study('std1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'stat');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'stat');
model.sol('sol1').create('s1', 'Stationary');
model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('s1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('s1').feature.remove('fcDef');
model.sol('sol1').attach('std1');
model.sol('sol1').runAll;

model.result.create('pg2', 'PlotGroup3D');
model.result('pg2').label('Magnetic Flux Density Norm (mf)');
model.result('pg2').set('frametype', 'spatial');
model.result('pg2').set('showlegendsmaxmin', true);
model.result('pg2').set('data', 'dset1');
model.result('pg2').set('defaultPlotID', 'InterfaceComponents/PlotDefaults/icom6/pdef1/pcond2/pcond1/pg1');
model.result('pg2').feature.create('mslc1', 'Multislice');
model.result('pg2').feature('mslc1').set('showsolutionparams', 'on');
model.result('pg2').feature('mslc1').set('solutionparams', 'parent');
model.result('pg2').feature('mslc1').set('multiplanexmethod', 'coord');
model.result('pg2').feature('mslc1').set('xcoord', 'mf.CPx');
model.result('pg2').feature('mslc1').set('multiplaneymethod', 'coord');
model.result('pg2').feature('mslc1').set('ycoord', 'mf.CPy');
model.result('pg2').feature('mslc1').set('multiplanezmethod', 'coord');
model.result('pg2').feature('mslc1').set('zcoord', 'mf.CPz');
model.result('pg2').feature('mslc1').set('colortable', 'Prism');
model.result('pg2').feature('mslc1').set('colortabletrans', 'nonlinear');
model.result('pg2').feature('mslc1').set('colorcalibration', -0.8);
model.result('pg2').feature('mslc1').set('showsolutionparams', 'on');
model.result('pg2').feature('mslc1').set('data', 'parent');
model.result('pg2').feature.create('strmsl1', 'StreamlineMultislice');
model.result('pg2').feature('strmsl1').set('showsolutionparams', 'on');
model.result('pg2').feature('strmsl1').set('solutionparams', 'parent');
model.result('pg2').feature('strmsl1').set('multiplanexmethod', 'coord');
model.result('pg2').feature('strmsl1').set('xcoord', 'mf.CPx');
model.result('pg2').feature('strmsl1').set('multiplaneymethod', 'coord');
model.result('pg2').feature('strmsl1').set('ycoord', 'mf.CPy');
model.result('pg2').feature('strmsl1').set('multiplanezmethod', 'coord');
model.result('pg2').feature('strmsl1').set('zcoord', 'mf.CPz');
model.result('pg2').feature('strmsl1').set('titletype', 'none');
model.result('pg2').feature('strmsl1').set('posmethod', 'uniform');
model.result('pg2').feature('strmsl1').set('udist', 0.02);
model.result('pg2').feature('strmsl1').set('maxlen', 0.4);
model.result('pg2').feature('strmsl1').set('maxtime', Inf);
model.result('pg2').feature('strmsl1').set('inheritcolor', false);
model.result('pg2').feature('strmsl1').set('showsolutionparams', 'on');
model.result('pg2').feature('strmsl1').set('maxtime', Inf);
model.result('pg2').feature('strmsl1').set('showsolutionparams', 'on');
model.result('pg2').feature('strmsl1').set('maxtime', Inf);
model.result('pg2').feature('strmsl1').set('showsolutionparams', 'on');
model.result('pg2').feature('strmsl1').set('maxtime', Inf);
model.result('pg2').feature('strmsl1').set('showsolutionparams', 'on');
model.result('pg2').feature('strmsl1').set('maxtime', Inf);
model.result('pg2').feature('strmsl1').set('data', 'parent');
model.result('pg2').feature('strmsl1').set('inheritplot', 'mslc1');
model.result('pg2').feature('strmsl1').feature.create('col1', 'Color');
model.result('pg2').feature('strmsl1').feature('col1').set('colortable', 'PrismDark');
model.result('pg2').feature('strmsl1').feature('col1').set('colorlegend', false);
model.result('pg2').feature('strmsl1').feature('col1').set('colortabletrans', 'nonlinear');
model.result('pg2').feature('strmsl1').feature('col1').set('colorcalibration', -0.8);
model.result('pg2').feature('strmsl1').feature.create('filt1', 'Filter');
model.result('pg2').feature('strmsl1').feature('filt1').set('expr', '!isScalingSystemDomain');
model.result('pg1').run;
model.result('pg2').run;

model.component('comp1').mesh('mesh1').feature('size').set('hauto', 1);
model.component('comp1').mesh('mesh1').run('size');
model.component('comp1').mesh('mesh1').feature('size').set('hauto', 5);
model.component('comp1').mesh('mesh1').run('size');
model.component('comp1').mesh('mesh1').current('ftet1');

model.component('comp1').geom('geom1').feature.remove('blk1');
model.component('comp1').geom('geom1').run;

model.sol('sol1').study('std1');
model.sol('sol1').feature.remove('s1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'stat');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'stat');
model.sol('sol1').create('s1', 'Stationary');
model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('s1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('s1').feature.remove('fcDef');
model.sol('sol1').attach('std1');
model.sol('sol1').runAll;

model.component('comp1').mesh.create('mesh2');
model.component('comp1').mesh('mesh2').geometricModel(true);
model.component('comp1').mesh('mesh2').create('imp1', 'Import');
model.component('comp1').mesh('mesh2').feature('imp1').set('source', 'sequence');
model.component('comp1').mesh('mesh2').feature('imp1').set('sequence', 'mesh1');
model.component('comp1').mesh('mesh2').feature('imp1').set('buildsource', true);
model.component('comp1').mesh('mesh2').feature('imp1').set('domelemsequence', false);
model.component('comp1').mesh('mesh2').feature('imp1').set('unmesheddom', true);
model.component('comp1').mesh('mesh2').run('imp1');

model.component('comp1').geometricModel('mesh/mesh2');

model.component('comp1').mesh('mesh2').create('join1', 'JoinEntities');
model.component('comp1').mesh('mesh2').feature('join1').selection.set([2 3]);
model.component('comp1').mesh('mesh2').run('join1');
model.component('comp1').mesh('mesh2').run;

model.sol('sol1').study('std1');
model.sol('sol1').feature.remove('s1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'stat');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'stat');
model.sol('sol1').create('s1', 'Stationary');
model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('s1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('s1').feature.remove('fcDef');
model.sol('sol1').attach('std1');
model.sol('sol1').runAll;

model.component('comp1').view('view1').set('transparency', true);

model.component('comp1').geom('geom1').create('sph1', 'Sphere');
model.component('comp1').geom('geom1').run('sph1');

model.component('comp1').view('view1').set('transparency', false);
model.component('comp1').view('view1').hideEntities.clear;

model.component('comp1').material('mat3').selection.geom('geom1', 2);
model.component('comp1').material('mat3').selection.geom('geom1', 3);
model.component('comp1').material('mat3').selection.all;
model.component('comp1').material('mat3').selection.named('sel1');
model.component('comp1').material('mat3').selection.set([]);

model.component('comp1').mesh('mesh2').run('join1');

model.component('comp1').view('view1').hideEntities.create('hide1');
model.component('comp1').view('view1').hideEntities('hide1').geom(3);
model.component('comp1').view('view1').set('hidestatus', 'hide');
model.component('comp1').view('view1').hideObjects.create('hide1');
model.component('comp1').view('view1').hideObjects('hide1').init;
model.component('comp1').view('view1').hideObjects('hide1').add({'sph1'});

model.component('comp1').mesh('mesh2').run;
model.component('comp1').mesh.remove('mesh2');

model.component('comp1').view('view1').hideObjects.clear;
model.component('comp1').view('view1').hideEntities.clear;
model.component('comp1').view('view1').hideObjects.create('hide1');
model.component('comp1').view('view1').hideObjects('hide1').init;
model.component('comp1').view('view1').hideObjects('hide1').add({'sph1'});
model.component('comp1').view('view1').hideObjects.clear;
model.component('comp1').view('view1').hideEntities.clear;
model.component('comp1').view('view1').hideEntities.create('hide1');
model.component('comp1').view('view1').hideEntities('hide1').geom(3);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);

model.component('comp1').mesh('mesh1').feature('ftet1').selection.set([2 4 5 6 7 8 15 16 17 18 19 20 27 28]);
model.component('comp1').mesh('mesh1').feature('ftet1').selection.geom('geom1');
model.component('comp1').mesh('mesh1').feature('ftet1').selection.geom('geom1', 3);
model.component('comp1').mesh('mesh1').feature('ftet1').selection.set([2 4 5 6 7 8 15 16 17 18 19 20 27 28]);

model.sol('sol1').study('std1');
model.sol('sol1').feature.remove('s1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'stat');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'stat');
model.sol('sol1').create('s1', 'Stationary');
model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('s1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('s1').feature.remove('fcDef');
model.sol('sol1').attach('std1');
model.sol('sol1').runAll;

model.component('comp1').view('view1').hideObjects.create('hide1');
model.component('comp1').view('view1').hideObjects('hide1').init;
model.component('comp1').view('view1').hideObjects('hide1').add({'sph1'});
model.component('comp1').view('view1').hideObjects.clear;
model.component('comp1').view('view1').hideEntities.clear;

model.component('comp1').material('mat3').selection.set([1]);

model.component('comp1').view('view1').set('renderwireframe', true);

model.component('comp1').physics('mf').selection.set([4 5 6 15 16 17 20]);

model.component('comp1').view('view1').hideEntities.create('hide1');
model.component('comp1').view('view1').hideEntities('hide1').geom(3);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);

model.component('comp1').physics('mf').selection.set([16 17 20]);

model.component('comp1').view('view1').set('renderwireframe', false);

model.component('comp1').physics('mf').selection.set([16 20]);

model.component('comp1').view('view1').set('renderwireframe', true);

model.component('comp1').physics('mf').selection.set([]);
model.component('comp1').physics('mf').selection.all;

model.study('std1').feature.remove('stat');
model.study.remove('std1');

model.result('pg1').run;
model.result.remove('pg1');

model.component('comp1').mesh('mesh1').feature('ftet1').selection.set([2 4 5 6 7 8 15 16 17 18 19 20 27 28]);

model.component('comp1').view('view1').hideObjects.create('hide1');
model.component('comp1').view('view1').hideObjects('hide1').init;
model.component('comp1').view('view1').hideObjects('hide1').add({'sph1'});
model.component('comp1').view('view1').hideObjects.clear;
model.component('comp1').view('view1').hideEntities.clear;
model.component('comp1').view('view1').set('renderwireframe', true);
model.component('comp1').view('view1').set('transparency', false);
model.component('comp1').view('view1').set('renderwireframe', true);

model.component('comp1').mesh('mesh1').feature('size').set('hauto', 1);

model.label('Air bearing study.mph');

model.component('comp1').view('view1').hideEntities.create('hide1');
model.component('comp1').view('view1').hideEntities('hide1').geom(2);
model.component('comp1').view('view1').hideEntities('hide1').add([302]);
model.component('comp1').view('view1').hideEntities('hide1').add([331]);
model.component('comp1').view('view1').hideEntities('hide1').add([164]);
model.component('comp1').view('view1').hideEntities('hide1').add([30]);
model.component('comp1').view('view1').hideEntities('hide1').add([161]);
model.component('comp1').view('view1').hideEntities('hide1').add([163]);
model.component('comp1').view('view1').hideEntities('hide1').add([373]);
model.component('comp1').view('view1').hideEntities('hide1').add([153]);
model.component('comp1').view('view1').hideEntities('hide1').add([152]);
model.component('comp1').view('view1').hideEntities('hide1').add([147]);
model.component('comp1').view('view1').hideEntities('hide1').add([148]);
model.component('comp1').view('view1').hideEntities('hide1').add([151]);
model.component('comp1').view('view1').hideEntities('hide1').add([165]);
model.component('comp1').view('view1').hideEntities('hide1').add([2]);
model.component('comp1').view('view1').hideEntities('hide1').add([5]);
model.component('comp1').view('view1').hideEntities('hide1').add([8]);
model.component('comp1').view('view1').hideEntities('hide1').add([162]);
model.component('comp1').view('view1').hideEntities('hide1').add([202]);

model.component('comp1').geom('geom1').create('rep1', 'Repair');
model.component('comp1').geom('geom1').feature('rep1').set('repairfacetoface', true);
model.component('comp1').geom('geom1').feature('rep1').set('selresult', true);

model.component('comp1').view('view1').hideObjects.create('hide1');
model.component('comp1').view('view1').hideObjects('hide1').init;
model.component('comp1').view('view1').hideObjects('hide1').add({'sph1'});

model.component('comp1').geom('geom1').feature('rep1').selection('input').set({'imp1.000060538_FITTING_ONE_TOUCH_STR_6MM_OD_M5_INT_HEX'});
model.component('comp1').geom('geom1').run('rep1');
model.component('comp1').geom('geom1').run;

model.component('comp1').view('view1').set('hidestatus', 'ignore');
model.component('comp1').view('view1').set('renderwireframe', false);
model.component('comp1').view('view1').hideEntities('hide1').add([347]);
model.component('comp1').view('view1').set('hidestatus', 'hide');
model.component('comp1').view('view1').hideObjects.clear;
model.component('comp1').view('view1').hideEntities.clear;
model.component('comp1').view('view1').hideEntities.create('hide1');
model.component('comp1').view('view1').hideEntities('hide1').geom(2);
model.component('comp1').view('view1').hideEntities('hide1').add([347]);
model.component('comp1').view('view1').hideEntities('hide1').add([301]);
model.component('comp1').view('view1').hideEntities('hide1').add([2]);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').hideEntities('hide1').add([3]);
model.component('comp1').view('view1').hideEntities('hide1').add([4]);
model.component('comp1').view('view1').hideObjects.clear;
model.component('comp1').view('view1').hideEntities.clear;
model.component('comp1').view('view1').set('renderwireframe', true);

model.component('comp1').mesh('mesh1').run('ftet1');

model.component('comp1').view('view1').hideEntities.create('hide1');
model.component('comp1').view('view1').hideEntities('hide1').geom(3);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);

model.component('comp1').mesh('mesh1').create('ftet2', 'FreeTet');
model.component('comp1').mesh('mesh1').feature('ftet2').selection.geom('geom1', 3);
model.component('comp1').mesh('mesh1').feature('ftet2').selection.set([1 3]);
model.component('comp1').mesh('mesh1').feature('ftet2').selection.remove([1]);
model.component('comp1').mesh('mesh1').run('ftet2');
model.component('comp1').mesh('mesh1').feature('ftet2').create('size1', 'Size');
model.component('comp1').mesh('mesh1').feature('ftet2').feature('size1').set('table', 'coarseadaptation');
model.component('comp1').mesh('mesh1').feature('ftet2').feature('size1').set('hauto', 3);
model.component('comp1').mesh('mesh1').run('ftet2');
model.component('comp1').mesh('mesh1').feature('ftet2').feature('size1').set('hauto', 1);
model.component('comp1').mesh('mesh1').run('ftet2');
model.component('comp1').mesh('mesh1').feature.remove('ftet2');
model.component('comp1').mesh('mesh1').create('ftri1', 'FreeTri');
model.component('comp1').mesh('mesh1').feature('ftri1').selection.set([9 10 11 12 13 508]);
model.component('comp1').mesh('mesh1').feature.remove('ftri1');

model.component('comp1').view('view1').set('renderwireframe', false);

model.component('comp1').mesh('mesh1').feature('ftet1').selection.set([2 3 4 5 6 7 8 15 16 17 18 19 20 27 28]);
model.component('comp1').mesh('mesh1').run('ftet1');
model.component('comp1').mesh('mesh1').feature('ftet1').selection.set([2 3 4 5 6 7 8 15 16 17 18 19 20 27 28]);
model.component('comp1').mesh('mesh1').feature('ftet1').selection.geom('geom1');
model.component('comp1').mesh('mesh1').feature('ftet1').selection.geom('geom1', 3);
model.component('comp1').mesh('mesh1').feature('ftet1').selection.set([2 4 5 6 7 8 15 16 17 18 19 20 27 28]);
model.component('comp1').mesh('mesh1').run('ftet1');
model.component('comp1').mesh('mesh1').create('ftet2', 'FreeTet');
model.component('comp1').mesh('mesh1').feature('ftet2').selection.geom('geom1', 3);
model.component('comp1').mesh('mesh1').feature('ftet2').selection.set([3]);
model.component('comp1').mesh('mesh1').feature('ftet2').create('size1', 'Size');
model.component('comp1').mesh('mesh1').feature('ftet2').feature('size1').set('hauto', 1);
model.component('comp1').mesh('mesh1').run('ftet2');
model.component('comp1').mesh('mesh1').run('ftet2');
model.component('comp1').mesh('mesh1').run('ftet2');
model.component('comp1').mesh('mesh1').feature('ftet2').feature('size1').set('custom', false);
model.component('comp1').mesh('mesh1').feature('ftet2').feature('size1').selection.geom('geom1', 2);
model.component('comp1').mesh('mesh1').feature('ftet2').feature('size1').selection.set([9 10 11 12 13 508]);
model.component('comp1').mesh('mesh1').run('ftet2');
model.component('comp1').mesh('mesh1').feature('ftet2').create('se1', 'SizeExpression');
model.component('comp1').mesh('mesh1').feature('ftet2').feature('size1').set('table', 'coarseadaptation');
model.component('comp1').mesh('mesh1').run('ftet2');
model.component('comp1').mesh('mesh1').feature('ftet2').feature('size1').selection.geom('geom1', 3);
model.component('comp1').mesh('mesh1').feature('ftet2').feature('size1').selection.set([3]);
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('ftet2').feature('se1').set('gridtype', 'cellsize');
model.component('comp1').mesh('mesh1').feature('ftet2').feature('se1').set('cellsize', 0.009);
model.component('comp1').mesh('mesh1').run('ftet2');
model.component('comp1').mesh('mesh1').feature('ftet2').feature('se1').selection.geom('geom1', 3);
model.component('comp1').mesh('mesh1').feature('ftet2').feature('se1').selection.set([3]);
model.component('comp1').mesh('mesh1').run('ftet2');
model.component('comp1').mesh('mesh1').feature('ftet2').feature.remove('se1');
model.component('comp1').mesh('mesh1').run('ftet2');
model.component('comp1').mesh('mesh1').run('ftet2');
model.component('comp1').mesh('mesh1').run;

model.component('comp1').physics('mf').prop('BackgroundField').set('SolveFor', 'ReducedField');

model.result.create('pg1', 'PlotGroup3D');
model.result('pg1').run;

model.study.create('std1');
model.study('std1').create('stat', 'Stationary');
model.study('std1').feature('stat').setSolveFor('/physics/mf', true);
model.study('std1').feature('stat').set('plot', true);

model.sol.create('sol1');
model.sol('sol1').study('std1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'stat');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'stat');
model.sol('sol1').create('s1', 'Stationary');
model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('s1').create('i1', 'Iterative');
model.sol('sol1').feature('s1').feature('i1').set('linsolver', 'fgmres');
model.sol('sol1').feature('s1').feature('i1').set('nlinnormuse', true);
model.sol('sol1').feature('s1').feature('i1').create('mg1', 'Multigrid');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').create('so1', 'SOR');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').create('so1', 'SOR');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('cs').create('ams1', 'AMS');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('cs').feature('ams1').set('prefun', 'ams');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('cs').feature('ams1').set('sorvecdof', {'comp1_A'});
model.sol('sol1').feature('s1').feature('fc1').set('linsolver', 'i1');
model.sol('sol1').feature('s1').feature.remove('fcDef');
model.sol('sol1').attach('std1');
model.sol('sol1').runAll;

model.result.create('pg2', 'PlotGroup3D');
model.result('pg2').label('Magnetic Flux Density Norm (mf)');
model.result('pg2').set('frametype', 'spatial');
model.result('pg2').set('showlegendsmaxmin', true);
model.result('pg2').set('data', 'dset1');
model.result('pg2').set('defaultPlotID', 'InterfaceComponents/PlotDefaults/icom6/pdef1/pcond2/pcond1/pg1');
model.result('pg2').feature.create('mslc1', 'Multislice');
model.result('pg2').feature('mslc1').set('showsolutionparams', 'on');
model.result('pg2').feature('mslc1').set('solutionparams', 'parent');
model.result('pg2').feature('mslc1').set('multiplanexmethod', 'coord');
model.result('pg2').feature('mslc1').set('xcoord', 'mf.CPx');
model.result('pg2').feature('mslc1').set('multiplaneymethod', 'coord');
model.result('pg2').feature('mslc1').set('ycoord', 'mf.CPy');
model.result('pg2').feature('mslc1').set('multiplanezmethod', 'coord');
model.result('pg2').feature('mslc1').set('zcoord', 'mf.CPz');
model.result('pg2').feature('mslc1').set('colortable', 'Prism');
model.result('pg2').feature('mslc1').set('colortabletrans', 'nonlinear');
model.result('pg2').feature('mslc1').set('colorcalibration', -0.8);
model.result('pg2').feature('mslc1').set('showsolutionparams', 'on');
model.result('pg2').feature('mslc1').set('data', 'parent');
model.result('pg2').feature.create('strmsl1', 'StreamlineMultislice');
model.result('pg2').feature('strmsl1').set('showsolutionparams', 'on');
model.result('pg2').feature('strmsl1').set('solutionparams', 'parent');
model.result('pg2').feature('strmsl1').set('multiplanexmethod', 'coord');
model.result('pg2').feature('strmsl1').set('xcoord', 'mf.CPx');
model.result('pg2').feature('strmsl1').set('multiplaneymethod', 'coord');
model.result('pg2').feature('strmsl1').set('ycoord', 'mf.CPy');
model.result('pg2').feature('strmsl1').set('multiplanezmethod', 'coord');
model.result('pg2').feature('strmsl1').set('zcoord', 'mf.CPz');
model.result('pg2').feature('strmsl1').set('titletype', 'none');
model.result('pg2').feature('strmsl1').set('posmethod', 'uniform');
model.result('pg2').feature('strmsl1').set('udist', 0.02);
model.result('pg2').feature('strmsl1').set('maxlen', 0.4);
model.result('pg2').feature('strmsl1').set('maxtime', Inf);
model.result('pg2').feature('strmsl1').set('inheritcolor', false);
model.result('pg2').feature('strmsl1').set('showsolutionparams', 'on');
model.result('pg2').feature('strmsl1').set('maxtime', Inf);
model.result('pg2').feature('strmsl1').set('showsolutionparams', 'on');
model.result('pg2').feature('strmsl1').set('maxtime', Inf);
model.result('pg2').feature('strmsl1').set('showsolutionparams', 'on');
model.result('pg2').feature('strmsl1').set('maxtime', Inf);
model.result('pg2').feature('strmsl1').set('showsolutionparams', 'on');
model.result('pg2').feature('strmsl1').set('maxtime', Inf);
model.result('pg2').feature('strmsl1').set('data', 'parent');
model.result('pg2').feature('strmsl1').set('inheritplot', 'mslc1');
model.result('pg2').feature('strmsl1').feature.create('col1', 'Color');
model.result('pg2').feature('strmsl1').feature('col1').set('colortable', 'PrismDark');
model.result('pg2').feature('strmsl1').feature('col1').set('colorlegend', false);
model.result('pg2').feature('strmsl1').feature('col1').set('colortabletrans', 'nonlinear');
model.result('pg2').feature('strmsl1').feature('col1').set('colorcalibration', -0.8);
model.result('pg2').feature('strmsl1').feature.create('filt1', 'Filter');
model.result('pg2').feature('strmsl1').feature('filt1').set('expr', '!isScalingSystemDomain');
model.result('pg2').run;

model.component('comp1').view('view1').hideObjects.clear;
model.component('comp1').view('view1').hideEntities.clear;

model.component('comp1').mesh('mesh1').create('ftet3', 'FreeTet');
model.component('comp1').mesh('mesh1').feature('ftet3').selection.geom('geom1', 3);
model.component('comp1').mesh('mesh1').feature('ftet3').selection.set([1]);
model.component('comp1').mesh('mesh1').run('ftet3');

model.component('comp1').view('view1').hideEntities.create('hide1');
model.component('comp1').view('view1').hideEntities('hide1').geom(3);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);

model.sol('sol1').runAll;

model.component('comp1').mesh('mesh1').feature('size').set('hauto', 1);
model.component('comp1').mesh('mesh1').feature('ftet1').selection.geom('geom1');
model.component('comp1').mesh('mesh1').feature('ftet1').selection.remaining;
model.component('comp1').mesh('mesh1').feature('ftet1').selection.geom('geom1');
model.component('comp1').mesh('mesh1').run('ftet1');
model.component('comp1').mesh('mesh1').feature('ftet2').active(false);
model.component('comp1').mesh('mesh1').feature('ftet3').active(false);

model.component('comp1').selection('sel1').set([2 3 4 5 6 15 17 18]);
model.component('comp1').selection('sel1').all;

model.label('Air bearing study.mph');

model.sol('sol1').updateSolution;

model.result('pg2').run;
model.result('pg2').set('legendpos', 'right');
model.result('pg2').set('legendactive', false);
model.result('pg2').set('showlegendsunit', true);
model.result('pg2').run;

model.study('std1').setStoreSolution(true);
model.study('std1').setGenIntermediatePlots(true);

model.sol('sol1').updateSolution;

model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').selection.geom('geom1', 3);
model.result('pg2').selection.geom('geom1', 3);
model.result('pg2').selection.set([3]);
model.result('pg2').run;
model.result('pg2').selection.geom('geom1', 1);
model.result('pg2').selection.geom('geom1', 1);
model.result('pg2').selection.set([1017]);
model.result('pg2').run;
model.result('pg2').selection.geom('geom1', 2);
model.result('pg2').selection.geom('geom1', 2);
model.result('pg2').selection.set([508]);
model.result('pg2').run;
model.result('pg2').set('applyselectiontodatasetedges', true);
model.result('pg2').selection.geom('geom1');
model.result('pg2').run;

model.component('comp1').material.create('mat4', 'Common');
model.component('comp1').material('mat4').label('Aluminum [solid,bulk]');
model.component('comp1').material('mat4').propertyGroup('def').set('thermalconductivity', 'k_solid_bulk_1(T)');
model.component('comp1').material('mat4').propertyGroup('def').set('INFO_PREFIX:thermalconductivity', ['Reference: C.Y. Ho, R.W. Powell, and P.E. Liley, Journal of Physical and Chemical Reference Data, v1, No. 2, p279 (1972) https://srd.nist.gov/JPCRD/jpcrd7.pdf' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), well-annealed with residual resistivity of 0.000594 uohm-cm, error is 2% to 3% near RT, 3% to 5% at others, > 99.9999 (wt%)']);
model.component('comp1').material('mat4').propertyGroup('def').set('resistivity', 'res_solid_1(T)');
model.component('comp1').material('mat4').propertyGroup('def').set('INFO_PREFIX:resistivity', ['Reference: P.D. Desai, H.M. James, and C.Y. Ho, Journal of Physical and Chemical Reference Data, v13, No. 4, p1131 (1984) https://srd.nist.gov/JPCRD/jpcrd260.pdf' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), data below -233.1 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (40 K) is for Al with a residual resistivity of 1 x 10{' native2unicode(hex2dec({'00' 'b9'}), 'unicode')  native2unicode(hex2dec({'00' 'b2'}), 'unicode') ' ohm-m, not corrected for thermal expansion, > 99.9 (wt%)']);
model.component('comp1').material('mat4').propertyGroup('def').set('thermalexpansioncoefficient', '(alpha_solid_1(T)+(Tempref-293[K])*if(abs(T-Tempref)>1e-3,(alpha_solid_1(T)-alpha_solid_1(Tempref))/(T-Tempref),d(alpha_solid_1(T),T)))/(1+alpha_solid_1(Tempref)*(Tempref-293[K]))');
model.component('comp1').material('mat4').propertyGroup('def').set('INFO_PREFIX:thermalexpansioncoefficient', ['Reference: F.C. Nix and D. MacNair, Physical Review, v60, p597 (1941) https://doi.org/10.1103/PhysRev.60.597 and R. Feder and A.S. Norwick, Physical Review, v109, p1959 (1958) https://doi.org/10.1103/PhysRev.109.1959 and D.F. Gibbons, Physical Review, v112, p136 (1958) https://doi.org/10.1103/PhysRev.112.136 and F.R. Kroeger Jr., Iowa State University, Retrospective Theses and Dissertations, 5151 (1974) https://lib.dr.iastate.edu/rtd/5151' newline 'Note: the reference temperature is 20 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (293 K), Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), 8% error' newline 'Reference temperature: 293.00[K]']);
model.component('comp1').material('mat4').propertyGroup('def').set('heatcapacity', 'C_solid_1(T)');
model.component('comp1').material('mat4').propertyGroup('def').set('INFO_PREFIX:heatcapacity', ['Reference: B.J. McBride, S. Gordon, and M.A. Reno, Thermodynamic Data for Fifty Reference Elements, NASA Technical Paper 3287 (1993) https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/20010021116.pdf and J.E. Jensen, W.A. Tuttle, R.B. Stewart, H. Brechna, and A.G. Prodell, Brookhaven National Laboratory Selected Cryogenics Data Handbook, v1, sections I-IX (1980) https://www.bnl.gov/magnets/Staff/Gupta/cryogenic-data-handbook/index.htm' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K)']);
model.component('comp1').material('mat4').propertyGroup('def').set('electricconductivity', 'sigma_solid_1(T)');
model.component('comp1').material('mat4').propertyGroup('def').set('INFO_PREFIX:electricconductivity', ['Reference: P.D. Desai, H.M. James, and C.Y. Ho, Journal of Physical and Chemical Reference Data, v13, No. 4, p1131 (1984) https://srd.nist.gov/JPCRD/jpcrd260.pdf' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), data below -233.1 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (40 K) is for Al with a residual resistivity of 1 x 10{' native2unicode(hex2dec({'00' 'b9'}), 'unicode')  native2unicode(hex2dec({'00' 'b2'}), 'unicode') ' ohm-m, not corrected for thermal expansion, calculated as the reciprocal of the resistivity, > 99.9 (wt%)']);
model.component('comp1').material('mat4').propertyGroup('def').set('HC', 'HC_solid_1(T)');
model.component('comp1').material('mat4').propertyGroup('def').set('INFO_PREFIX:HC', ['Reference: B.J. McBride, S. Gordon, and M.A. Reno, Thermodynamic Data for Fifty Reference Elements, NASA Technical Paper 3287 (1993) https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/20010021116.pdf and J.E. Jensen, W.A. Tuttle, R.B. Stewart, H. Brechna, and A.G. Prodell, Brookhaven National Laboratory Selected Cryogenics Data Handbook, v1, sections I-IX (1980) https://www.bnl.gov/magnets/Staff/Gupta/cryogenic-data-handbook/index.htm' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K)']);
model.component('comp1').material('mat4').propertyGroup('def').set('VP', 'VP_solid_1(T)');
model.component('comp1').material('mat4').propertyGroup('def').set('INFO_PREFIX:VP', ['Reference: C.B. Alcock, V.P. Itkin, and M.K. Horrigan, Canadian Metallurgical Quarterly, v23, No. 3, p309 (1984) https://doi.org/10.1179/cmq.1984.23.3.309' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), 5% error or less']);
model.component('comp1').material('mat4').propertyGroup('def').set('density', 'rho_solid_1(T)');
model.component('comp1').material('mat4').propertyGroup('def').set('INFO_PREFIX:density', ['Reference: F.C. Nix and D. MacNair, Physical Review, v60, p597 (1941) https://doi.org/10.1103/PhysRev.60.597 and R. Feder and A.S. Norwick, Physical Review, v109, p1959 (1958) https://doi.org/10.1103/PhysRev.109.1959 and D.F. Gibbons, Physical Review, v112, p136 (1958) https://doi.org/10.1103/PhysRev.112.136 and F.R. Kroeger Jr., Iowa State University, Retrospective Theses and Dissertations, 5151 (1974) https://lib.dr.iastate.edu/rtd/5151' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), calculated from the linear expansion and the room temperature density']);
model.component('comp1').material('mat4').propertyGroup('def').set('TD', 'TD_solid_bulk_1(T)');
model.component('comp1').material('mat4').propertyGroup('def').set('INFO_PREFIX:TD', ['Reference: B.J. McBride, S. Gordon, and M.A. Reno, Thermodynamic Data for Fifty Reference Elements, NASA Technical Paper 3287 (1993) https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/20010021116.pdf and J.E. Jensen, W.A. Tuttle, R.B. Stewart, H. Brechna, and A.G. Prodell, Brookhaven National Laboratory Selected Cryogenics Data Handbook, v1, sections I-IX (1980) https://www.bnl.gov/magnets/Staff/Gupta/cryogenic-data-handbook/index.htm and C.Y. Ho, R.W. Powell, and P.E. Liley, Journal of Physical and Chemical Reference Data, v1, No. 2, p279 (1972) https://srd.nist.gov/JPCRD/jpcrd7.pdf' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), calculated from the thermal conductivity, density, and specific heat']);
model.component('comp1').material('mat4').propertyGroup('def').func.create('k_solid_bulk_1', 'Piecewise');
model.component('comp1').material('mat4').propertyGroup('def').func('k_solid_bulk_1').set('funcname', 'k_solid_bulk_1');
model.component('comp1').material('mat4').propertyGroup('def').func('k_solid_bulk_1').set('arg', 'T');
model.component('comp1').material('mat4').propertyGroup('def').func('k_solid_bulk_1').set('extrap', 'constant');
model.component('comp1').material('mat4').propertyGroup('def').func('k_solid_bulk_1').set('pieces', {'0.0' '14.0' '3805.9257*T^1+248.253751*T^2-64.8829086*T^3+2.73457966*T^4-0.0187346194*T^5';  ...
'14.0' '30.0' '17649.5661+3071.71083*T^1-356.155686*T^2+12.1632633*T^3-0.139143056*T^4';  ...
'30.0' '60.0' '54213.1094-3716.7432*T^1+102.759822*T^2-1.3121209*T^3+0.00641434375*T^4';  ...
'60.0' '90.0' '16865.6571-727.283333*T^1+12.6041667*T^2-0.100666667*T^3+3.08333333E-4*T^4';  ...
'90.0' '100.0' '5295.0046-144.833278*T^1+1.56558379*T^2-0.00751036234*T^3+1.34350403E-5*T^4';  ...
'100.0' '207.0' '5666.70732-182.039979*T^1+2.55413737*T^2-0.0190491433*T^3+7.93330491E-5*T^4-1.74616787E-7*T^5+1.5857953E-10*T^6';  ...
'207.0' '425.0' '464.138175-2.83651472*T^1+0.0125251645*T^2-2.33826954E-5*T^3+1.56955919E-8*T^4';  ...
'425.0' '933.5' '265.070681-0.150430674*T^1+3.85488463E-4*T^2-5.21464711E-7*T^3+2.24638309E-10*T^4'});
model.component('comp1').material('mat4').propertyGroup('def').func('k_solid_bulk_1').label('Piecewise');
model.component('comp1').material('mat4').propertyGroup('def').func('k_solid_bulk_1').set('fununit', 'W/(m*K)');
model.component('comp1').material('mat4').propertyGroup('def').func('k_solid_bulk_1').set('argunit', 'K');
model.component('comp1').material('mat4').propertyGroup('def').func.create('res_solid_1', 'Piecewise');
model.component('comp1').material('mat4').propertyGroup('def').func('res_solid_1').set('funcname', 'res_solid_1');
model.component('comp1').material('mat4').propertyGroup('def').func('res_solid_1').set('arg', 'T');
model.component('comp1').material('mat4').propertyGroup('def').func('res_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat4').propertyGroup('def').func('res_solid_1').set('pieces', {'1.0' '19.5' '1.091612E-12-1.10726E-13*T^1+3.696901E-14*T^2-2.781934E-15*T^3+1.008733E-16*T^4';  ...
'19.5' '50.6' '-3.323487E-11+7.29041E-12*T^1-4.771551E-13*T^2+1.071535E-14*T^3';  ...
'50.6' '200.0' '1.0445563E-10-3.988929E-11*T^1+1.061978E-12*T^2-2.337666E-15*T^3';  ...
'200.0' '933.16' '-1.037048E-8+1.451201E-10*T^1-8.192563E-14*T^2+6.619834E-17*T^3'});
model.component('comp1').material('mat4').propertyGroup('def').func('res_solid_1').label('Piecewise 1');
model.component('comp1').material('mat4').propertyGroup('def').func('res_solid_1').set('fununit', 'ohm*m');
model.component('comp1').material('mat4').propertyGroup('def').func('res_solid_1').set('argunit', 'K');
model.component('comp1').material('mat4').propertyGroup('def').func.create('alpha_solid_1', 'Piecewise');
model.component('comp1').material('mat4').propertyGroup('def').func('alpha_solid_1').set('funcname', 'alpha_solid_1');
model.component('comp1').material('mat4').propertyGroup('def').func('alpha_solid_1').set('arg', 'T');
model.component('comp1').material('mat4').propertyGroup('def').func('alpha_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat4').propertyGroup('def').func('alpha_solid_1').set('pieces', {'10.0' '137.0' '1.43109188E-5+3.37038626E-8*T^1+8.16435956E-10*T^2-1.08888719E-11*T^3+5.23223423E-14*T^4-8.82682652E-17*T^5'; '137.0' '247.0' '2.07834478E-5-4.08338871E-8*T^1+2.32930107E-10*T^2+1.49187457E-12*T^3-1.07271913E-14*T^4+1.67112321E-17*T^5'; '247.0' '933.16' '7.73307064E-6+1.51327401E-7*T^1-5.79889205E-10*T^2+1.08298998E-12*T^3-9.44189288E-16*T^4+3.12958753E-19*T^5'});
model.component('comp1').material('mat4').propertyGroup('def').func('alpha_solid_1').label('Piecewise 2');
model.component('comp1').material('mat4').propertyGroup('def').func('alpha_solid_1').set('fununit', '1/K');
model.component('comp1').material('mat4').propertyGroup('def').func('alpha_solid_1').set('argunit', 'K');
model.component('comp1').material('mat4').propertyGroup('def').func.create('C_solid_1', 'Piecewise');
model.component('comp1').material('mat4').propertyGroup('def').func('C_solid_1').set('funcname', 'C_solid_1');
model.component('comp1').material('mat4').propertyGroup('def').func('C_solid_1').set('arg', 'T');
model.component('comp1').material('mat4').propertyGroup('def').func('C_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat4').propertyGroup('def').func('C_solid_1').set('pieces', {'10.0' '26.0' '10.0147917-3.90760773*T^1+0.648758442*T^2-0.0548161053*T^3+0.00262892806*T^4-6.45484119E-5*T^5+6.54234808E-7*T^6';  ...
'26.0' '108.0' '-71.838152+9.71552515*T^1-0.55581666*T^2+0.0172355785*T^3-2.25678347E-4*T^4+1.36370432E-6*T^5-3.14875506E-9*T^6';  ...
'108.0' '300.0' '-892.25551+28.0210131*T^1-0.219689057*T^2+0.00103357024*T^3-2.84563726E-6*T^4+4.15606786E-9*T^5-2.45888664E-12*T^6';  ...
'300.0' '933.16' '663.125754+1.17769949*T^1-0.00154549231*T^2+1.04234523E-6*T^3'});
model.component('comp1').material('mat4').propertyGroup('def').func('C_solid_1').label('Piecewise 3');
model.component('comp1').material('mat4').propertyGroup('def').func('C_solid_1').set('fununit', 'J/(kg*K)');
model.component('comp1').material('mat4').propertyGroup('def').func('C_solid_1').set('argunit', 'K');
model.component('comp1').material('mat4').propertyGroup('def').func.create('sigma_solid_1', 'Piecewise');
model.component('comp1').material('mat4').propertyGroup('def').func('sigma_solid_1').set('funcname', 'sigma_solid_1');
model.component('comp1').material('mat4').propertyGroup('def').func('sigma_solid_1').set('arg', 'T');
model.component('comp1').material('mat4').propertyGroup('def').func('sigma_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat4').propertyGroup('def').func('sigma_solid_1').set('pieces', {'1.0' '19.5' '1/(1.008733E-16*T^4-2.781934E-15*T^3+3.696901E-14*T^2-1.107260E-13*T+1.091612E-12)';  ...
'19.5' '50.6' '1/(1.071535E-14*T^3-4.771551E-13*T^2+7.290410E-12*T-3.323487E-11)';  ...
'50.6' '200.0' '1/(-2.337666E-15*T^3+1.061978E-12*T^2-3.988929E-11*T+1.0445563E-10)';  ...
'200.0' '933.16' '1/(6.619834E-17*T^3-8.192563E-14*T^2+1.451201E-10*T-1.037048E-08)'});
model.component('comp1').material('mat4').propertyGroup('def').func('sigma_solid_1').label('Piecewise 4');
model.component('comp1').material('mat4').propertyGroup('def').func('sigma_solid_1').set('fununit', 'S/m');
model.component('comp1').material('mat4').propertyGroup('def').func('sigma_solid_1').set('argunit', 'K');
model.component('comp1').material('mat4').propertyGroup('def').func.create('HC_solid_1', 'Piecewise');
model.component('comp1').material('mat4').propertyGroup('def').func('HC_solid_1').set('funcname', 'HC_solid_1');
model.component('comp1').material('mat4').propertyGroup('def').func('HC_solid_1').set('arg', 'T');
model.component('comp1').material('mat4').propertyGroup('def').func('HC_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat4').propertyGroup('def').func('HC_solid_1').set('pieces', {'10.0' '26.0' '0.270214103-0.105433118*T^1+0.0175044759*T^2-0.00147902075*T^3+7.09324227E-5*T^4-1.74161297E-6*T^5+1.76522365E-8*T^6';  ...
'26.0' '108.0' '-1.93830109+0.262139441*T^1-0.0149967672*T^2+4.65041763E-4*T^3-6.08914034E-6*T^4+3.67947882E-8*T^5-8.49581346E-11*T^6';  ...
'108.0' '300.0' '-24.0743921+0.756048963*T^1-0.00592754029*T^2+2.78872755E-5*T^3-7.67795618E-8*T^4+1.12136945E-10*T^5-6.634445E-14*T^6';  ...
'300.0' '933.16' '17.8921265+0.0317760987*T^1-4.16997008E-5*T^2+2.81240378E-8*T^3'});
model.component('comp1').material('mat4').propertyGroup('def').func('HC_solid_1').label('Piecewise 5');
model.component('comp1').material('mat4').propertyGroup('def').func('HC_solid_1').set('fununit', 'J/(mol*K)');
model.component('comp1').material('mat4').propertyGroup('def').func('HC_solid_1').set('argunit', 'K');
model.component('comp1').material('mat4').propertyGroup('def').func.create('VP_solid_1', 'Piecewise');
model.component('comp1').material('mat4').propertyGroup('def').func('VP_solid_1').set('funcname', 'VP_solid_1');
model.component('comp1').material('mat4').propertyGroup('def').func('VP_solid_1').set('arg', 'T');
model.component('comp1').material('mat4').propertyGroup('def').func('VP_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat4').propertyGroup('def').func('VP_solid_1').set('pieces', {'293.0' '933.16' '(exp((-1.73420000e+04/T-7.92700000e-01*log10(T)+1.23398100e+01)*log(10.0)))*1.33320000e+02'});
model.component('comp1').material('mat4').propertyGroup('def').func('VP_solid_1').label('Piecewise 6');
model.component('comp1').material('mat4').propertyGroup('def').func('VP_solid_1').set('fununit', 'Pa');
model.component('comp1').material('mat4').propertyGroup('def').func('VP_solid_1').set('argunit', 'K');
model.component('comp1').material('mat4').propertyGroup('def').func.create('rho_solid_1', 'Piecewise');
model.component('comp1').material('mat4').propertyGroup('def').func('rho_solid_1').set('funcname', 'rho_solid_1');
model.component('comp1').material('mat4').propertyGroup('def').func('rho_solid_1').set('arg', 'T');
model.component('comp1').material('mat4').propertyGroup('def').func('rho_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat4').propertyGroup('def').func('rho_solid_1').set('pieces', {'10.0' '247.0' '2734.57514-0.0398881851*T^1+0.00187559788*T^2-3.69839365E-5*T^3+2.55112441E-7*T^4-8.1685655E-10*T^5+1.00385922E-12*T^6'; '247.0' '933.16' '2751.77566-0.179058415*T^1+4.65832302E-5*T^2-1.51653304E-7*T^3+6.83086165E-11*T^4+8.71886752E-16*T^5-2.11179857E-18*T^6'});
model.component('comp1').material('mat4').propertyGroup('def').func('rho_solid_1').label('Piecewise 7');
model.component('comp1').material('mat4').propertyGroup('def').func('rho_solid_1').set('fununit', 'kg/m^3');
model.component('comp1').material('mat4').propertyGroup('def').func('rho_solid_1').set('argunit', 'K');
model.component('comp1').material('mat4').propertyGroup('def').func.create('TD_solid_bulk_1', 'Piecewise');
model.component('comp1').material('mat4').propertyGroup('def').func('TD_solid_bulk_1').set('funcname', 'TD_solid_bulk_1');
model.component('comp1').material('mat4').propertyGroup('def').func('TD_solid_bulk_1').set('arg', 'T');
model.component('comp1').material('mat4').propertyGroup('def').func('TD_solid_bulk_1').set('extrap', 'constant');
model.component('comp1').material('mat4').propertyGroup('def').func('TD_solid_bulk_1').set('pieces', {'20.0' '74.0' 'exp(-5807.88202+9180.60153*log(T)^1-6008.76256*log(T)^2+2086.0455*log(T)^3-405.314165*log(T)^4+41.7772226*log(T)^5-1.78390161*log(T)^6)'; '74.0' '329.0' 'exp(-6160.54247+7781.80151*log(T)^1-4051.85204*log(T)^2+1114.52801*log(T)^3-171.115377*log(T)^4+13.9200755*log(T)^5-0.469134794*log(T)^6)'; '329.0' '933.16' 'exp(63264.9872-60576.1854*log(T)^1+24137.9525*log(T)^2-5124.1508*log(T)^3+611.192838*log(T)^4-38.8356702*log(T)^5+1.02695017*log(T)^6)'});
model.component('comp1').material('mat4').propertyGroup('def').func('TD_solid_bulk_1').label('Piecewise 8');
model.component('comp1').material('mat4').propertyGroup('def').func('TD_solid_bulk_1').set('fununit', 'm^2/s');
model.component('comp1').material('mat4').propertyGroup('def').func('TD_solid_bulk_1').set('argunit', 'K');
model.component('comp1').material('mat4').propertyGroup('def').addInput('temperature');
model.component('comp1').material('mat4').propertyGroup('def').addInput('strainreferencetemperature');
model.component('comp1').material('mat4').propertyGroup.create('ThermalExpansion', 'Thermal_expansion');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').set('dL', '(dL_solid_1(T)-dL_solid_1(Tempref))/(1+dL_solid_1(Tempref))');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').set('INFO_PREFIX:dL', ['Reference: F.C. Nix and D. MacNair, Physical Review, v60, p597 (1941) https://doi.org/10.1103/PhysRev.60.597 and R. Feder and A.S. Norwick, Physical Review, v109, p1959 (1958) https://doi.org/10.1103/PhysRev.109.1959 and D.F. Gibbons, Physical Review, v112, p136 (1958) https://doi.org/10.1103/PhysRev.112.136 and F.R. Kroeger Jr., Iowa State University, Retrospective Theses and Dissertations, 5151 (1974) https://lib.dr.iastate.edu/rtd/5151' newline 'Note: the reference temperature is 20 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (293 K), Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K)' newline 'Reference temperature: 293.00[K]']);
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').set('alphatan', 'CTE_solid_1(T)');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').set('INFO_PREFIX:alphatan', ['Reference: F.C. Nix and D. MacNair, Physical Review, v60, p597 (1941) https://doi.org/10.1103/PhysRev.60.597 and D.F. Gibbons, Physical Review, v112, p136 (1958) https://doi.org/10.1103/PhysRev.112.136 and F.R. Kroeger Jr., Iowa State University, Retrospective Theses and Dissertations, 5151 (1974) https://lib.dr.iastate.edu/rtd/5151' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K)']);
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').func.create('dL_solid_1', 'Piecewise');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').func('dL_solid_1').set('funcname', 'dL_solid_1');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').func('dL_solid_1').set('arg', 'T');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').func('dL_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').func('dL_solid_1').set('pieces', {'10.0' '25.0' '-0.00416732581-3.26820168E-13*T^1-6.40537926E-9*T^2+7.35005611E-10*T^3-3.34650303E-11*T^4+1.0196671E-12*T^5-9.00232037E-15*T^6'; '25.0' '189.0' '-0.00424379768+7.68932463E-6*T^1-2.86497054E-7*T^2+4.90825879E-9*T^3-3.08623048E-11*T^4+8.74528953E-14*T^5-8.97335932E-17*T^6'; '189.0' '933.16' '-0.00226518274-3.66079307E-5*T^1+3.21234948E-7*T^2-8.97205299E-10*T^3+1.35963749E-12*T^4-1.03588624E-15*T^5+3.12958765E-19*T^6'});
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').func('dL_solid_1').label('Piecewise');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').func('dL_solid_1').set('fununit', '');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').func('dL_solid_1').set('argunit', 'K');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').func.create('CTE_solid_1', 'Piecewise');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').func('CTE_solid_1').set('funcname', 'CTE_solid_1');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').func('CTE_solid_1').set('arg', 'T');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').func('CTE_solid_1').set('extrap', 'constant');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').func('CTE_solid_1').set('pieces', {'10.0' '27.0' '3.26614079E-8-1.2811084E-8*T^1+2.2050497E-9*T^2-1.3386148E-10*T^3+5.0983621E-12*T^4-5.4014065E-14*T^5';  ...
'27.0' '79.0' '-3.29120927E-6+3.06868839E-7*T^1-1.00481619E-8*T^2+1.72476772E-10*T^3-8.8460608E-13*T^4';  ...
'79.0' '230.0' '-2.28632108E-5+6.67491471E-7*T^1-4.40262199E-9*T^2+1.45535841E-11*T^3-1.91062188E-14*T^4';  ...
'230.0' '900.0' '1.24556905E-5+5.05077193E-8*T^1-5.80655625E-11*T^2+3.01430546E-14*T^3'});
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').func('CTE_solid_1').label('Piecewise 1');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').func('CTE_solid_1').set('fununit', '1/K');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').func('CTE_solid_1').set('argunit', 'K');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').addInput('temperature');
model.component('comp1').material('mat4').propertyGroup('ThermalExpansion').addInput('strainreferencetemperature');
model.component('comp1').material('mat4').propertyGroup.create('Enu', 'Young''s_modulus_and_Poisson''s_ratio');
model.component('comp1').material('mat4').propertyGroup('Enu').set('E', 'E(T)');
model.component('comp1').material('mat4').propertyGroup('Enu').set('INFO_PREFIX:E', ['Reference: temperature dependence from M. Lalpoor, D.G. Eskin, and L. Katgerman, Metallurgical and Materials Transactions A, v40A, No. 13, p3304 (2009) https://doi.org/10.1007/s11661-009-0031-y and S.C. Sharma, Metallurgical and Materials Transactions A, v31A, No. 3, p773 (2000) https://doi.org/10.1007/s11661-000-0019-0 and K. Sakai, A. Matsumuro, and M. Senoo, Journal of Materials Science, v31, No. 12, p3309 (1996) https://doi.org/10.1007/BF00354683 and E.R. Naimon, H.M. Ledbetter, and W.F. Weston, Journal of Materials Science, v10, No. 8, p1309 (1975) https://doi.org/10.1007/BF00540820 and R.B. McLellan and T. Ishikawa, Journal of Physics and Chemistry of Solids, v48, No. 7, p603 (1987) https://doi.org/10.1016/0022-3697(87)90147-8 and H.J. Stokes, Scientific Instruments, v37, No. 4, p117 (1960) https://doi.org/10.1088/0950-7671/37/4/302' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), uncertainty at -273.1 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (0 K) is 5%, at 500 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (773 K) it is 10%']);
model.component('comp1').material('mat4').propertyGroup('Enu').set('nu', 'nu(T)');
model.component('comp1').material('mat4').propertyGroup('Enu').set('INFO_PREFIX:nu', ['Reference: temperature dependence from M. Lalpoor, D.G. Eskin, and L. Katgerman, Metallurgical and Materials Transactions A, v40A, No. 13, p3304 (2009) https://doi.org/10.1007/s11661-009-0031-y and S.C. Sharma, Metallurgical and Materials Transactions A, v31A, No. 3, p773 (2000) https://doi.org/10.1007/s11661-000-0019-0 and K. Sakai, A. Matsumuro, and M. Senoo, Journal of Materials Science, v31, No. 12, p3309 (1996) https://doi.org/10.1007/BF00354683 and E.R. Naimon, H.M. Ledbetter, and W.F. Weston, Journal of Materials Science, v10, No. 8, p1309 (1975) https://doi.org/10.1007/BF00540820 and R.B. McLellan and T. Ishikawa, Journal of Physics and Chemistry of Solids, v48, No. 7, p603 (1987) https://doi.org/10.1016/0022-3697(87)90147-8 and H.J. Stokes, Scientific Instruments, v37, No. 4, p117 (1960) https://doi.org/10.1088/0950-7671/37/4/302' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), uncertainty at -273.1 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (0 K) is 5%, at 500 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (773 K) it is 10%']);
model.component('comp1').material('mat4').propertyGroup('Enu').func.create('E', 'Piecewise');
model.component('comp1').material('mat4').propertyGroup('Enu').func('E').set('funcname', 'E');
model.component('comp1').material('mat4').propertyGroup('Enu').func('E').set('arg', 'T');
model.component('comp1').material('mat4').propertyGroup('Enu').func('E').set('extrap', 'constant');
model.component('comp1').material('mat4').propertyGroup('Enu').func('E').set('pieces', {'0.0' '773.16' '7.659324E10+2007396.0*T^1-186458.4*T^2+419.2175*T^3-0.3495083*T^4'});
model.component('comp1').material('mat4').propertyGroup('Enu').func('E').label('Piecewise');
model.component('comp1').material('mat4').propertyGroup('Enu').func('E').set('fununit', 'Pa');
model.component('comp1').material('mat4').propertyGroup('Enu').func('E').set('argunit', 'K');
model.component('comp1').material('mat4').propertyGroup('Enu').func.create('nu', 'Piecewise');
model.component('comp1').material('mat4').propertyGroup('Enu').func('nu').set('funcname', 'nu');
model.component('comp1').material('mat4').propertyGroup('Enu').func('nu').set('arg', 'T');
model.component('comp1').material('mat4').propertyGroup('Enu').func('nu').set('extrap', 'constant');
model.component('comp1').material('mat4').propertyGroup('Enu').func('nu').set('pieces', {'0.0' '773.16' '0.3238668+3.754548E-6*T^1+2.213647E-7*T^2-6.565023E-10*T^3+4.21277E-13*T^4+3.170505E-16*T^5'});
model.component('comp1').material('mat4').propertyGroup('Enu').func('nu').label('Piecewise 1');
model.component('comp1').material('mat4').propertyGroup('Enu').func('nu').set('fununit', '');
model.component('comp1').material('mat4').propertyGroup('Enu').func('nu').set('argunit', 'K');
model.component('comp1').material('mat4').propertyGroup('Enu').addInput('temperature');
model.component('comp1').material('mat4').propertyGroup.create('KG', 'Bulk_modulus_and_shear_modulus');
model.component('comp1').material('mat4').propertyGroup('KG').set('G', 'mu(T)');
model.component('comp1').material('mat4').propertyGroup('KG').set('INFO_PREFIX:G', ['Reference: temperature dependence from M. Lalpoor, D.G. Eskin, and L. Katgerman, Metallurgical and Materials Transactions A, v40A, No. 13, p3304 (2009) https://doi.org/10.1007/s11661-009-0031-y and S.C. Sharma, Metallurgical and Materials Transactions A, v31A, No. 3, p773 (2000) https://doi.org/10.1007/s11661-000-0019-0 and K. Sakai, A. Matsumuro, and M. Senoo, Journal of Materials Science, v31, No. 12, p3309 (1996) https://doi.org/10.1007/BF00354683 and E.R. Naimon, H.M. Ledbetter, and W.F. Weston, Journal of Materials Science, v10, No. 8, p1309 (1975) https://doi.org/10.1007/BF00540820 and R.B. McLellan and T. Ishikawa, Journal of Physics and Chemistry of Solids, v48, No. 7, p603 (1987) https://doi.org/10.1016/0022-3697(87)90147-8 and H.J. Stokes, Scientific Instruments, v37, No. 4, p117 (1960) https://doi.org/10.1088/0950-7671/37/4/302' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), uncertainty at -273.1 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (0 K) is 5%, at 500 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (773 K) it is 10%']);
model.component('comp1').material('mat4').propertyGroup('KG').set('K', 'kappa(T)');
model.component('comp1').material('mat4').propertyGroup('KG').set('INFO_PREFIX:K', ['Reference: temperature dependence from M. Lalpoor, D.G. Eskin, and L. Katgerman, Metallurgical and Materials Transactions A, v40A, No. 13, p3304 (2009) https://doi.org/10.1007/s11661-009-0031-y and S.C. Sharma, Metallurgical and Materials Transactions A, v31A, No. 3, p773 (2000) https://doi.org/10.1007/s11661-000-0019-0 and K. Sakai, A. Matsumuro, and M. Senoo, Journal of Materials Science, v31, No. 12, p3309 (1996) https://doi.org/10.1007/BF00354683 and E.R. Naimon, H.M. Ledbetter, and W.F. Weston, Journal of Materials Science, v10, No. 8, p1309 (1975) https://doi.org/10.1007/BF00540820 and R.B. McLellan and T. Ishikawa, Journal of Physics and Chemistry of Solids, v48, No. 7, p603 (1987) https://doi.org/10.1016/0022-3697(87)90147-8 and H.J. Stokes, Scientific Instruments, v37, No. 4, p117 (1960) https://doi.org/10.1088/0950-7671/37/4/302' newline 'Note: Tmp near 660 ' native2unicode(hex2dec({'00' 'b0'}), 'unicode') 'C (934 K), errors may be large']);
model.component('comp1').material('mat4').propertyGroup('KG').func.create('mu', 'Piecewise');
model.component('comp1').material('mat4').propertyGroup('KG').func('mu').set('funcname', 'mu');
model.component('comp1').material('mat4').propertyGroup('KG').func('mu').set('arg', 'T');
model.component('comp1').material('mat4').propertyGroup('KG').func('mu').set('extrap', 'constant');
model.component('comp1').material('mat4').propertyGroup('KG').func('mu').set('pieces', {'0.0' '773.16' '2.894653E10-120032.4*T^1-69037.36*T^2+158.6722*T^3-0.1348974*T^4'});
model.component('comp1').material('mat4').propertyGroup('KG').func('mu').label('Piecewise');
model.component('comp1').material('mat4').propertyGroup('KG').func('mu').set('fununit', 'Pa');
model.component('comp1').material('mat4').propertyGroup('KG').func('mu').set('argunit', 'K');
model.component('comp1').material('mat4').propertyGroup('KG').func.create('kappa', 'Piecewise');
model.component('comp1').material('mat4').propertyGroup('KG').func('kappa').set('funcname', 'kappa');
model.component('comp1').material('mat4').propertyGroup('KG').func('kappa').set('arg', 'T');
model.component('comp1').material('mat4').propertyGroup('KG').func('kappa').set('extrap', 'constant');
model.component('comp1').material('mat4').propertyGroup('KG').func('kappa').set('pieces', {'0.0' '773.16' '7.252413E10+1872882.0*T^1-71106.44*T^2+52.7109*T^3'});
model.component('comp1').material('mat4').propertyGroup('KG').func('kappa').label('Piecewise 1');
model.component('comp1').material('mat4').propertyGroup('KG').func('kappa').set('fununit', 'Pa');
model.component('comp1').material('mat4').propertyGroup('KG').func('kappa').set('argunit', 'K');
model.component('comp1').material('mat4').propertyGroup('KG').addInput('temperature');
model.component('comp1').material('mat4').set('family', 'aluminum');
model.component('comp1').material('mat4').selection.set([4 6]);
model.component('comp1').material('mat2').active(false);

model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg1').set('applyselectiontodatasetedges', false);
model.result('pg1').run;

model.sol('sol1').updateSolution;

model.result('pg2').set('applyselectiontodatasetedges', true);
model.result('pg2').run;
model.result.table.create('evl3', 'Table');
model.result.table('evl3').comments('Interactive 3D values');
model.result.table('evl3').label('Evaluation 3D');
model.result.table('evl3').addRow([-5.7513549756027516E-9 -0.011886913421199935 -0.025524390792995483 6.595111942499707], [0 0 0 0]);
model.result('pg2').set('showlegendsmaxmin', false);
model.result('pg2').set('inherithide', false);

model.component('comp1').view('view1').set('showlabels', false);

model.result('pg2').run;
model.result('pg2').set('titlecolor', 'fromtheme');
model.result('pg2').set('titlenumberformat', 'engineering');
model.result('pg2').set('titletrailingzeros', true);

model.component('comp1').physics('mf').prop('BackgroundField').set('Ab', [1 1 0]);

model.sol('sol1').updateSolution;

model.result('pg2').run;

model.component('comp1').material('mat1').selection.set([2 5 7 8 15 17 18 19 27 28]);
model.component('comp1').material('mat3').selection.set([1]);

model.component('comp1').view('view1').hideObjects.clear;
model.component('comp1').view('view1').hideEntities.clear;
model.component('comp1').view('view1').hideEntities.create('hide1');
model.component('comp1').view('view1').hideEntities('hide1').geom(3);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);

model.component('comp1').physics('mf').prop('BackgroundField').set('Ab', [1 1 1]);

model.component('comp1').mesh('mesh1').automatic(true);
model.component('comp1').mesh('mesh1').automatic(false);
model.component('comp1').mesh('mesh1').feature('ftet2').set('xscale', 0.1);
model.component('comp1').mesh('mesh1').feature('ftet2').set('yscale', 0.1);
model.component('comp1').mesh('mesh1').feature('ftet2').set('zscale', 0.1);
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run('ftet2');

model.sol('sol1').updateSolution;

model.result('pg2').run;
model.result('pg2').selection.geom('geom1', 2);
model.result('pg2').selection.geom('geom1', 2);
model.result('pg2').selection.set([12]);
model.result('pg2').selection.geom('geom1', 3);
model.result('pg2').selection.geom('geom1', 3);
model.result('pg2').selection.set([5]);
model.result('pg2').run;
model.result('pg2').selection.geom('geom1', 3);
model.result('pg2').selection.set([4 5]);
model.result('pg2').selection.geom('geom1', 3);
model.result('pg2').selection.set([4]);
model.result('pg2').run;

model.component('comp1').physics('mf').prop('BackgroundField').set('Ab', {'0.0002 ' '0.0002 ' '0.0002 '});

model.result('pg1').set('applyselectiontodatasetedges', false);
model.result('pg1').run;
model.result('pg1').active(false);
model.result('pg2').set('applyselectiontodatasetedges', true);
model.result('pg2').run;
model.result('pg2').selection.geom('geom1');
model.result('pg2').set('titleprecision', 10);
model.result('pg2').run;

model.sol('sol1').updateSolution;

model.result('pg2').run;

model.component('comp1').physics('mf').prop('BackgroundField').set('BackgroundFieldType', 'Bb');
model.component('comp1').physics('mf').prop('BackgroundField').set('Bb', {'0' '0.0002 ' '0'});

model.sol('sol1').updateSolution;

model.result('pg2').run;
model.result.table('evl3').addRow([-0.006202276957732955 -0.12021550902546924 -3.4417005911890897E-9 2.3323248669818435], [0 0 0 0]);

model.component('comp1').view('view1').hideEntities('hide1').add([4]);
model.component('comp1').view('view1').hideEntities('hide1').add([6]);
model.component('comp1').view('view1').hideObjects.clear;
model.component('comp1').view('view1').hideEntities.clear;

model.component('comp1').material('mat1').selection.set([2 7 8 15 17 18 19 27 28]);

model.component('comp1').view('view1').hideEntities.create('hide1');
model.component('comp1').view('view1').hideEntities('hide1').geom(3);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);

model.component('comp1').mesh('mesh1').feature('size').set('hmax', 0.004);
model.component('comp1').mesh('mesh1').run('size');

model.label('Air bearing study.mph');

model.component('comp1').view('view1').set('renderwireframe', false);

model.component('comp1').mesh('mesh1').feature('size').set('hmax', 0.01);
model.component('comp1').mesh('mesh1').run('size');
model.component('comp1').mesh('mesh1').run;

model.label('Air bearing study.mph');

model.component('comp1').mesh('mesh1').feature('ftet1').selection.geom('geom1', 3);
model.component('comp1').mesh('mesh1').feature('ftet1').selection.all;
model.component('comp1').mesh('mesh1').feature('ftet1').selection.set([2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34]);
model.component('comp1').mesh('mesh1').feature('ftet2').selection.set([]);
model.component('comp1').mesh('mesh1').feature('ftet2').create('size2', 'Size');
model.component('comp1').mesh('mesh1').feature('ftet2').feature('size1').set('hauto', 4);
model.component('comp1').mesh('mesh1').feature('ftet2').feature.remove('size2');
model.component('comp1').mesh('mesh1').feature('ftet2').feature('size1').set('hauto', 5);
model.component('comp1').mesh('mesh1').feature('ftet2').active(true);
model.component('comp1').mesh('mesh1').run('ftet2');

model.component('comp1').view('view1').set('hidestatus', 'ignore');

model.component('comp1').mesh('mesh1').feature('ftet2').selection.set([1]);
model.component('comp1').mesh('mesh1').run('ftet2');

model.component('comp1').view('view1').set('transparency', true);
model.component('comp1').view('view1').set('renderwireframe', false);
model.component('comp1').view('view1').set('transparency', false);
model.component('comp1').view('view1').hideEntities('hide1').add([1]);
model.component('comp1').view('view1').set('hidestatus', 'hide');

model.sol('sol1').study('std1');
model.sol('sol1').feature.remove('s1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'stat');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'stat');
model.sol('sol1').create('s1', 'Stationary');
model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('s1').create('i1', 'Iterative');
model.sol('sol1').feature('s1').feature('i1').set('linsolver', 'fgmres');
model.sol('sol1').feature('s1').feature('i1').set('nlinnormuse', true);
model.sol('sol1').feature('s1').feature('i1').create('mg1', 'Multigrid');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('pr').create('so1', 'SOR');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('po').create('so1', 'SOR');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('cs').create('ams1', 'AMS');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('cs').feature('ams1').set('prefun', 'ams');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').feature('cs').feature('ams1').set('sorvecdof', {'comp1_A'});
model.sol('sol1').feature('s1').feature('fc1').set('linsolver', 'i1');
model.sol('sol1').feature('s1').feature.remove('fcDef');
model.sol('sol1').attach('std1');
model.sol('sol1').runAll;

model.result('pg2').set('applyselectiontodatasetedges', true);
model.result('pg2').run;
model.result.table('evl3').addRow([-1.5996195630918475E-5 0.09105491485036789 0.10933705507570382 1.257700555767621E-6], [0 0 0 0]);
model.result('pg2').run;
model.result('pg2').feature('mslc1').set('colortable', 'Thermal');
model.result('pg2').feature('mslc1').set('rangecoloractive', false);
model.result('pg2').feature('mslc1').set('descractive', true);
model.result('pg2').feature('mslc1').set('data', 'dset1');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;

out = model;

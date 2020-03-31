function [A,B] = AB(in1,u)
%AB
%    [A,B] = AB(IN1,U)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    31-Mar-2020 15:30:07

Y2 = in1(2,:);
Y3 = in1(3,:);
Y4 = in1(4,:);
t2 = cos(Y2);
t3 = sin(Y2);
t4 = Y4.^2;
t5 = t2.^2;
t6 = t3.^2;
t7 = t5.*4.565807400625001e-4;
t8 = t5.*1.1871099241625e-3;
t9 = t7-3.005650706948956e-3;
t11 = t8-7.814691838067285e-3;
t10 = 1.0./t9.^2;
t12 = 1.0./t11;
A = reshape([0.0,0.0,0.0,0.0,0.0,0.0,-t12.*(t5.*1.164554835603413e-2-t6.*1.164554835603413e-2-Y4.*t3.*1.3333476e-4+t2.*t4.*2.663986247403407e-4)-t2.*t3.*t10.*(Y3.*(-5.665253057117539e-6)+u.*5.387661376655594e-7+Y4.*t2.*5.3763908601e-9+t2.*t3.*4.695776235861861e-7+t3.*t4.*1.074185854609239e-8).*8.710173076923079,t12.*(t2.*3.416172728985441e-1+Y3.*t3.*6.260814269838489e-1+t4.*t5.*1.187109924162501e-3-t4.*t6.*1.187109924162501e-3-t3.*u.*5.954040691200001e-2)+t2.*t3.*t10.*(Y4.*1.57714169184e-7+t3.*1.377486248645154e-5-Y3.*t2.*2.524516833955625e-5+t2.*u.*2.40081805770912e-6+t2.*t3.*t4.*4.786723991704243e-8).*8.710173076923079,1.0,0.0,t12.*1.404985568136286e-1,t2.*t12.*(-6.260814269838489e-1),0.0,1.0,-t12.*(t2.*1.3333476e-4+Y4.*t3.*5.327972494806815e-4),t12.*(Y4.*t2.*t3.*2.374219848325001e-3+3.911319218401637e-3)],[4,4]);
if nargout > 1
    B = [0.0;0.0;t12.*(-1.336142693695975e-2);(t2.*3.780815838912e-4)./(t5.*7.538148018431877e-6-4.962329317172726e-5)];
end

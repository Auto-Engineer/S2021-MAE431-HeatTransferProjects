function T = ntemps(k1,k2,Tinf,h1,h2,Dx,Dy,q)

syms T1 T2 T3 T4 T5 T5 T6 T7 T8 T9 T10 T11 T12 T13 T14 T15

eqn1 = (h1*Dy)*(Tinf-T1) + (k1*Dy)*((T2-T1)/Dx) + (k1*(Dx/2))*(50-T1)/Dy + (k1*(Dx/2))*(T6-T1)/Dy == 0;

eqn2 = (k1*Dy)*((T1-T2)/Dx) + (k1*Dy)*((T3-T2)/Dx) + (k1*Dx)*((50-T2)/Dy) + (k1*Dx)*(T7-T2)/Dy == 0;

eqn3 = (k1*Dy)*((T2-T3)/Dx) + (k2*Dy)*((T4-T3)/Dx) + ((k1 +k2)*Dx)*((50-T2)/Dy) + ((k1+k2)*Dx)*(T8-T3)/Dy + 2*q*Dy == 0;

eqn4 = (k1*Dy)*((T3-T4)/Dx) + (k1*Dy)*((T3-T4)/Dx) + (k1*Dx)*((50-T4)/Dy) + (k1*Dx)*((T9-T4)/Dy) == 0;

eqn5 = (h2*Dy)*(Tinf-T5) + (k1*Dy)*((T4-T5)/Dx) + (k1*(Dx/2))* (50 -T5)/Dy + (k1*(Dx/2))*(T10-T5)/Dy == 0;

eqn6 = (h1*Dy)*(Tinf-T6) + (k1*Dy)*((T7-T6)/Dx) + (k1*(Dx/2))* (T1 -T6)/Dy + (k1*(Dx/2))*(T11-T6)/Dy == 0;

eqn7 = (k1*Dy)*((T6-T7)/Dx) + (k1*Dy)*((T8-T7)/Dx) + (k1*Dx)*((T2-T7)/Dy) + (k1*Dx)*((T12-T7)/Dy) == 0;

eqn8 = (k1*Dy)*((T7-T8)/Dx) + (k2*Dy)*((T9-T8)/Dx) + (k1 +k2)*Dx*((T3-T8)/Dy) + (k1+k2)*Dx*(T13-T8)/Dy + 2*q*Dy == 0;

eqn9 = (k1*Dy)*((T8-T9)/Dx) + (k1*Dy)*((T10-T9)/Dx) + (k1*Dx)*((T4-T9)/Dy) + (k1*Dx)*((T14-T9)/Dy) == 0;

eqn10 = (h2*Dy)*(Tinf-T10) + (k2*Dy)*((T9-T10)/Dx) + (k1*(Dx/2))* (T5 -T10)/Dy + (k1*(Dx/2))*(T15-T10)/Dy == 0;

eqn11 = (h2*Dy)*(Tinf-T11) + (k2*Dy)*((T12-T11)/Dx) + (k1*(Dx/2))* (T6 -T1)/Dy + (k1*(Dx/2))*(30-T11)/Dy == 0;

eqn12 = (k1*Dy)*((T11-T12)/Dx) + (k1*Dy)*((T13-T7)/Dx) + (k1*Dx)*((T7-T12)/Dy) + (k1*Dx)*((30-T12)/Dy) == 0;

eqn13 = (k1*Dy)*((T12-T13)/Dx) + (k2*Dy)*((T14-T13)/Dx) + (k1 +k2)*Dx*((T8-T13)/Dy) + (k1+k2)*Dx*(30-T13)/Dy + 2*q*Dy == 0;

eqn14 = (k1*Dy)*((T13-T14)/Dx) + (k1*Dy)*((T15-T14)/Dx) + (k1*Dx)*((T9-T14)/Dy) + (k1*Dx)*((30-T14)/Dy) == 0;

eqn15 = (h2*Dy)*(Tinf-T15) + (k2*Dy)*((T14-T15)/Dx) + (k1*(Dx/2))* ((T10 -T15)/Dy) + (k1*(Dx/2))*(30-T15)/Dy == 0;

sol = solve([eqn1, eqn2, eqn3, eqn4, eqn5, eqn6, eqn7, eqn8, eqn9, eqn10, eqn11, eqn12, eqn13, eqn14, eqn15], [T1, T2, T3, T4, T5 T6 T7 T8 T9 T10 T11 T12 T13 T14 T15]);

 

T1Sol = sol.T1;

T2Sol = sol.T2;

T3Sol = sol.T3;

T4Sol = sol.T4;

T5Sol = sol.T5;

T6Sol = sol.T6;

T7Sol = sol.T7;

T8Sol = sol.T8;

T9Sol = sol.T9;

T10Sol = sol.T10;

T11Sol = sol.T11;

T12Sol = sol.T12;

T13Sol = sol.T13;

T14Sol = sol.T14;

T15Sol = sol.T15;

 

sol = struct2array(sol);

sol = double(sol);

 

nodal_temperatures = sol'

maxtemps = max(nodal_temperatures)

mintemps = min(nodal_temperatures)

 

end
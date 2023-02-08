load('Ej3_estadist.mat');
%%
Sanosbe_x=A_Sanos_bei(:,1);
Sanosbe_y=A_Sanos_bei(:,2);
Sanosbe_z=A_Sanos_bei(:,3);
%%
Sanodn_x=A_Sanosdni(:,1);
Sanodn_y=A_Sanosdni(:,2);
Sanodn_z=A_Sanosdni(:,3);
%%
Sanosrep_x=A_Sanosrepi(:,1);
Sanosrep_y=A_Sanosrepi(:,2);
Sanosrep_z=A_Sanosrepi(:,3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
Parkbe_x=A_parkinsonbe(:,1);
Parkbe_y=A_parkinsonbe(:,2);
Parkbe_z=A_parkinsonbe(:,3);
%%
Parkdn_x=A_parkinsondn(:,1);
Parkdn_y=A_parkinsondn(:,2);
Parkdn_z=A_parkinsondn(:,3);
%%
Parkrep_x=A_parkinsonrep(:,1);
Parkrep_y=A_parkinsonrep(:,2);
Parkrep_z=A_parkinsonrep(:,3);
%% COMPARAR ENTRE SUBETAPAS  DE LAS ETAPAS DEL PROTOCOLO SANOS
[ n,pa] = nyAnova1( A_Sanos_bei);
[ n,pb] = nyAnova1( A_Sanosdni);
[ n,pc] = nyAnova1( A_Sanosrepi);
[ n,pd] = nyAnova1( A_parkinsonbe);
[ n,pe] = nyAnova1( A_parkinsondn);
[ n,pf] = nyAnova1( A_parkinsonrep);


disp('COMPARACION ENTRE X  Y Z DE LAS ETAPAS BE DE SANOS')
disp(pa);

disp(' COMPARACION ENTRE X  Y Z DE LAS ETAPAS DN DE SANOS')
disp(pb);

disp(' COMPARACION ENTRE X  Y Z DE LAS ETAPAS REP DE SANOS')
disp(pc);


disp('COMPARACION ENTRE X  Y Z DE LAS ETAPAS BE PARKINSON')
disp(pd);

disp('COMPARACION ENTRE Y DE LAS ETAPAS DN PARKINSON')
disp(pe);

disp('COMPARACION ENTRE Z DE LAS ETAPAS REP PARKINSON')
disp(pf);


%% %COMPARAR SUBETAPAS DE ETAPA BE  ENTRE POBLACIONES SANOS VS PARKINSON
[ n, n1,ka,p] = nyttest2( Sanosbe_x,Parkbe_x );
[ n, n1,kb,p] = nyttest2( Sanosbe_y,Parkbe_y );
[ n, n1,kc,p] = nyttest2( Sanosbe_z,Parkbe_z );
%COMPARAR SUBETAPAS DE ETAPA DN ENTRE POBLACIONES SANOS VS PARKINSON
[ n, n1,kd,p] = nyttest2( Sanodn_x,Parkdn_x );
[ n, n1,ke,p] = nyttest2( Sanodn_y,Parkdn_y );
[ n, n1,kf,p] = nyttest2( Sanodn_z,Parkdn_z );
%COMPARAR SUBETAPAS DE ETAPA REP  ENTRE POBLACIONES SANOS VS PARKINSON
[ n, n1,kg,p] = nyttest2( Sanosrep_x,Parkrep_x);
[ n, n1,kh,p] = nyttest2( Sanosrep_y,Parkrep_y );
[ n, n1,ki,p] = nyttest2( Sanosrep_z,Parkrep_z );

disp(' COMPARACION SUBETAPAS DE ETAPA BE  ENTRE POBLACIONES SANOS VS PARKINSON')
disp('x '); disp(ka);
disp('y'); disp(kb);
disp('z'); disp(kc);
disp(' COMPARACION SUBETAPAS DE ETAPA DN ENTRE POBLACIONES SANOS VS PARKINSON')
disp('x'); disp(kd);
disp('y'); disp(ke);
disp('z'); disp(kf);
disp(' COMPARACION SUBETAPAS DE ETAPA REP ENTRE POBLACIONES SANOS VS PARKINSON')
disp('x '); disp(kg);
disp('y '); disp(kh);
disp('z '); disp(ki);
%% COMPARAR LAS ETAPAS DEL PROTOCOLO SANOS 
[ n,p1] = nyAnova1(sx);  %%x
[ n,p2] = nyAnova1(sy);  %%y
[ n,p3] = nyAnova1(sz);  %%z

%% COMPARAR ENTRE ETAPAS DEL PROTOCOLO PARKINSON
[ n,p4] = nyAnova1(px);  %%x
[ n,p5] = nyAnova1(py);  %%y
[ n,p6] = nyAnova1(pz);  %%z

disp('COMPARACION ENTRE X DE LAS ETAPAS DE SANOS')
disp(p1);

disp(' COMPARACION ENTRE Y DE LAS ETAPAS DE SANOS')
disp(p2);

disp(' COMPARACION ENTRE Z DE LAS ETAPAS DE SANOS')
disp(p3);


disp('COMPARACION ENTRE X DE LAS ETAPAS DE PARKINSON')
disp(p4);

disp('COMPARACION ENTRE Y DE LAS ETAPAS DE PARKINSON')
disp(p5);

disp('COMPARACION ENTRE Z DE LAS ETAPAS DE PARKINSON')
disp(p6);





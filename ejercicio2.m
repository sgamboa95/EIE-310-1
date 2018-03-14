A=1;B=0;C=0;D=4;E=8;H=8
%RESPUESTA ESCALON FILTRO IIR
%y(n) = 0.1 x(n) + 0.9 y(n-1)
vi = (H*A);
a = (D+E);
dt=10e-3;
t(1) = 0;
vf(1) = 0;
for i = 2 : 41;
    t(i) = (i-1) * dt;
    vf(i) = (1-a) * vi + a * vf(i-1);
end
close; stem(t,vf);
xlabel('seg');grid
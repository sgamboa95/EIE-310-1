clear
clc
A=1;B=9;C=0;D=4;E=8;F=8;G=2;H=2;I=5;
%MI RUT ES ABCDEFGHI
t=0 : 0.3 : 30;
v=exp(-((B+A)/2*C*(D+E)))*t.*sin(t);
subplot 121;plot(t,v);title('PLOT');
xlabel('Tiempo [seg]');ylabel('Volts');grid;
subplot 122;stem(t,v);title('stem');
xlabel('Tiempo [seg]');ylabel('Volts');grid;
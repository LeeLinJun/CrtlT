function [Gh,Gc]=expectedF(nu,G0,wc,K,gama)

dsin=@(x)sin(x/180*pi);
lg=@(x) log(x)/log(10);

h=(1+dsin(gama))/(1-dsin(gama));
w3=wc*sqrt(h);
w2=wc/sqrt(h);


y=20*(lg(wc)-lg(w2));
lgw1=(y-20*lg(K)+40*lg(w2))/20;
w1=10^(lgw1);

%tf
s=tf('s');
Gh=K*(1/w2*s+1)/(s^nu*(1/w1*s+1)*(1/w3*s+1));
Gc=Gh/G0;
margin(Gh)


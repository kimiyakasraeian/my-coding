clear all
clc


A=3.25;
a=100;
S0=5;
r=0.56;
v0=6;
h=0.001;
t=0:h:10;
L_t=length(t);
T2=108;
T1=135;
b=50;
B=22;
T4=33.75;
T3=33.75; 
x0=zeros(1,L_t);
x1=zeros(1,L_t);
x2=zeros(1,L_t);
x0_0=0.19;
x1_0=0;
x2_0=0;
x0(1)=x0_0;
x1(1)=x1_0;
x2(1)=x2_0;
y0=zeros(1,L_t);
y1=zeros(1,L_t);
y2=zeros(1,L_t);
y0_0=a*x0_0+15;
y1_0=a*x1_0+1;
y2_0=b*x2_0+2;
y0(1)=y0_0;
y1(1)=y1_0;
y2(1)=y2_0;
p=zeros(1,L_t);
F0=zeros(1,L_t);
F1=zeros(1,L_t);
F2=zeros(1,L_t);

for n=1:L_t;
    p(n)=200+(50*cos(6*pi*n*h));
    F0(n)=A*a*S0/(1+exp(r*(x1(n)-x2(n)-v0)));
    F1(n)=A*a*(p(n)+(T2*S0/(1+exp(r*(T1*x0(n)-v0)))));
    F2(n)=B*b*T4*S0/(1+exp(r*(T3*x0(n)-v0)));
    x0(n+1)=x0(n)+h*(-a*x0(n)+y0(n));
    y0(n+1)=y0(n)+h*(-a*y0(n)+F0(n));
    x1(n+1)=x1(n)+h*(-a*x1(n)+y1(n));
    y1(n+1)=y1(n)+h*(-a*y1(n)+F1(n));
    x2(n+1)=x2(n)+h*(-b*x2(n)+y2(n));
    y2(n+1)=y2(n)+h*(-a*y2(n)+F2(n));
end
  
plot(t,F0(1:end))
% clear n
% n=1:L_t;
% clear t
% t=h.*(1:L_t);
% hold on
% plot(n,x1,'r')



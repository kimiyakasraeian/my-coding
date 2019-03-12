clear all
clc

tetha10=0;
tetha20=-0.5;
h=0.01;
tmax=100;%ms
tend=round(tmax/h);
tetha1=zeros(1,tend);
tetha2=zeros(1,tend);
tetha1(1)=tetha10;
tetha2(1)=tetha20;
w1=2.1;
w2=0.9;

for t=1:tend
    tetha1(t+1)=h*(w1+sin(tetha1(t)-tetha2(t)))+tetha1(t);
    tetha1=mod(tetha1,2*pi);
    tetha2(t+1)=h*(w2+sin(tetha2(t)-tetha1(t)))+tetha2(t);
    tetha2=mod(tetha2,2*pi);
end


clear t
t=0:h:tmax;
plot(t,tetha1)
hold on
plot(t,tetha2,'r')

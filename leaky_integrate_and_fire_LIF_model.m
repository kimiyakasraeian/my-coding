clear all
clc

t_0=0;
v_0=0;
I=1.05;
h=0.1;
t=0:h:10;
L_t=length(t);
V=zeros(1,L_t);
V(1)=v_0;
v_th=1;
 
v_n=v_0;
for mm=2:L_t
    V(mm)=V(mm-1)+(I*h)-h*(V(mm-1));
    if V(mm)>=v_th;
        V(mm)=0;
    end
end
 
plot(t,V)
xlabel('t')
ylabel('V')
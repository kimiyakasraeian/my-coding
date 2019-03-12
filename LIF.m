clear all
clc
n=1;
m=100;
I=0.1;
v0=rand(m,1);
h=0.01;
tmax=10;
tend=round(tmax/h);
v=zeros(m,tend);
v(:,1)=v0;
vth=10;
for t=1:tend
    v(:,t+1)=v(:,t)+h*(-v(:,t)+I);
end
for t=1:tend
    for n=1:m
        if v(n,t+1)>=vth;
           v(:,t+1)=v(n,t+1)+a;
           v(n,t+1)=0;
        end
    end
end
t=0:tend;
for n=1:m
    plot(t,v(n,:))
    hold on
end
xlabel('t')
ylabel('V')
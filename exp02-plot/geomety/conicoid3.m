%https://zhuanlan.zhihu.com/p/393899409

%% 抛物柱面
a=1;
x=-5:0.1:5;
y=x.^2/2;
z=-5:0.5:5;
X=ones(length(z),1)*x;
Y=ones(length(z),1)*y;
Z=z'*ones(1,length(x));

figure
hold on
surf(X,Y,Z)
hold on
surf(-X,Y,Z)

alpha(0.5)
shading interp
line([0,0],[0,0],[5.5,-5.5],'linewidth',2);
line([0,0],[5.5,-5.5],[0,0],'linewidth',2);
line([5.5,-5.5],[0,0],[0,0],'linewidth',2)
axis off
axis equal
view(73,27)




R=10; %大圆半径
aplha1=0:pi/40:2*pi;
N=length(aplha1);
r=2; %管道圆半径
x0=r*cos(aplha1)+R;
z0=r*sin(aplha1);
y0=zeros(1,length(x0));

aplha2=0:pi/40:2*pi;
M=length(aplha2);

x= zeros(M,N);
y= zeros(M,N);
z= zeros(M,N);

for i=1:N
    for j=1:M
        x(j,i)=cos(aplha2(1,j))*x0(1,i);
        y(j,i)=sin(aplha2(1,j))*x0(1,i);
        z(j,i)=z0(1,i);
    end
end
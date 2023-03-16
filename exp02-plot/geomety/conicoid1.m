https://zhuanlan.zhihu.com/p/393899409


%% 椭球面绘制

% 参数方程
% x=asinθcosφ
% y=bsinθsinφ
% z=ccosθ (0≤θ≤2π, 0≤φ<2π)
a=3;
b=2;
c=1;
phi=0:0.01:2*pi;
theta=0:0.01:pi;
theta = theta';
x=a*sin(theta)*cos(phi);
y=b*sin(theta)*sin(phi);
z=c*cos(theta)*ones(size(phi));
figure(1)
surf(x,y,z)

alpha(1)
shading interp
line([0,0],[0,0],[c*1.5,-c*1.5],'linewidth',2);
line([0,0],[b*1.5,-b*1.5],[0,0],'linewidth',2);
line([a*1.5,-a*1.5],[0,0],[0,0],'linewidth',2);
axis equal
axis off

%% 椭圆锥面
a=3;
b=3;
x=-5:0.01:5;
y=-5:0.01:5;
[X,Y]=meshgrid(x,y); 

Z=sqrt(X.^2/a^2+Y.^2/b^2);
figure(2)
surf(X,Y,Z); % 正半轴
hold on
surf(X,Y,-Z); % 负半轴
zlim([-1,1]);
alpha(0.5)
shading interp
line([0,0],[0,0],[2.5,-2.5],'linewidth',2);
line([0,0],[5.5,-5.5],[0,0],'linewidth',2);
line([5.5,-5.5],[0,0],[0,0],'linewidth',2)
axis off


%% 单页双曲面
% 参数方程
% x=acoshθcosφ
% y=bcoshθsinφ
% z=csinhθ (-∞≤θ≤∞, 0≤φ<2π)

a=1;
b=1;
c=1;
phi=0:0.1:2*pi+0.1;
theta=(-1:0.1:1)';
x=a*cosh(theta)*cos(phi);
y=b*cosh(theta)*sin(phi);
z=c*sinh(theta)*ones(size(phi));
figure(3)
surf(x,y,z)
alpha(0.5)
shading interp
line([0,0],[0,0],[c*1.5,-c*1.5],'linewidth',2);
line([0,0],[b*1.5,-b*1.5],[0,0],'linewidth',2);
line([a*1.5,-a*1.5],[0,0],[0,0],'linewidth',2);
axis equal
axis off

%% 双叶双曲面
% 参数方程
% x=asinhθcosφ
% y=bsinhθsinφ
% z=ccoshθ (0≤θ≤∞, 0≤φ<2π)

a=1;
b=1;
c=1;
phi=0:0.1:2*pi+0.1;
theta=(0:0.1:2)';
x=a*sinh(theta)*cos(phi);
y=b*sinh(theta)*sin(phi);
z=c*cosh(theta)*ones(size(phi));
figure(4)
surf(x,y,z)
hold on
surf(x,y,-z)
alpha(0.5)
shading interp
line([0,0],[0,0],[5,-5],'linewidth',2);
line([0,0],[5,-5],[0,0],'linewidth',2);
line([5,-5],[0,0],[0,0],'linewidth',2);
axis off

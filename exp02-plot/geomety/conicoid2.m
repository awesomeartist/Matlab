https://zhuanlan.zhihu.com/p/393899409

%% 椭圆抛物面
a=3;
b=3;
x=-5:0.01:5;
y=-5:0.01:5;
[X,Y]=meshgrid(x,y); 

Z=X.^2/a^2+Y.^2/b^2;
figure
surf(X,Y,Z); % 正半轴
zlim([-1,1]);
alpha(0.5)
shading interp
line([0,0],[0,0],[2.5,-.5],'linewidth',2);
line([0,0],[5.5,-5.5],[0,0],'linewidth',2);
line([5.5,-5.5],[0,0],[0,0],'linewidth',2)
axis off

%% 双曲抛物面

a=1;
b=1;
x=-2:0.01:2;
y=-2:0.01:2;
[X,Y]=meshgrid(x,y); 

Z=X.^2/a^2-Y.^2/b^2;
figure(2)
surf(X,Y,Z); % 正半轴
alpha(0.5)
shading interp
line([0,0],[0,0],[2.5,-2.5],'linewidth',2);
line([0,0],[2.5,-2.5],[0,0],'linewidth',2);
line([2.5,-2.5],[0,0],[0,0],'linewidth',2)
axis off

%% 椭圆柱面
% 参数方程
% x=acosφ;
% y=bsinφ;
% z=t;  0≤φ<2π
a=4;
b=2;
theta=0:0.1:2*pi+0.1;
x=a*cos(theta);
y=b*sin(theta);
z=-5:0.5:5;
X=ones(length(z),1)*x;
Y=ones(length(z),1)*y;
Z=z'*ones(1,length(x));

figure(3)
hold on
surf(X,Y,Z)

alpha(0.5)
shading interp
line([0,0],[0,0],[5.5,-5.5],'linewidth',2);
line([0,0],[5.5,-5.5],[0,0],'linewidth',2);
line([5.5,-5.5],[0,0],[0,0],'linewidth',2)
axis off
axis equal
view(18,20)

%% 双曲柱面
% 参数方程
% x=acoshφ;
% y=bsinhφ;
% z=t;  0≤φ≤∞

a=2;
b=1;
theta=-2:0.1:2;
x=a*cosh(theta);
y=b*sinh(theta);
z=-5:0.5:5;
X=ones(length(z),1)*x;
Y=ones(length(z),1)*y;
Z=z'*ones(1,length(x));

figure(4)
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
view(18,20)
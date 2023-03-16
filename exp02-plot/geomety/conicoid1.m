https://zhuanlan.zhihu.com/p/393899409


%% ���������

% ��������
% x=asin��cos��
% y=bsin��sin��
% z=ccos�� (0�ܦȡ�2��, 0�ܦ�<2��)
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

%% ��Բ׶��
a=3;
b=3;
x=-5:0.01:5;
y=-5:0.01:5;
[X,Y]=meshgrid(x,y); 

Z=sqrt(X.^2/a^2+Y.^2/b^2);
figure(2)
surf(X,Y,Z); % ������
hold on
surf(X,Y,-Z); % ������
zlim([-1,1]);
alpha(0.5)
shading interp
line([0,0],[0,0],[2.5,-2.5],'linewidth',2);
line([0,0],[5.5,-5.5],[0,0],'linewidth',2);
line([5.5,-5.5],[0,0],[0,0],'linewidth',2)
axis off


%% ��ҳ˫����
% ��������
% x=acosh��cos��
% y=bcosh��sin��
% z=csinh�� (-�ޡܦȡܡ�, 0�ܦ�<2��)

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

%% ˫Ҷ˫����
% ��������
% x=asinh��cos��
% y=bsinh��sin��
% z=ccosh�� (0�ܦȡܡ�, 0�ܦ�<2��)

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

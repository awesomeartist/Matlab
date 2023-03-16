t = 0:0.02*pi:2*pi; 

x = sin(t);
y = cos(t); 
z = cos(2*t); 

figure; 

subplot(2,1,1); 
plot3(x,y,z,'bd'); 

subplot(2,1,2); 
plot3(x,y,z,'b-',x,y,z,'bd');
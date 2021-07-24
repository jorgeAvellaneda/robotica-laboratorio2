function q = Cinem_inversa(mth)
L1 = 330; L2 = 88; L3 = 310; L4 = 40; L5 = 305; L6 = 86.5;
h=sqrt(L4^2+L5^2);

w=mth*rt2tr(eye(3),[0 0 -L6]');
[rw, pw]=tr2rt(w);
q(1)= rad2deg(atan2(pw(2),pw(1)));

p2w = pw+[-L2*cosd(q(1)),-L2*sind(q(1)),-L1]';
cphi = (-norm(p2w)^2+L3^2+h^2)/(2*L3*h);
sphi = sqrt(1-cphi^2);
phi = atan2(sphi,cphi);
alpha = atan2(L5,L4);

q(3) = rad2deg(pi-phi-alpha);

ln = pw(3)-L1;
R = sqrt(pw(1)^2+pw(2)^2)-L2;
calpha = (-h^2+L3^2+norm(p2w)^2)/(2*L3*norm(p2w));
salpha = sqrt(1-calpha^2);
alpha2 = atan2(salpha,calpha);
beta = atan2(ln,R);

q(2) = rad2deg(pi/2-alpha2-beta);

rpw = (rotz(q(1),'deg')*rotx(-pi/2)*rotz(q(2)-90,'deg')*rotz(q(3),'deg'))^-1*rw;

cq5 = rpw(2,3);
sq5 = sqrt(1-cq5^2);
q(5) = rad2deg(atan2(sq5,cq5));

q(4) = rad2deg(atan2(rpw(3,3),-rpw(1,3)));

q(6) = rad2deg(atan2(-rpw(2,2),rpw(2,1)));

end



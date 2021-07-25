r=-16.4; p=9.7; ya=-151.7;
x=326.4; y=352.3; z=412.2;
T=rt2tr(rotx(ya,'deg')*roty(p,'deg')*rotz(r,'deg'),[x y z]);

%bot1.ikine6s(T) %solo se puede para DH estandar
rad2deg(bot1.ikine(T)) %
rad2deg(bot1.ikunc(T)) %No tiene en cuenta los limites de las articulaciones
rad2deg(bot1.ikcon(T)) %Tiene en cuenta los limites de las articulaciones
Cinem_inversa(T)        %Nuestra herramienta
%bot1.ikine_sym(6) %symbolic, opcion 6 da posiciones y rotaciones, es experimental
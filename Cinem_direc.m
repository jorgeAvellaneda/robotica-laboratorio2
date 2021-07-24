%close all; clear all;

syms q1 q2 q3 q4 q5 q6;
% %q1 = 0; q2 = 0; q3 = 0; q4 = 0; q5 = 0; q6 = 0;
% L1 = 330; L2 = 310; L3 = 88; L4 = 305; L5 = 86.5; L6 = 40;
% MTH_10 = (rt2tr(rotx(0,'deg'),[0 0 0]'))*(rt2tr(rotz(q1,'deg'),[0 0 L1]'));
% MTH_21 = (rt2tr(rotx(90,'deg'),[L3 0 0]'))*(rt2tr(rotz(q2+90,'deg'),[0 0 0]'));
% MTH_32 = (rt2tr(rotx(0,'deg'),[L2 0 0]'))*(rt2tr(rotz(q3,'deg'),[0 0 0]'));
% MTH_43 = (rt2tr(rotx(90,'deg'),[L6 0 0]'))*(rt2tr(rotz(q4,'deg'),[0 0 L4]'));
% MTH_54 = (rt2tr(rotx(-90,'deg'),[0 0 0]'))*(rt2tr(rotz(q5,'deg'),[0 0 0]'));
% MTH_65 = (rt2tr(rotx(90,'deg'),[0 0 0]'))*(rt2tr(rotz(q6,'deg'),[0 0 L5]'));
% %MTH_t6 = (rt2tr(rotx(0,'deg'),[0 0 0]'))*(rt2tr(rotz(0,'deg'),[0 0 0]'));
% MTH_60 = MTH_10*MTH_21*MTH_32*MTH_43*MTH_54*MTH_65
% Pos_Ft = MTH_60*[0 0 0 1]';

%%
%
L1=330;
L2=88;
L3=310;
L4=40;
L5=305;
L6=86.5;
L(1) = Link('revolute','alpha',      0,  'a', 0,'d',L1,'offset',    0, 'qlim',[-2*pi/3 2*pi],'modified');
L(2) = Link('revolute','alpha',  -pi/2,  'a',L2,'d', 0,'offset',-pi/2, 'qlim',[-2*pi/3 2*pi],'modified');
L(3) = Link('revolute','alpha',      0,  'a',L3,'d', 0,'offset',    0, 'qlim',[-2*pi/3 2*pi],'modified');
L(4) = Link('revolute','alpha',  -pi/2,  'a',L4,'d',L5,'offset',    0, 'qlim',[-2*pi/3 2*pi],'modified');
L(5) = Link('revolute','alpha',   pi/2,  'a', 0,'d', 0,'offset',    0, 'qlim',[-2*pi/3 2*pi],'modified');
L(6) = Link('revolute','alpha',  -pi/2,  'a', 0,'d',L ,'offset',    0, 'qlim',[-2*pi/3 2*pi],'modified');
bot1=SerialLink(L,'name','Yaskawa MH5')
R_t=eye(3)*roty(pi/2)*rotz(pi);
P_t=[0 0 0 1]';
bot1.tool=[[R_t;[0 0 0]], P_t];
%bot1.teach([0 0 0 0 0 0])
%bot1.plot([0 0 0 0 0 0],'workspace',[-3 3 -3 3 7], 'noa', 'view',[300 30])
%

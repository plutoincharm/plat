BC      =  readmatrix("BC.xlsx");
omg     =  readmatrix("omg.xlsx");
%alpval  =  readmatrix("alp.xlsx");
tht1=BC(1,55);tht2=BC(2,55);tht3=BC(3,55);tht4=BC(4,55);tht5=BC(5,55);tht6=BC(6,55);tht7=BC(7,55);hx=BC(8,55);hy=BC(9,55);
%omg1 = 0.1;omg2 = 0;omg3 = 0.2;omg4 = 0.0;omg5 = 0.5;omg6 = 0.5;omg7 = 0.5;vhx =-0.8;vhy = 0.2;
omg1 = omg(1,55); omg2 =omg(2,55); omg3 = omg(3,55);  omg5 = omg(5,55); omg6 = omg(6,55); omg7 = omg(7,55);vhx =  omg(8,55); vhy = omg(9,55);
%omg4 = 0;
 omg4 = omg(4,55);


%omg1 = vel(1,5);omg2 = vel(2,5); omg3 =  vel(3,5); omg4 = vel(4,5);  omg5 =  vel(5,5);
%omg6 =   vel(6,5);  omg7 =   vel(7,5); vhx=  vel(8,5); vhy =  vel(9,5);
 x0 = [tht1;tht2;tht3;tht4;tht5;tht6;tht7;hx;hy;omg1;omg2;omg3;omg4;omg5;omg6;omg7;vhx;vhy];




L1=  0.4041;
L2 = 0.4418;
L5 = 0.4418;
L3 = 0.4033;
L6 = 0.4033;
r4 = 0.0432;
r7 = 0.0442;
gamma71 =  1.2147;
gamma72 = 3.9843;
gamma61 = 1.2104;
gamma62 = 3.9711;
r7t = 0.1115;
r7h = 0.0887;
r4t = 0.1114 ;
r4h = 0.0877 ;




xh = hx + L1*cos(pi + tht1)
yh = hy + L1*sin(pi + tht1)


xkl = hx + L1*cos(pi + tht1) + L2*cos(pi + tht2)
ykl = hy + L1*sin(pi + tht1) + L2*sin(pi + tht2)
xal = hx + L1*cos(pi + tht1) + L2*cos(pi + tht2) + L3*cos(pi + tht3)
yal = hy + L1*sin(pi + tht1) + L2*sin(pi + tht2) + L3*sin(pi + tht3)
xfl = hx + L1*cos(pi + tht1) + L2*cos(pi + tht2) + L3*cos(pi + tht3) + r4*cos(pi + tht4)
yfl = hy + L1*sin(pi + tht1) + L2*sin(pi + tht2) + L3*sin(pi + tht3) + r4*sin(pi + tht4)
xhl = hx + L1*cos(pi + tht1) + L2*cos(pi + tht2) + L3*cos(pi + tht3) + r4*cos(pi + tht4) + r4h*cos(pi + gamma61)
yhl = hy + L1*sin(pi + tht1) + L2*sin(pi + tht2) + L3*sin(pi + tht3) + r4*sin(pi + tht4) + r4h*sin(pi + + gamma61)
xtl = hx + L1*cos(pi + tht1) + L2*cos(pi + tht2) + L3*cos(pi + tht3) + r4*cos(pi + tht4)+ r4t*cos(pi + gamma62)
ytl = hy + L1*sin(pi + tht1) + L2*sin(pi + tht2) + L3*sin(pi + tht3) + r4*sin(pi + tht4)+ r4t*sin(pi + gamma62)


xkr = hx + L1*cos(pi + tht1) + L5*cos(pi + tht5)
ykr = hy + L1*sin(pi + tht1) + L5*sin(pi + tht5)
xar = hx + L1*cos(pi + tht1) + L5*cos(pi + tht5) + L6*cos(pi + tht6)
yar = hy + L1*sin(pi + tht1) + L5*sin(pi + tht5) + L6*sin(pi + tht6)
xfr = hx + L1*cos(pi + tht1) + L5*cos(pi + tht5) + L6*cos(pi + tht6) + r7*cos(pi + tht7)
yfr = hy + L1*sin(pi + tht1) + L5*sin(pi + tht5) + L6*sin(pi + tht6) + r7*sin(pi + tht7)
xhr = hx + L1*cos(pi + tht1) + L5*cos(pi + tht5) + L6*cos(pi + tht6) + r7*cos(pi + tht7) + r7t*cos(pi + gamma71)
yhr = hy + L1*sin(pi + tht1) + L5*sin(pi + tht5) + L6*sin(pi + tht6) + r7*sin(pi + tht7) + r7h*sin(pi + + gamma71)
xtr = hx + L1*cos(pi + tht1) + L5*cos(pi + tht5) + L6*cos(pi + tht6) + r7*cos(pi + tht7) + r7t*cos(pi + gamma72)
ytr = hy + L1*sin(pi + tht1) + L5*sin(pi + tht5) + L6*sin(pi + tht6) + r7*sin(pi + tht7) + r7t*sin(pi + gamma72)


axis([-0.5 2 -0.5 2])
%base =line([-2 2],[-2 2],'LineWidth',1,'Color','black');
%pelvic =line([lhip_x(i) rhip_x(i)],[lhip_z(i) rhip_z(i)],'LineWidth',1,'Color','black');
   T=line([hx  xh],[hy  yh],'LineWidth',1,'Color','black');
    
   u=line([xh xkl],[yh ykl],'LineWidth',1,'Color','red');
   v=line([xkl xal],[ykl yal ],'LineWidth',1,'Color','red');
   w=line([xal xfl],[yal yfl],'LineWidth',1,'Color','red');
   x=line([xfl xhl],[yfl yhl],'LineWidth',1,'Color','red');
   y=line([xfl xtl],[yfl ytl],'LineWidth',1,'Color','red');
   %yh =line([xhl xtl],[yhl ytl],'LineWidth',1,'Color','red');
   % legend('Left leg')

   u1=line([xh xkr],[yh ykr],'LineWidth',1,'Color','blue');
   v1=line([xkr xar],[ykr yar],'LineWidth',1,'Color','blue'); 
   w1=line([xar xfr],[yar yfr],'LineWidth',1,'Color','blue');
   x1=line([xfr xhr],[yfr yhr],'LineWidth',1,'Color','blue');
   y1=line([xfr xtr],[yfr ytr],'LineWidth',1,'Color','blue');
   yh1 =line([xhr xtr],[yhr ytr],'LineWidth',1,'Color','blue');
   %legend('','Torso','Left leg','','','','','Right leg','','','','')
  % t1= text(1000,1500,txt,'Color','red','FontSize',14);
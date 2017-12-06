//task1
             //elipse каноническое уравнение
function Elipse(x,y)
    a=input('a=')
    b=input('b=')
    x=-2:0.01:2
    y=sqrt((b^2*a^2-x^2*b^2)/a^2)
    x=[x -x]
    y=[y -y]
    plot(x,y,'red')
endfunction
function ElipseParam(x,y,t)        //эллипс параметрическое уравнение
    t=0:0.01:2*%pi
    x=a*cos(t)
    y=b*sin(t)
    param3d(x,y,t)
endfunction
function Hyperbola(x,y)        //hyperbola general
    y=sqrt((x^2*b^2-b^2*a^2)/a^2)
    y=[y -y]
    x=[x x]
    plot(x,y)
endfunction
function HyperParam(x,y,t)      //hyperbola parametric
    t=-%pi:0.01:%pi
    x=a*cosh(t)
    y=b*sinh(t)
    x=[x -x]
    y=[y y]
    param3d(x,y,t)
endfunction
function Parabola(x,y)     //general parabola
    p=input('p=')
    y=sqrt(2*p*x)
    y=[y -y]
    x=[x x]
    plot(x,y)
endfunction
function ParabParam(x,y,t) //parametric parabola
    x=(t^2)/(2*p*x)
    y=t
    param3d(x,y,t)
endfunction
//second task
function Ellipsoid(x,y,z)
    z=-2:0.01:2
    x=-2:0.01:2
    y=-2:0.01:2
    c=input('c=')
    y=sqrt((b^2*(a^2*c^2-z^2*a^2-x^2*c^2)/a^2*c^2))
    y=[y -y]
    x=[x x]
    z=[z z]
    deff('y=f(x,z)','y=sqrt((b^2*(a^2*c^2-z^2*a^2-x^2*c^2)/a^2*c^2))')
    fplot3d(x,z,f,alpha=5,theta=31)
endfunction
function ParamEllipsoid(x,y,z,u,v)
    a=input('a=')
    b=input('b=')
    c=input('c=')
    u=-%pi:0.01:%pi
    v=-%pi:0.01:%pi
    x=a*cos(u)'*cos(v)
    y=b*cos(u)'*sin(v)
    z=c*sin(u)'*ones(u)
    plot3d(x',y',z')
endfunction
function HyperboloidOne(x,y,z)
   x=-2:0.01:2
   z=-2:0.01:2
   y=b*sqrt(1-(x^2)/(a^2)+(z^2)/(c^2)) 
   y=[y -y]
   x=[x x]
   z=[z z]
   plot3d(x',y',z')
endfunction
function HyperOneParam(x,y,z,u,v)
    u=linspace(0,%pi,10)
    v=linspace(-5,5,10)
    x=a*cos(u)'*cosh(v)
    y=b*sin(u)'*cosh(v)
    z=c*sinh(u)'*ones(v)
    deff("[x,y,z]=hip(alp,tet)",["x=a*cos(alp).*cosh(tet)+orig(1)*ones(tet)";..
     "y=b*sin(alp).*cosh(tet)+orig(2)*ones(tet)";..
     "z=c*sinh(tet)+orig(3)*ones(alp)"]);
 orig=[0 0 0];
[xx,yy,zz]=eval3dp(hip,linspace(0,2*%pi,40),linspace(-1,1,20));
plot3d(xx,yy,zz,'green')
[xx,yy,zz]=eval3dp(hip,linspace(0,2*%pi,40),linspace(-1,1,20));
plot3d(-xx,-yy,zz,'red')
endfunction
function HyperboloidOne(p,q)
    p=8
    q=12
clf()
deff("[x,y,z]=hip(alp,tet)",[
     "x=alp+orig(1)*ones(tet)";..
     "y=tet+orig(2)*ones(alp)";..
     "z=alp**2/(2*p)-tet**2/(2*q)"]);
 orig=[0 0 0];
[xx,yy,zz]=eval3dp(hip,linspace(-10,10,40),linspace(-10,10,40));
plot3d(xx,yy,zz)
endfunction
function HyperboloidTwo(x,y,z,u,v)
     phi = linspace(0,2*%pi,10);
     u = linspace(-5,5,10);
     x= a*cosh(phi)'*cosh(u);
     y= b*sinh(phi)'*sinh(u);
     z= c*sinh(u)'*ones(phi);


deff("[x,y,z]=hip(alp,tet)",["x=a*cos(alp).*sinh(tet)+orig(1)*ones(tet)";..
     "y=b*sin(alp).*sinh(tet)+orig(2)*ones(tet)..
     "z=c*sinh(tet)+orig(3)*ones(alp)"]);
 orig=[0 0 0];
[xx,yy,zz]=eval3dp(hip,linspace(0,2*%pi,40),linspace(-1,1,20));
plot3d(xx,yy,zz)

endfunction
function VizHipPar(p,q)
clf()
xx=-8:8
yy=0:16
zz=16:32
deff("[x,y,z]=hip(alp,tet)",[
     "x=alp+orig(1)*ones(tet)";..
     "y=tet+orig(2)*ones(alp)";..
     "z=alp**2/(2*p)-tet**2/(2*q)"]);
 orig=[0 0 0];
 [xx,yy,zz]=eval3dp(hip,linspace(-10,10,40),linspace(-10,10,40));

plot3d(xx,yy,zz)

endfunction
function VizElPar(p,q)
clf()
p=11
q=13
deff("[x,y,z]=hip(alp,tet)",[
     "x=alp+orig(1)*ones(tet)";..
     "y=tet+orig(2)*ones(alp)";..
     "z=alp**2/(2*p)+tet**2/(2*q)"]);
 orig=[0 0 0];
 
[xx,yy,zz]=eval3dp(hip,linspace(-10,10,40),linspace(-10,10,40));


plot3d(xx,yy,zz)
//3 task
function DotToSphere(X,Y,Z)
clf()
/*phi = linspace(0,2*%pi,30);
u = linspace(0,%pi,30);
x= a*cos(phi)'*sin(u);
y= b*sin(phi)'*sin(u);
z= c*cos(u)'*ones(phi);
*/
// plot of a sphere using facets computed by eval3dp
deff("[x,y,z]=sph(alp,tet)",["x=r*cos(alp).*cos(tet)+orig(1)*ones(tet)";..
     "y=r*cos(alp).*sin(tet)+orig(2)*ones(tet)";..
     "z=r*sin(alp)+orig(3)*ones(tet)"]);
r=1 
orig=[0 0 0]
[xx,yy,zz]=eval3dp(sph,linspace(-%pi/2,%pi/2,40),linspace(0,%pi*2,20));
plot3d(xx,yy,zz)
deff("[x1,y1,z1]=dot(a,b)",["x1=a";"y1=b";"z1=-(a*X+b*Y)/Z+1"])
[xx,yy,zz]=eval3dp(dot,linspace(-1,1,20),linspace(-1,1,20))
plot3d(xx,yy,zz,'red')
endfunction
//4 task
function DotToPar(p,X,Y)
    clf()
    t=[-2:0.1:2]
    x=t**2/(2*p)
    y=t
    plot(x,y)

    y=linspace(-1,1,30)
    x=y*Y/p
    plot(x,y,'r->')
endfunction

function DotToHip(a,b,X,Y)
    clf()
    t=[-1:0.01:1]
    x=a*cosh(t)
    y=b*sinh(t)
    plot(x,y)
    plot(-x,y)

    y=linspace(-1,1,30)
    x=(1+y*Y/b**2)*a**2/X
    plot(x,y,'r->')
endfunction

function DotToEl(a,b,X,Y)
    clf()
    t=[0:0.01:2*%pi]
    x=a*cos(t)
    y=b*sin(t)
    plot(x,y)

    y=linspace(-1,1,30)
    x=(1-y*Y/.b^2)*a^2/.X
    x=linspace(x,x,30)

    plot(x,y)
endfunction


//first task
//leminiscate
a=input('a=')
phi=-%pi:0.02:3*%pi
rho=sqrt(2*a^2*cos(2*phi))
rho=[rho,rho]
phi=[phi,phi]
polarplot(rho,phi)
//second task
//перевод с прямоугольной в полярную систему координат
function [x,y]=myfct(rho,phi)
    x=rho*cos(phi)
    y=rho*sin(phi)
endfunction
[x,y]=myfct(rho=input('rho'),phi=input('phi'))
//перевод с полярной в прямоугольную
function [rho,phi]=myfct(x,y)
    rho=sqrt(x^2+y^2)
    phi=atan(y/x)
endfunction
function [rho,phi]=myfct(x,y)
    rho=sqrt(x^2+y^2)
    phi=atan(y/x)
endfunction
[rho,phi]=myfct(x=input('x'),y=input('y'))
//перевод с прямоугольной в цилиндрическую
function [x,y,z]=myfct(rho,phi,z)
    x=rho*cos(phi)
    y=rho*sin(phi)
    z=z
endfunction
[x,y,z]=myfct(rho=input('rho'),phi=input('phi'),z=input('z')
//перевод с цилиндрической в декартовую
function [rho,phi,z]=myfct(x,y,z)
    rho=sqrt(x^2+y^2)
    phi=atan(y/x)
    z=z
endfunction
[rho,phi,z]=myfct(x=input('x'),y=input('y'),z=input('z'))
//перевод с прямоугольной в сферическую
function [x,y,z]=myfct(rho,phi,theta,z)
    x=rho*sin(theta)*cos(phi)
    y=rho*sin(theta)*sin(phi)
    z=rho*cos(theta)
endfunction
[x,y,z]=myfct(rho=input('rho'),phi=input('phi'),theta=input('theta'),z=input('z'))
//перевод с сферической в прямоугольную
function [rho,phi,theta,z]=myfct(x,y,z)
    rho=sqrt(x^2+y^2+z^2)
    phi=atan(y/x)
    theta=acos(2/sqrt(x^2+y^2+z^2))
endfunction
[rho,phi,theta,z]=myfct(x=input('x'),y=input('y'),z=input('z'))
//third task
x1=[0:0.2:10]
x2=[0:02:10]
alpha1=input('alpha')
alpha2=input('alpha2')
k1=tan(alpha1)
k2=tan(alpha2)
b1=input('b1')
b2=input('b2')
y1=k1*x1+b1
y2=k2*x2+b2
plot(x1',y1',x2',y2')
//находим точку пересечения двух графиков
intersect(y1,y2)
//fourth task
//задаем координаты точки
x0=input('x0')
y0=input('y0')
//А-коэффициент при х
//B-коэффициент при y
//C-свободный член
A=input('A=')
B=input('B=')
C=input('C=')
d=(abs(A*x0+B*y0+C))/sqrt(A^2+B^2)
//fifth task
x1=input('x1=')
y1=input('y1=')
z1=input('z1=')
x2=input('x2=')
y2=input('y2=')
z2=input('z2=')
clf()
plot3d(x1',y1',z1')
plot3d(x2',y2',z2')
plot3d

//first task
//вводим координаты четырех точек
x1=input('x1=')
x2=input('x2=')
x3=input('x3=')
x4=input('x4=')
y1=input('y1=')
y2=input('y2=')
y3=input('y3=')
y4=input('y4=')
z1=input('z1=')
z2=input('z2=')
z3=input('z3=')
z4=input('z4=')
B=[x2-x1 y2-y1 z2-z1
x3-x1 y3-y1 z3-z1
x4-x1 y4-y1 z4-z1]
//проверка лежат ли точки в одной плоскости
if det(B)==0 then disp('the points lie in one plane')
else disp('the points do not lie in one plane')
end
clf()
plot(B)
//second task
//вводим координаты точки
mx=input('mx=')
my=input('my=')
mz=input('mz=')
//вводим коэффициенты уравнения плоскости
A0=input('A=')
B0=input('B=')
C0=input('C=')
D0=input('D=')
U=abs(A0*mx+B0*my+C0*mz+D0)/sqrt(A0^2+B0^2+C0^2) //формула нахождения расстояния от точки до плоскости
x=-5:0.001:5
y=-5:0.001:5
z=-5:0.001:5
plane=A0*x+B0*y+C0*z+D0
plot3d([mx my mz],plane',x',y',z')
//third task
//вводим еще одну плоскость
A1=input('A1=')
B1=input('B1=')
C1=input('C1=')
D1=input('D1=')
plane1=A1*x+B1*y+C1*z+D1
plot3d(plane',plane1',x',y',z')
phi=acos(abs(A0*A1+B1*B0+C1*C0)/(sqrt(A0^2+B0^2+c0^2)*sqrt(A1^2+B1^2+C1^2)))
//fourth task
a=input('a=')
b=input('b=')
c=input('c=')
d=input('d=')
a1=input('a1=')
b1=input('b1=')
c1=input('c1=')
d1=input('d1=')
x=input('x')
y=input('y')
z=input('z')
function planes(x,y,z)
    Q=a*x+b*y+c*z+d   //уравнения плоскости
    W=a1*x+b1*y+c1*z+d1
    if a/a1==b/b1==c/c1 then
        disp('плоскости паралельны')
        elseif a*a1+b*b1+c*c1==0
            disp('плоскости перпендикулярны')
    end
endfunction
//6 task
x1=input('x1=')
x2=input('x2=')
y1=input('y1=')
y2=input('y2=')
z1=input('z1=')
z2=input('z2=')
x = [x1(1),x2(1)]
    y = [x1(2),x2(2)]
    z = [x1(3),x2(3)]
    param3d(x,y,z)

//task 7
l=input('l=')
m=input('m=')
n=input('n=')
//u=(l,m,n)-направляющий вектор прямой
A=input('A=')
B=input('B=')   //коэффициенты плоскости
C=input('C=')
D=input('D=')
phi=asin(abs(A*l+B*m+C*n)/sqrt(A^2+B^2+C^2)*sqrt(l^2+m^2+n^2))           //формула нахождения угла
//task 8
//вводим координаты точки
//и координаты точки, через которую проведена прямая
function Distance_Point_Line(l,m,n,X,Y,Z)
x0=input('xo=')
y0=input('y0=')
z0=input('z0=')
x=input('x=')
y=input('y=')
z=input('z=')
//находим вектор 
X=x-x0
Y=y-y0
Z=z-z0
//a=(X,Y,Z)    координаты вектора а
M=[i j k
l m n
X Y Z]
p=i*(m*Z-n*Y)       //записываем вызначник через базис, чтобы найти направляющий вектор
r=-j*(l*Z-n*X)
y=k*(l*Y-m*X)
dist=sqrt(p^2+r^2+y^2)/sqrt(l^2+m^2+n^2)  //формула нахождения расстояния между прямой, заданной каноническим уравнением и точкой
endfunction
x1=l*((y1-y0)/m)-x0
z1=n*((y1-y0)/m)-z0
x1=z1
plot3d(x1',y1',z1')      //визуализируем прямую и точку
plot3d([x x],[y y],[z z])

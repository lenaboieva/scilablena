//первое задание
//вводим координаты
a1=input('a1')
a2=input('a2')
a3=input('a3')
b1=input(b1')
b1=input('b1')
b2=input('b2')
b3=input('b3')
c1=input('c1')
c2=input('c1')
c3=input('c3')
//визначник для i
a=[a2 a3
b2 b3]
//визначник для j
b=[a1 a3
b1 b3]
//визначник для k
c=[a1 a2
b1 b2]
i=det(a)
j=det(b)
k=det(c)
//векторное произведение
v=[i -j k]
//площадь треугольника
q=[b2-a2 b3-a3
c2-a2 c3-a3]
w=[b1-a1 b3-a3
c1-a1 c-a3]
e=[b1-a1 b3-a3
c1-a1 c3-a3]
i1=det(q)
j1=det(w)
k1=det(e)
S=1/2*sqrt(i1^2+j1^2+k1^2)
//второе задание
v1=input('v1')
v2=input('v2')
v3=input('v3')
//смешанное произведение
O=[v1
v2
v3]
t=det(O)
//проверка на компланарность
if t==0 then disp('vectors are complanar')
else disp('vectors are not complanar')
end
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
//третье задание
//Ax+By+C=0   общее уравнение прямой
//ищем точку, через которую проходитэта прямая
A=input('A=')
B=input('B=')
C=input('C=')
x0=0
y0=(-C-A*x0)/B
//есть направляющий вектор u с координатами (l,m)
l=-B
m=A
//параметрическое уравнение прямой
//x=x0+t1*l
//y=y0+t1*m
//t1-переменный параметр
t1=input('t1=')
x=x0+t1*l
y=y0+t1*m

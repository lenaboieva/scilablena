A=[2 1 3
1 1 1
1 3 2]
v=[10;6;13]
a=inv(A)*v
sum(a)==6  //почему выдает F, хотя значение суммы=6??
v1=input('vector')
sum(v1)==6
disp(a)

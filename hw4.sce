timer()
x=primes(10^6)
disp(x)
disp("time="+string(timer()))
disp("<primes>:completed") //інформація для юзера
pause

//второе задание

disp("start <twins>")
n=size(x)
k=0
for i=1:1:(n(2)-1)
    if x(i)+2==x(i+1)     //проверка пар простых чисел
        k=k+1
    end
    disp("twins i="+string(i))  
    
end
disp("quantity: "+string(k))  //выводим числа-близнецы

disp("time="+string(timer())) //время работы
pause

//третье задание

n=-1

while (n<2) | (n>10^6)   //проверяет n до той поры, пока не будет удовлетворять условия
  n=input("введите n")
end
 
x=primes(n)
n2=size(x)     //ищем простые числа и их кол-во

disp("pi(n)="+string(n2(2)))

disp("time="+string(timer())) //вывод времени
pause

//четвертое задание
y1=[]
n=[2:1:1000]
for i=1:999
    x=primes(n(i))
    n2=size(x)   //ищем простые числа и их кол-во
    y1=[y1,n2(2)]  //pi(n)
end
y2=n./log(n)    
plot(n,y1,'red')    //график pi(n)
plot(n,y2,'green')  //график n/ln(n)


disp("time="+string(timer())) //время работы
pause

//пятое задание

p=primes(10^5)

disp("time="+string(timer())) //время работы
n1=size(p)   //кол-во простых чисел
n=1
while p(n)<10^4     //заменяем числа, не удовлеворяющие условие на нули 
    p(n)=0
    n=n+1
end

disp("time="+string(timer())) //время работы

quantity=0

x1=1
x2=1
x3=1
x4=1
x5=1
x6=1
x7=1
          //генерируем числа
N2=10^4
x=rand(1,N2)
x=x*10^5

for i=1:1:N2
    while x(i)<10^4            //умнжаем на 10 элементы, имеющие меньше чисел, чем надо
        x(i)=x(i)*10           //умножаем, пока в нем не будет 10 цифр
    end
    x(i)=round(x(i))      //округляем

    x1=modulo(x(i),2)
    x2=modulo(x(i),3)
    x3=modulo(x(i),5)
    x4=modulo(x(i),7)              //выбрасываем числа, которые не делятся на 2,3,5,7,11,13,17
    x5=modulo(x(i),11)
    x6=modulo(x(i),13)
    x7=modulo(x(i),17)
    if (x1==0) | (x2==0) | (x3==0) | (x4==0) | (x5==0) | (x6==0) | (x7==0)
        continue
    end
    
    for k=n:1:n1(2)
        if x(i)==p(k)          //проверка на простоту
            quantity=quantuty+1  //если простое,то идем дальше
            break
        end
    end
    
        
end

disp(quantity)  //вывод кол-ва

percent=quantity/N2*100   //процент простых
disp(string(percent)+"%")
pause


//седьмое  (контрпример)

x=primes(1000)          
n=size(x)
p=0
q=0

//цикл проверяет все комбінации p и q для p<q 
for i=1:1:n(2)-1
    for j=(i+1):1:n(2)
        if 2^x(i)+1==3*x(j)    //выход из цикла, если пара чисел найдена
            p=x(i)
            q=x(j)
            break
        end
    end
    if p>0
        break
    end
    
    
end

disp("p="+string(p))    //числа-контрпримеры
disp("q="+string(q))

disp("time="+string(timer()))  //виводим время

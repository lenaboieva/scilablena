//первое задание
function y=Ferma(n,a)
    y1=a^(n-1)-1      //первый подпункт
    y1=modulo(y1,n)
    if y1==0 then
        y=%t
    else y=%f
    end
endfunction

k=0
for i=1:10^5
    y=Ferma(i,2)   //проверка чисел до 10^6
    disp(i)
    
    if y           //проверка на правильность
        k=k+1
    end
    
end
//второе задание
N=input('N=')
n=1
while 10^n<N      //количсество цифр числа n
      n=n+1
    
end
n=n+2

rm=rand(1,N+1)   //random matrix
rm=int(rm*10^n)
pause
 a=%f
 for i=1:N
     for j=(i+1):(N+1)  //проверка всех пар чисел
         if modulo(abs(rm(i)-rm(j)),n)==0
             a=%t
             break
          end
 end
 //third task
 function n=IntTob(x,b) //перевод в другую систему исчисления
     if x>0 then k=1
     else k=-1
     end
     x=abs(x)
     n=0
     i=0
     while x>=b
         n=n+modulo(x,b)*10^i
         x=int(x/b)
         i=i+1
     end
     if x==0 then n=(n+x*10^i)
     end
     n=k*n
 endfunction
 
 function x=inverse(x0)
     x=0
     while x>0
         t=modulo(x0,10)
         x=x*10+t
         x0=int(x/10)
     end
 endfunction
 
 n=input('n=')
 b=input('b=')
 k=0
 n=IntTob(n,b)
 
 if inverse(n)==n then disp('palindrome')
 else disp('not palindrome')
 end
 
 //второй подпункт
 
 for i=1:1000000
     a1=int(IntTob(i,2))
     a2=int(IntTob(i,3))
     if(inverse(a1)==a1 & inverse(a2)==a2)
         k=k+1
     end
     
 end
 
 //fourth task
 
 function k=Euclid_steps(a,b)
     k=0
     while %t              //алгоритм эвклида для НСД
         if a>b            //увеличение счетчика на каждом шаге
             a=modulo(a,b)
             k=k+1
             if a==0
                 break
             end 
             

 else
     b=modulo(b,a)
     k=k+1
     if b==0 then
         break
            end
            
        end
            
    end
 endfunction
 
 for n=1:20    //проверка чисел<20
     m=1000000
     l=1000000
     i=1
     while %t             //двойной цикл для поиска наименьшей пары чисел
         for j=1:i
             x=Euclid_steps(i,j)
             if x==n then 
                 if i+j<m+l
                 end
                 t=1
                 break
                 if t==1 then
                     t=0
                     break
                     end
 end
 i=i+1
 if i+j>l+m then break
     
 end

 disp("n="+string(n)+"   a="+string(mini)+"  b="+string(minj))         //вывод чисел
 
 
 //fifth task
 
 a=input('a=')
 b=input('b=')
 x=[]
 k=0
 n1=min(a(1),b(1))
 n2=max(a(1),b(1))
 for i=n1:n2
     y=(i-a(1)*a(2)-b(2))/(a(1)-b(1))  //поиск через уравнение прямой
     if int(y)==y
         x=[x,i]
         k=k+1
     end
 end
 x1=[a(1),b(1)]
 y1=[a(2),b(2)]
 y=(x-a(1))*(a(2)-b(2))/(a(1)-b(1))
plot(x1,y1)
plot(x,y,'green')

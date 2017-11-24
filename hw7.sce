             //first task (date)
dd=int(input('date:'))  //вводим данные
mm=int(input('month:'))
year1=int(input('year'))
year=string(year1)      //превращаем год в строку для того, чтобы сделать вырезку
n=length(year)
c=part(['year'],(n-1):n)      //вырезка двух последних цифр года для определения кода
yearc=(6+c+c/4)          //формула кода года
yearcode=modulo(yearc,7)  //окончательный код года
u=part(['year'],1:2)   //определяем код столетия
while u>=16            //способ работает только от 16 века
    centurycode=6:-2:0
    u=u+1
end
//код месяца не имеет формулы
if mm==or(01,10) then monthcode=1
elseif mm==05 then monthcode=2
elseif mm==08 then monthcode=3
elseif mm==or(02,03,11) then monthcode=4
elseif mm==06 then monthcode=5
elseif mm==or(12,09) then monthcode=6
elseif mm==or(04,07) then monthcode=0
    
end

//if modulo(year1,4)==0 then ndy=366
//      else ndy=365
//end

//окончательная формула расчета дня недели
wd=dd+monthcode+yearcode
weekdaycode=modulo(wd,7)
weekday=['saturday','sunday','monday','tuesday','wednesday','thursday','friday']
for i=(0:7)
    if weekdaycode=0 then disp(weekday(i))  //код субботы - 0, и так далее
end


               //second task
function n = IntTo2(x)  //функция перехода в двоичную систему
    b=2
    if x>0 then k=1      //определение знака числа 
    else k=-1
    end
    x=abs(x)
    n=0
    i=0
    while x>=b
        n=n+modulo(x,b)*10^i  //перевод по формуле
        x=int(x/b)
        i=i+1
    end
    if ~(x==0) then
          n=(n+x*10^i)  //дописываем остаток
    end
    n=k*n  //умножаем число на его же знак
endfunction

..............//third task
function k=bits(a,b)
    a=dec2bin(a)            //перевод в 2 систему
    b=dec2bin(b)
    k=0
    while length(a)<length(b)  //делаем числа одинаковой длины
        a='0'+a
    end
    while length(a)>length(b)
        b='0'+b
    end
    for i=1:length(a)                 //проверка каждого бита
        if part(a,i)<>part(b,i) then 
            k=k+1
        end
    end
endfunction

               // task 3
  //первый способ почти не работает(у меня на компьютере)
function y=modul_exp1(a,e,n)  
    y=1
    for i=1:1:e  //цикл для постепенного подсчета по модулю н
        y=y*a
        y=modulo(y,n)
    end
endfunction

function y=modul_exp2(a,e,n)
    y=1
    e=dec2bin(e)   //степень переводит в 2 систему
    for i=1:1:length(e)    //цикл перебирает значения степеня
        if part(e,i)=='1'   //к степеню 1 дописываем
            a1=a         //при и=0 не подносим
            if i-1<>0        
                for j=1:i-1
                    a1=modulo(a1^2,n) //а1 в степень возводим
                end 
            end
            y=y*a1      //окончательное число
            y=modulo(y,n)  //его модель
        end
    end
    
endfunction

               //4 task
function t=ISBN10(a)
    a=string(a)    //превращаем введенное число в строку
    a=strrev(a)    //переворачиваем строку для удобства
    t=%f
    s=0
    if length(s)==10 then   //проверка только для 10 значный чисел
        
        for i=1:length(a)    
            s=s+evstr(part(a,i))*i    //сумма цифр умноженная на номер
        end
        if modulo(s,11)==0 then      //при остатке 0, номер=число
            t=%t
        end
    end    
endfunction

               //5 task
               
function a=parity(b)
    k=0
    b=string(b)   //превращаем в строку
    for i=1:length(b)           
        if part(b,[i])=='1'    //вырезка из строки
            k=k+1
        end
    end
    if modulo(k,2)==0        //проверка число на парность
        a=strcat([b,'0'])     //бит парности 0
    else
        a=strcat([b,'1'])       //бит парности 1
    end
endfunction

               //last task
function g=psirand(k)       //псевдогенератор
    t=getdate()
    a=22695477
    b=1
    n=2**32
    g=[int(t(10)),0]

    for i=2:k
        t=g(i-1)*a+modulo(n,b)
        while t>10**8
        t=int(t/10)
        end
        g(i)=t
    end
   g=int(strtod(part(string(g),[3])))
endfunction

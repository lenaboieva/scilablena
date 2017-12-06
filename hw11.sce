Maxltres = [50,50,100]            //заданные параметры
Res = [300,600,600]
c_real = [-2.125:0.01:0.875]
c_imag = [-0.5:0.01:0.5]
n1 = 1
n = 1
x = [c_real(1)]
y = [c_imag(1)]
n2 = 1
for i = 1:length(c_real)             //перебераем точки

    t1 = %f
    for j = 1:int(length(c_imag)/2)
        t = %t
        z = 0 + 0*%i
        for k = 1:Maxltres(n)
            z = z^2 + complex(c_real(i),c_imag(j))    //проверяем условие
            if abs(z) > 2
                t = %f
                n1 = k         //выход из цикла при n>2
                break
            end
        end
      if t then n1 = Maxltres(n) end
        //end           
        if n1 == n2
            x = [x,c_real(i),c_real(i)]
            y = [y,c_imag(j),-c_imag(j)]
            continue
        else
                
            r = modulo(245*n1,256)/256         //считаем цвет
            g = modulo(5*n1,256)/256
            b = modulo(255 - 25*n1, 256)
            if b<0
                b = 256+b
            end
            b = b/256               //строим по точкам
            plot(,x,y,'colo',[r,g,b],'linest','none','marker','.','markersize',2)
            x = [0]
            y = [0]
            n2 = n1
    end
end
end

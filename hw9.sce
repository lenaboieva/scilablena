function [z,z1] = complexSqrtFrom1(n)
    z = []                              //z - матрицф корней, z1 - матрица перв корней
    z1 = []
    for k = 0:(n-1)    //считаем корень в тригоном форме
        z_tmp = cos(2*k/n*%pi/n)+%i*sin(2*k/n*%pi)
        z = [z,z_tmp]   //добавляем в матрицу корень
        if gcd([k,n]) == 1 then     //проверка является ли корень первичным
            z1 = [z1,z_tmp]    //добавляем первичные корни к матрице
        end    
    end
    
endfunction

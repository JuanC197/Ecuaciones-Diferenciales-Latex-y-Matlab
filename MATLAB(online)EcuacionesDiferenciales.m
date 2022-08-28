syms x
syms y
syms r
syms c
syms n
syms dy
syms ne
syms c0
syms cn
syms n2
syms n3
syms n4
syms n5
syms nn2
syms nn3
syms nn4
syms nn5
syms y1
syms Efinal1
syms cons
syms nn1
syms Y
syms n6
syms nn6

format rational


%Derivamos la fórmula de serie de potencias%

y = c*x^(n+r)
 
dy = diff(y) 

dY = diff(dy)

dYnew= 3*c*x^(n+r-1)*((n+r-1)*(n+r))

%Reemplazamos en la fórmula%

% 3xy''+y'-y= 3x =  %

ne = 3*x*(dY) + dy - y

new= dYnew + dy - y

%Buscamos que las 3 sumatorías empiecen en el mismo valor de n y tengan la misima potencia de x, (en este caso a x^n+r)%

n= 0

for i=0:n

     n =3*c*x^(n+r-1)*(n+r-1)*(n+r);

disp (n);
end

%como ya hemos evaluado nuestra operación en 0, ahora sí podemos evaluar en n=1 para que nuestros exponentes queden igual a (n+1) y seguir con nuestro ejercicio%
%recordemos que queda c_(n+1)%
n2= r*c*x^(r-1);
ec1 = 3*c*x^(n + r)*(n + r)*(n + r + 1)  
ec2 = c*x^(n + r) *(n + r + 1)


Tressumatorias = (n + n2) + ec1 + ec2 + y

%paso 4%
%separamos los terminos que quedaron fuera de las sumatorias al principio de la expresión y juntamos los terminos que están dentro de sumatorias %
%Para obtener nuestras ecuaciones igualamos x a 0%
%recordemos que nuestras siguientes ecuaciones están igualados a 0%

ecuacion1= 3*r*(r-1)*c0 + r*c0
ecuacion2= 3*(n + r + 1)*(n + r)*cn+1 + (n + r + 1)*cn+1 - c 

%Factorizamos por medio de los siguientes comandos, ecuación indicial%

r = solve( ecuacion1==0, r)

%cuando r=0%

c1 = ((c*n2)/ +(3*n2+1)*(n2+1))

n2= 0

for i=0:n2

     n2 =((c+n2)/ ((3*n2)+1)*((n2)+1));

disp (n2);
end

n3= 1

for i=1:n3

    n3 =(1)/(((3*n3)+1)*(n3+1));

disp (n3);
end

n4 = 2

for i=2:n4

    n4 =(1)/(((3*n4)+1)*(n4+1)) * n3;

disp (n4);
end

n5 = 3

for i=3:n5

    n5 =(1)/(((3*n5)+1)*(n5+1)) * n4;


disp (n5);
end

%una vez tenemos algunos valores obtenidos, es decir  hasta que n=3,
%podríamos seguir pero decidi dejarlo así%
%Ahora en la fórmula de series de potencias de frobenius, sí r es igual a
%0, tenemos que nuestra fórmula es c*x^(n+r)%

y1 = c*x^(n);

Efinal1 = (cons *( 1 + x + n3*x^2 + n4*x^3 + n5*x^4 + n6*x^100))

%Ahora aplicaremos lo mismo pero para la ecuación independiente con r=2/3%

r1= 2/3

%c2 = (c*nn2)/((3*nn2 + (3*(2/3)) +1)*((nn2) + (2/3) +1))%

c2 = (1) / ((nn2 + 1)*((3*(nn2)) + 5))

nn2= 0

for i=0:nn2

    nn2= ((1) / ((nn2 + 1)*((3*(nn2)) + 5)))

end

nn3= 1

for i=1:nn3

    nn3= nn2 * ((1) / ((nn3 + 1)*((3*(nn3)) + 5)))

end

nn4= 2

for i=2:nn4

    nn4=  nn3 * ((1) / ((nn4 + 1)*((3*(nn4)) + 5)))

end

nn5= 3

for i=3:nn5


    nn5=  nn4 * ((x^4) / ((nn5 + 1)*((3*(nn5)) + 5)))

end

%sustituimos el r=2/3 en la serie de potencias quedandonos igual a%

y2= c*x^(nn1+(2/3))

Y2= x^(2/3)*(c*x^nn1)


Efinal2 = (cons * x^(2/3) * ( 1 + nn2*x + nn3*x^2 + nn4*x^3 + nn5 + nn6*x^100))

%Ahora, ya habiendo calculado todo los resultados independientes, nuestra solución no es más que sumar nuestros resultados finales para cada valor de r%
%Nota: el n6*x^100 y nn5*x^100 expresa que puedes tomar valores de n hasta que lo desees%
Y = Efinal1 + Efinal2



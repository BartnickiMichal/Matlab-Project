%metoda stycznych Michal Bartnicki s180332
n=0.8;
i=1; %% nasze x0
delta=10^(-5);
x(i)=1;
f(i)=log(x(i))-n; 
fdx(i)=1/x(i); %% pochodna pierwsza funkcji
fdxdx(i)=-(1/(x(i)^2)); %% pochodna druga funkcji 
if (f(i)*fdxdx(i))>0 %% warunek konieczny dobranego przedzia³u
while (abs(f(i))>delta) %% warunek spe³nienia zadania
x(i+1)=x(i)-(f(i)/fdx(i)); 
f(i+1)=log(x(i+1))-n;
fdx(i+1)=1/x(i+1);
i=i+1;
end
end
wynik=x(i);
liczbaiteracji=i;



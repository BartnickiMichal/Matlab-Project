A=[-2.260 2.150 0.810 4.740; %%Micha³ Bartnicki s180332
   -8.160 -9.710 0.630 -5.160;
   -6.910 9.720 0.500 -7.370;
   -1.450 1.020 4.990 -5.620 ];
    
B=[-27.730;
   94.290;
   -48.820;
   -18.350 ];
   
 L=zeros(4,4); %% macierz zerowa
 U=eye(4); %% macierz jednostkowa
 for i=1:4
  L(i,1)=A(i,1); %% kolumna pierwsza w macierzy L jest równa kolumnie pierwszej w macierzy A 
 if i~=4 
  U(1,i+1)=A(1,i+1)/L(1,1); %% wyznaczenie kolumny poziomej w macierzy U
  end
 end
 for i=2:4
   L(i,2)=A(i,2)-(L(i,1)*U(1,2)); %% wyznaczenie kolumny pionowej(drugiej) macierzy L
   if (i>2)
     U(2,i)=(A(2,i)-(L(2,1)*U(1,i)))/L(2,2); %% wyznaczenie kolumny poziomej(2) Macierzy U
     end   
 end
 for i=3:4
   L(i,3)=A(i,3)-(L(i,1)*U(1,3))-(L(i,2)*U(2,3)) %% analogicznie jak powyzej
 end
 U(3,4)=(A(3,4)-(L(3,1)*U(1,4))-(L(3,2)*U(2,4)))/L(3,3); %% wyznaczenie wartosci dla komórki 3,4 macierzy U
 L(4,4)=A(4,4)-(L(4,1)*U(1,4))-(L(4,2)*U(2,4))-(L(4,3)*U(3,4));
 X=zeros(4,1);
 Y=zeros(4,1);
 Y=L\B;
 X=U\Y;
 N=L*U; %%czy N=A
 display(X);
 display(Y);
 sprawdzenie=zeros(4,1);
 sprawdzenie=A\B; %% czy wyniki sa takie same 
 %% algorytm postêpowania jest zbli¿ony do tego z prezentacji

program PPT_1;
var
 fam, im, otch:string;
 rost,ves, n, i:integer;
 index, sum, sred_rez:real;
Begin
 write('Введите количество испытуемых');
 readln(n);
 sum:=0;
 for i:=1 to n do
begin
 write('Введите фамилию');
 readln(fam);
 write('Введите имя');
 readln(im);
 write('введите отчество');
 readln(otch);
 write('Введите рост(см)=',i,'испытуемого');
 readln(rost);
 write('Введите вес(кг)=',i,'испытуемого');
 readln(ves);
 index:=0.007241*exp(0.725*ln(ves))*exp(0.425*ln(rost));
 sum:=sum+index;
 end;
 sred_rez:=sum/n;
 writeln;
 writeln('Среднее значение Тахакира для',n,'испытуемых=',sred_rez:5:2);
end

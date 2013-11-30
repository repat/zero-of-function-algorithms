function [nullstelle,i]=secant(a,b)
  format long;
  eta=0.00001;
  i=0;
  while(abs(b-a)>eta)
    nullstelle=b;
    b=b-f(b)*(b-a)/(f(b)-f(a));
    a=nullstelle;
    i=i+1;
  end
  nullstelle=(a+b)/2;

function f_x=f(x)
  f_x=x.^6-x-1;

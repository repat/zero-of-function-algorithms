function [nullstelle,i]=newton(x)
  format long;
  eta=0.00001;
  diff=1;
  i=0;
  while(diff>eta)
    nullstelle = x;
    [f_x,fp_x]=f(x);
    x=x-f_x/fp_x;
    i=i+1;
    diff=abs(x-nullstelle);
  end
  nullstelle=x;

function [f_x,fp_x]=f(x)
  f_x  = x.^6-x-1;
  fp_x = 6*x.^5-1;

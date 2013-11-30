function [nullstelle,i]=regula_falsi(a,b)
  format long;
  eta=0.00001;
  i=0;
  diff=1;
  if(f(b)*f(a)<0)
    nullstelle = a;
    while(diff>eta)
      x=(a*f(b)-b*f(a))/(f(b)-f(a));
      if(f(x)<0)
        a=x;
      else
        b=x;
      end
      diff=abs(x-nullstelle);
      nullstelle = x;
      i=i+1;
    end
  end

function f_x=f(x)
  f_x=x.^6-x-1;

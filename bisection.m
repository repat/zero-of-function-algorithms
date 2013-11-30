function [nullstelle,i]=bisection(a,b)
format long;
eta = 0.00001;
i=0;
if(f(b)*f(a)<0)
    while(abs(b-a)>eta)
        if(f((a+b)/2)*f(a)>0)
            a=(a+b)/2;
        else
            b=(a+b)/2;
        end
        i=i+1;
    end
    nullstelle=(a+b)/2;
end

function f_x=f(x)
  f_x=x.^6-x-1;

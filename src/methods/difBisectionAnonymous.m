function [k, as, bs] = difBisection(lambda, a, b, f)
n = difbisectionfloor(lambda, b, a);
k = 1;
as = [a];
bs = [b];
syms x;
df = inline(diff(f,x), 'x'); %numerify derivative of f
while (k - n ~= 0)
    xk = (as(k) + bs(k)) / 2;
    if (df(xk) == 0)
        break;
  elseif (df(xk) > 0)
       as = [as as(end)];
       bs = [bs xk];
  else
       as = [as xk];
       bs = [bs bs(end)];
  end
    k = k+1; 
end
end


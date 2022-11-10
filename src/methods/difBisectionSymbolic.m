function [k, as, bs] = difBisection2(lambda,a, b, f)
n = difbisectionfloor(lambda, b, a);
k = 1;
as = [a];
bs = [b];
dx = 1e-12;

while (k - n ~= 0)
    x = (as(k) + bs(k)) / 2;
    df = (f(x+dx)-f(x))/2;
    if (df == 0)
        break;
  elseif (df > 0)
       as = [as as(end)];
       bs = [bs x];
  else
       as = [as x];
       bs = [bs bs(end)];
  end
    k = k+1; 
end
end


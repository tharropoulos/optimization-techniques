function [k,as, bs] = fibSearch(lambda,epsilon, a, b, f)
n = inverseFibo((b-a)/lambda) + 1;
x1 = a + (fastFib(n-2)/fibonacci(n))*(b-a);
x2 = a + (fibonacci(n-1)/fibonacci(n))*(b-a);
as = [a];
bs = [b];
k = 1;
%Step 1
while (k ~= n - 2)
    if (f(x1) - f(x2) > 0) %Step 2
        as = [as, x1];
        bs = [bs, bs(end)];
        x1 = x2;
        x2 = as(end) + (fibonacci(n-k-1)/fibonacci(n-k))*(bs(end) - as(end));
    else %Step 3
        as = [as, as(end)];
        bs = [bs, x2];
        x2 = x1;
        x1 = as(end) + (fibonacci(n-k-2)/fibonacci(n-k))*(bs(end) - as(end));
%Step 4

    end
    k = k + 1;
end
    
x2 = x1 + epsilon;
if (f(x1) - f(x2) > 0)
    as = [as, x1];
    bs  = [bs, bs(end)];
else
    as = [as, as(end)];
    bs = [bs, x1];
end
end


function [k, as, bs] = goldensection(lambda,a, b, f)
k = 1;
as = [a];
bs = [b];
phi = (1 + sqrt(5)) / 2;
gamma = 1 / phi;

x1 = a +(1-gamma)*(b-a);
x2 = a + gamma*(b-a);

while (bs(k) - as(k) - lambda >= 0)
    if ((f(x1) - f(x2)) > 0)
        as = [as, x1];
        bs = [bs, bs(end)];
        x1 = x2;
        x2 = as(end) + (gamma)*(bs(end) - as(end));
    else
        as = [as, as(end)];
        bs = [bs, x2];
        x2 = x1;
        x1 = as(end) + (1-gamma)*(bs(end) - as(end));
    end
    k = k + 1;

end


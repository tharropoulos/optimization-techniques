function [k, as, bs] = bisection(epsilon,lambda, a, b, f)
k = 1;    % Number of iterations
as = [a]; % Vector of minimus in interval
bs = [b]; % Vector of maximum in interval

while((bs(k) - as(k) - lambda) > 0)
    x1 = (as(k) + bs(k)) / 2 - epsilon;
    x2 = (as(k) + bs(k)) / 2 + epsilon;
    if ((f(x1) - f(x2)) < 0)
        as = [as as(end)];
        bs = [bs x2];
    else
        as = [as x1];
        bs = [bs bs(end)];
    end
    k = k + 1;
end
end



tic
epsilon = 1e-6;

n = 101;

f1 = @(x) (x - 3)^2 + (sin(x + 3))^2;
f2 = @(x) (x-1)*cos(x/2) + x^2;
f3 = @(x) (x + 2)^2 + exp(x-2)*sin(x + 3);

figure;
xlabel('\lambda, προδιαγεγραμμένη ακρίβεια');
ylabel('k, αριθμός επαναλήψεων')
title('k Αριθμός επαναλήψεων ~ \lambda προδιαγεγραμμένη ακρίβεια για \epsilon = 1e-6');
hold on;

lambdas = linspace(2*epsilon + 1e-6, 1e-1, n);
ks = ones(1,n);

for i = 1:n 
        [k, as, bs] = bisection(epsilon, lambdas(i), -4, 4, f1);
        ks(i) = k;
end
plot(lambdas, ks, '--or');
ks = ones(1,n);
for i = 1:n 
        [k, as, bs] = goldensection(lambdas(i), -4, 4, f1);
        ks(i) = k;
end
plot (lambdas, ks, '-ok');
ks = ones(1,n);
for i = 1:n 
        [k, as, bs] = fibSearch2(lambdas(i),lambdas(i)/10, -4, 4, f1);
        ks(i) = k;
end
plot (lambdas, ks, '-ob');
ks = ones(1,n);
for i = 1:n 
        [k, as, bs] = difBisection2(lambdas(i), -4, 4, f1);
        ks(i) = k;
end
plot(lambdas,ks, '-og');
legend('Bisection Method', 'Golden Section Method', 'Fibonacci Method', 'Differential Bisection Method');
toc
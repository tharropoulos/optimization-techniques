tic
n = 101;
lambdas = linspace(1e-8, 1e-4, n);

f1 = @(x) (x - 3)^2 + (sin(x + 3))^2;
f2 = @(x) (x-1)*cos(x/2) + x^2;
f3 = @(x) (x + 2)^2 + exp(x-2)*sin(x + 3);

figure;
xlabel('\lambda, προδιαγεγραμμένη ακρίβεια');
ylabel('k, αριθμός επαναλήψεων')
title('k Αριθμός επαναλήψεων ~ \lambda προδιαγεγραμμένη ακρίβεια');
hold on;

cellFunArray = {f1, f2, f3};
markers = {'-k', '--or', ':*b'};
for funci = 1:length(cellFunArray)
    f = cellFunArray{funci};
    marker = markers{funci};
    ks = ones(1, n);
    for i = 1 : n 
        [k, as, bs] = goldensection(lambdas(i), -4, 4, f);
        ks(i) = k;
    end
    plot(lambdas, ks, marker);
end
legend('f_1(x)', 'f_2(x)', 'f_3(x)')
toc
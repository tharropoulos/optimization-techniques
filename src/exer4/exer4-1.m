
tic
n = 101;

syms x;
f1 =  (x - 3)^2 + (sin(x + 3))^2;
f2 =  (x-1)*cos(x/2) + x^2;
f3 =  (x + 2)^2 + exp(x-2)*sin(x + 3);

figure;
xlabel('\lambda, προδιαγεγραμμένη ακρίβεια');
ylabel('k, αριθμός επαναλήψεων')
title('k Αριθμός επαναλήψεων ~ \lambda προδιαγεγραμμένη ακρίβεια');
hold on;

cellFunArray = {f1, f2, f3};
markers = {'-k', '--or', ':*b'};
lambdas = linspace(1e-8, 1e-5, n);
for funci = 1:length(cellFunArray)
    f = cellFunArray{funci};
    marker = markers{funci};
    ks = ones(1, n);
    for i = 1:n 
        [k, as, bs] = difBisection(lambdas(i), -4, 4, f);
        ks(i) = k;
    end
    plot(lambdas, ks, marker);
end
legend('f_1(x)', 'f_2(x)', 'f_3(x)')
toc
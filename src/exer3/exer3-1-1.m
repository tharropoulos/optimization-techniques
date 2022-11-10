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

cellFunArray = {f1, f2, f3};
markers = {'-k', '--or', ':*b'};
lambdas = linspace(2*epsilon + 1e-6, 1e-1, n);
for funci = 1:length(cellFunArray)
    f = cellFunArray{funci};
    marker = markers{funci};
    ks = ones(1, n);
    for i = 1:n 
        [k, as, bs] = fibSearch(lambdas(i),epsilon, -4, 4, f);
        ks(i) = k;
    end
    plot(lambdas, ks, marker);
end
legend('f_1(x)', 'f_2(x)', 'f_3(x)')
toc
tic
lambda = 1e-2;
n = 101;

f1 = @(x) (x - 3)^2 + (sin(x + 3))^2;
f2 = @(x) (x-1)*cos(x/2) + x^2;
f3 = @(x) (x + 2)^2 + exp(x-2)*sin(x + 3);

figure;
xlabel('\epsilon, απόσταση από τη διχοτόμο');
ylabel('k, αριθμός επαναλήψεων')
title('k αριθμός επαναλήψεων ~ \epsilon απόσταση από τη διχοτόμο για l = 0.01');
hold on;

cellFunArray = {f1, f2, f3};
markers = {'-k', '--or', ':*b'};
epsilon = linspace(1e-6, lambda/2 - 1e-6, n);
for funci = 1:length(cellFunArray)
    f = cellFunArray{funci};
    marker = markers{funci};
    ks = ones(1, n);
    for i = 1:n 
        [k, x1, x2] = bisection(epsilon(i), lambda, -4, 4, cellFunArray{funci});
        ks(i) = k;
    end
    plot(epsilon, ks, marker);
end
legend('f_1(x)', 'f_2(x)', 'f_3(x)')
toc
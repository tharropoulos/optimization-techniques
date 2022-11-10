tic
lambdas = [1e-8, 1e-5, 1e-2];

syms x;
f1 =  (x - 3)^2 + (sin(x + 3))^2;
f2 =  (x-1)*cos(x/2) + x^2;
f3 =  (x + 2)^2 + exp(x-2)*sin(x + 3);

cellFunArray = {f1, f2, f3};
subPlotPositions = {1, 2, [3, 4]};
funcNames = {'f_1(x)', 'f_2(x)', 'f_3(x)'};
for ii = 1:length(cellFunArray)
    f = cellFunArray{ii};
    figure;
    for i = 1:length(lambdas)
        [k, as, bs] = difBisection(lambdas(i), -4, 4, f);
        subplot(2, 2, subPlotPositions{i});
        plot(1:k, as);
        hold on;
        plot(1:k, bs);
        xlabel('k Αριθμός επαναλήψεων')
        ylabel('Ακρά διαστήματος [\alpha_k, \beta_k]')
        hold off;
        legend('\alpha', '\beta')
        title(sprintf('Ακρά διαστήματος [α_k, β_k] %s ~ k αριθμό επαναλήψεων για λ = %s', funcNames{ii}, lambdas(i)))
    end
end
toc
xk = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
yk = [0.7829 0.8052 0.5753 0.5201 0.3783 0.2923 0.1695 0.0842 0.0415 0.009 0];

orders = [1, 2, 4, 8];

figure;
plot(xk, yk, 'ko');
hold on;

colors = ['r', 'b', 'g', 'm'];

for i = 1:length(orders)
    p = polyfit(xk, yk, orders(i));
    f = polyval(p, xk);
    plot(xk, f, colors(i), 'LineWidth', 2);
end

legend('Original Data', '1st Order', '2nd Order', '4th Order', '8th Order', 'Location', 'Best');

title('Least Squares Polynomials');
xlabel('xk');
ylabel('yk');

hold off;

function [polynomial, fig] = newton_divided_difference(x, y)


    n = length(x);

    divided_diff = zeros(n, n);
    divided_diff(:, 1) = y(:); % First column is y-values

    for j = 2:n
        for i = 1:n-j+1
            divided_diff(i, j) = (divided_diff(i+1, j-1) - divided_diff(i, j-1)) / (x(i+j-1) - x(i));
        end
    end


    disp("Divided Difference Table:");
    disp(divided_diff);


    syms t;
    polynomial = divided_diff(1, 1); % Initialize with the first term
    product_term = 1;

    for i = 1:n-1
        product_term = product_term * (t - x(i)); % Update the product term
        polynomial = polynomial + divided_diff(1, i+1) * product_term; % Add the next term
    end


    disp("Newton Polynomial:");
    polynomial = expand(polynomial);
    disp(polynomial);


    newton_poly = matlabFunction(polynomial);


    range_min = min(x) - 1;  % Lower limit
    range_max = max(x) + 1;  % Upper limit
    fig = figure;
    fplot(newton_poly, [range_min, range_max], 'LineWidth', 1.5);
    hold on;
    plot(x, y, 'ro', 'MarkerSize', 8, 'LineWidth', 1.5); % Plot original data points
    title('Newton Divided Differences Interpolation');
    xlabel('x');
    ylabel('y');
    legend('Interpolation Polynomial', 'Data Points', 'Location', 'northeast');
    grid on;
    hold off;

end



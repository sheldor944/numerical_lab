function [point] = newton_divided_difference1(x, y, t)


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


    point = divided_diff(1, 1); % Initialize with the first term
    product_term = 1;

    for i = 1:n-1
        product_term = product_term * (t - x(i)); % Update the product term
        point = point + divided_diff(1, i+1) * product_term; % Add the next term
    end

    disp(['Interpolated value at t = ', num2str(t), ' is: ', num2str(point)]);
end


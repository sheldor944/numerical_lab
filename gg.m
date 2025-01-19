x = [0,     1, 3.5,   6, 10, 15, 20];
y = [15, 20,  25, 30, 27, 21, 18];

[newton_poly, fig ]= newton_divided_difference(x, y);

% Test for a specific point (e.g., t = 5)

t_value = 8;
point = newton_divided_difference1(x, y, t_value);

figure(fig);  % Activate the existing figure
hold on;
plot(t_value, point, 'bo', 'MarkerSize', 10, 'LineWidth', 2);  % Blue point for interpolation at t_value
legend('Interpolation Polynomial', 'Data Points', 'Interpolated Point', 'Location', 'northeast');
hold off;

t_value = 17;
point = newton_divided_difference1(x, y, t_value);

figure(fig);  % Activate the existing figure
hold on;
plot(t_value, point, 'bo', 'MarkerSize', 10, 'LineWidth', 2);  % Blue point for interpolation at t_value
legend('Interpolation Polynomial', 'Data Points', 'Interpolated Point', 'Location', 'northeast');
hold off;

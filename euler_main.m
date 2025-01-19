% Example usage
f = @(t, y) -2 * t * y;  % Example ODE: dy/dt = -2 * t * y
t0 = 0;                  % Initial time
y0 = 1;                  % Initial value
h = 0.1;                 % Step size
t_end = 1;               % End time

% Call the Euler method
[t_values, y_values] = euler_method(f, t0, y0, h, t_end);

% Display the results
disp('t values:'), disp(t_values)
disp('y values:'), disp(y_values)

% Plot the results
plot(t_values, y_values, '-o', 'LineWidth', 2);
xlabel('t');
ylabel('y');
title('Euler Method Approximation');
grid on;

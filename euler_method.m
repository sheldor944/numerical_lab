function [t_values, y_values] = euler_method(f, t0, y0, h, t_end)
    % f: function handle representing dy/dt = f(t, y)
    % t0: initial time
    % y0: initial value of y at t0
    % h: step size
    % t_end: end time

    % Number of steps
    n_steps = ceil((t_end - t0) / h);

    % Initialize arrays for time and y values
    t_values = zeros(1, n_steps + 1);
    y_values = zeros(1, n_steps + 1);

    % Set initial values
    t_values(1) = t0;
    y_values(1) = y0;

    % Perform Euler method iterations
    for i = 1:n_steps
        t = t_values(i);
        y = y_values(i);

        % Compute the next value
        y_values(i + 1) = y + h * f(t, y);
        t_values(i + 1) = t + h;
    end
end




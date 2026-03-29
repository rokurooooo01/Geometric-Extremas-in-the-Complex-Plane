% FAC1004 - Geometric Extremas in the Complex Plane
% Part B: The Elliptical Locus Visual Justification

% 1. Calculate the Exact Modulus Extremas
% Using the derived quartic equation: 81x^4 + 126x^3 + 4136x^2 - 20224x + 256 = 0
p = [81, 126, 4136, -20224, 256];
x_roots = roots(p);
x_real = x_roots(imag(x_roots) == 0); % Filter for real roots only
y_real = (100 .* x_real) ./ (9 .* x_real + 16);

% Calculate Modulus |z| values
moduli = sqrt(x_real.^2 + y_real.^2);
z_min_mod = min(moduli);
z_max_mod = max(moduli);

% 2. Setup the Figure Environment
figure('Name', 'Elliptical Locus Extremas', 'Color', 'w');
hold on; grid on; axis equal;
title('Visual Justification: Elliptical Locus Extremas', 'FontSize', 14);
xlabel('Real Axis (Re)'); ylabel('Imaginary Axis (Im)');

% 3. Plot the Elliptical Locus
% Standard form: (x-1)^2 / 25 + (y-4)^2 / 16 = 1
t = linspace(0, 2*pi, 1000);
x_ellipse = 1 + 5*cos(t);
y_ellipse = 4 + 4*sin(t);
plot(x_ellipse, y_ellipse, 'k-', 'LineWidth', 2.5, 'DisplayName', 'Locus: |z-z_1| + |z-z_2| = 10');

% 4. Plot the Sweeping Circles (Modulus Extremas)
% Inner Circle (|z| min)
x_cmin = z_min_mod * cos(t);
y_cmin = z_min_mod * sin(t);
plot(x_cmin, y_cmin, 'b--', 'LineWidth', 1.5, 'DisplayName', sprintf('Sweeping Circle: |z|_{min} = %.3f', z_min_mod));

% Outer Circle (|z| max)
x_cmax = z_max_mod * cos(t);
y_cmax = z_max_mod * sin(t);
plot(x_cmax, y_cmax, 'r--', 'LineWidth', 1.5, 'DisplayName', sprintf('Sweeping Circle: |z|_{max} = %.3f', z_max_mod));

% 5. Plot the Tangent Rays (Argument Extremas)
% Ray 1: m = 0 (min arg) - Extends to the right
x_ray1 = linspace(0, 7, 100);
y_ray1 = 0 * x_ray1;
plot(x_ray1, y_ray1, 'g-', 'LineWidth', 2, 'DisplayName', 'Tangent Ray: min[arg(z)] (m=0)');

% Ray 2: m = -1/3 (max arg) - Extends to the upper-left (2nd quadrant)
x_ray2 = linspace(0, -5, 100);
y_ray2 = (-1/3) * x_ray2;
plot(x_ray2, y_ray2, 'm-', 'LineWidth', 2, 'DisplayName', 'Tangent Ray: max[arg(z)] (m=-1/3)');

% 6. Mark the Origin and Format the Plot
plot(0, 0, 'ko', 'MarkerSize', 6, 'MarkerFaceColor', 'k', 'DisplayName', 'Origin (0,0)');
legend('Location', 'northeastoutside', 'FontSize', 10);
xlim([-6, 8]);
ylim([-2, 10]);
hold off;
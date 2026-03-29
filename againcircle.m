% FAC1004 - Geometric Extremas in the Complex Plane
% Master Plot: Combined Circular and Elliptical Loci

% 1. Calculate Exact Modulus Extremas for Ellipse (Part B)
p = [81, 126, 4136, -20224, 256];
x_roots = roots(p);
x_real = x_roots(imag(x_roots) == 0); 
y_real = (100 .* x_real) ./ (9 .* x_real + 16);
moduli = sqrt(x_real.^2 + y_real.^2);
z_min_mod_E = min(moduli);
z_max_mod_E = max(moduli);

% Modulus Extremas for Circle (Part A)
z_min_mod_C = 2;
z_max_mod_C = 8;

% 2. Setup the Master Figure Environment
figure('Name', 'Master Plot: All Loci Extremas', 'Color', 'w', 'Position', [100, 100, 900, 600]);
hold on; grid on; axis equal;
title('Master Visual Justification: Circular and Elliptical Loci', 'FontSize', 14);
xlabel('Real Axis (Re)'); ylabel('Imaginary Axis (Im)');

% Generate parametric angle
t = linspace(0, 2*pi, 1000);

% ==========================================
% PART A: THE CIRCULAR LOCUS (Blues)
% ==========================================
% Plot the Circle: |z - (4+3i)| = 3
plot(4 + 3*cos(t), 3 + 3*sin(t), 'b-', 'LineWidth', 2.5, 'DisplayName', 'Circle: |z - (4+3i)| = 3');

% Sweeping Circles for Circle
plot(z_min_mod_C * cos(t), z_min_mod_C * sin(t), 'c--', 'LineWidth', 1.5, 'DisplayName', 'Circle |z|_{min} = 2');
plot(z_max_mod_C * cos(t), z_max_mod_C * sin(t), 'c--', 'LineWidth', 1.5, 'DisplayName', 'Circle |z|_{max} = 8');

% Tangent Ray for Circle Max Arg (m = 24/7)
x_ray_c_max = linspace(0, 2.5, 100);
plot(x_ray_c_max, (24/7)*x_ray_c_max, 'c-', 'LineWidth', 2, 'DisplayName', 'Circle max[arg] (m=24/7)');


% ==========================================
% PART B: THE ELLIPTICAL LOCUS (Reds)
% ==========================================
% Plot the Ellipse: (x-1)^2 / 25 + (y-4)^2 / 16 = 1
plot(1 + 5*cos(t), 4 + 4*sin(t), 'r-', 'LineWidth', 2.5, 'DisplayName', 'Ellipse: |z-z_1| + |z-z_2| = 10');

% Sweeping Circles for Ellipse
plot(z_min_mod_E * cos(t), z_min_mod_E * sin(t), 'm--', 'LineWidth', 1.5, 'DisplayName', sprintf('Ellipse |z|_{min} = %.2f', z_min_mod_E));
plot(z_max_mod_E * cos(t), z_max_mod_E * sin(t), 'm--', 'LineWidth', 1.5, 'DisplayName', sprintf('Ellipse |z|_{max} = %.2f', z_max_mod_E));

% Tangent Ray for Ellipse Max Arg (m = -1/3)
x_ray_e_max = linspace(0, -6, 100);
plot(x_ray_e_max, (-1/3)*x_ray_e_max, 'm-', 'LineWidth', 2, 'DisplayName', 'Ellipse max[arg] (m=-1/3)');


% ==========================================
% SHARED FEATURES & FORMATTING
% ==========================================
% Shared Minimum Argument Ray (m = 0)
x_ray_shared = linspace(0, 9, 100);
plot(x_ray_shared, 0*x_ray_shared, 'k-', 'LineWidth', 2, 'DisplayName', 'Shared min[arg] (m=0)');

% Mark the Origin
plot(0, 0, 'ko', 'MarkerSize', 6, 'MarkerFaceColor', 'k', 'DisplayName', 'Origin (0,0)');

% Final Formatting
legend('Location', 'eastoutside', 'FontSize', 10);
xlim([-6, 10]);
ylim([-3, 10]);
hold off;
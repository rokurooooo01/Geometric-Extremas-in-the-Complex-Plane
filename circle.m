% FAC1004 - Geometric Extremas in the Complex Plane
% Part A: The Circular Locus Visual Justification

% 1. Setup the Figure Environment
figure('Name', 'Circular Locus Extremas', 'Color', 'w');
hold on; grid on; axis equal;
title('Visual Justification: Circular Locus Extremas', 'FontSize', 14);
xlabel('Real Axis (Re)'); ylabel('Imaginary Axis (Im)');

% 2. Plot the Main Circular Locus: |z - (4+3i)| = 3
t = linspace(0, 2*pi, 1000);
x_circle = 4 + 3*cos(t);
y_circle = 3 + 3*sin(t);
plot(x_circle, y_circle, 'k-', 'LineWidth', 2.5, 'DisplayName', 'Locus: |z - (4+3i)| = 3');

% 3. Plot the Sweeping Circles (Modulus Extremas: 2 and 8)
% Inner Circle (|z| min = 2)
x_cmin = 2 * cos(t);
y_cmin = 2 * sin(t);
plot(x_cmin, y_cmin, 'b--', 'LineWidth', 1.5, 'DisplayName', 'Sweeping Circle: |z|_{min} = 2');

% Outer Circle (|z| max = 8)
x_cmax = 8 * cos(t);
y_cmax = 8 * sin(t);
plot(x_cmax, y_cmax, 'r--', 'LineWidth', 1.5, 'DisplayName', 'Sweeping Circle: |z|_{max} = 8');

% 4. Plot the Tangent Rays (Argument Extremas: m = 0 and m = 24/7)
% Ray 1: m = 0 (min arg)
x_ray1 = linspace(0, 8, 100);
y_ray1 = 0 * x_ray1;
plot(x_ray1, y_ray1, 'g-', 'LineWidth', 2, 'DisplayName', 'Tangent Ray: min[arg(z)] (m=0)');

% Ray 2: m = 24/7 (max arg)
x_ray2 = linspace(0, 2.5, 100);
y_ray2 = (24/7) * x_ray2;
plot(x_ray2, y_ray2, 'm-', 'LineWidth', 2, 'DisplayName', 'Tangent Ray: max[arg(z)] (m=24/7)');

% 5. Mark the Origin and Format the Plot
plot(0, 0, 'ko', 'MarkerSize', 6, 'MarkerFaceColor', 'k', 'DisplayName', 'Origin (0,0)');
legend('Location', 'northeastoutside', 'FontSize', 10);
xlim([-1, 9]);
ylim([-1, 9]);
hold off;
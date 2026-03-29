% 1. Define the coefficients of the quartic equation
% 81x^4 + 126x^3 + 4136x^2 - 20224x + 256 = 0
p = [81, 126, 4136, -20224, 256];

% 2. Find all roots
x_roots = roots(p);

% 3. Filter out the imaginary roots (we only want the real coordinates)
x_real = x_roots(imag(x_roots) == 0);

% 4. Calculate the corresponding y values using your derived equation
y_real = (100 .* x_real) ./ (9 .* x_real + 16);

% 5. Calculate the modulus (distance from origin)
modulus = sqrt(x_real.^2 + y_real.^2);

% 6. Display the results [x, y, |z|]
disp('       X             Y          Modulus |z|');
disp([x_real, y_real, modulus]);
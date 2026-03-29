# Geometric Extremas in the Complex Plane

**Module:** FAC1004 - Advanced Mathematics II  
**Project Type:** Collaborative Group Investigation  

## Project Overview
This repository contains the computational MATLAB scripts and visual justifications for our mathematical investigation into the boundaries of complex loci. 

In engineering, complex numbers represent vectors, fluid flows, and electromagnetic fields. This project moves beyond simple plotting to rigorously investigate the **Extremas of Modulus ($|z|$)** and **Argument ($arg(z)$)** for both circular and elliptical loci. 

Our methodology relies on a dual-proof approach:
1. **Rigorous Manual Algebra:** Cartesian conversions, implicit differentiation, and discriminant analysis.
2. **Computational Verification:** Root finding and visual proofs ("Sweeping Circles" and "Tangent Rays") programmed in MATLAB.

---

## Mathematical Scope

### Part A: The Circular Locus
* **Equation:** $|z - (4+3i)| = 3$
* **Methodology:** Converted to Cartesian form $(x-4)^2 + (y-3)^2 = 9$. Implicit differentiation was used to optimize the distance function $D = x^2 + y^2$, proving the modulus extremas. The argument extremas were found by substituting $y=mx$ and evaluating the discriminant.
* **Results:** $|z|_{min} = 2$, $|z|_{max} = 8$
  * $min[arg(z)] \rightarrow m = 0$
  * $max[arg(z)] \rightarrow m = 24/7$

### Part B: The Elliptical Locus
* **Equation:** $|z - (-2+4i)| + |z - (4+4i)| = 10$
* **Methodology:** Applied the "Isolate and Square" method to derive the standard form $\frac{(x-1)^2}{25} + \frac{(y-4)^2}{16} = 1$. Equating implicit derivatives yielded $y = \frac{100x}{9x+16}$. Substituting this back resulted in a 4th-degree polynomial: $81x^4 + 126x^3 + 4136x^2 - 20224x + 256 = 0$.
* **Results:** MATLAB was utilized to compute the exact real roots of the quartic polynomial to find the final complex coordinates and their precise modulus extremas. 

---

## Repository Contents

* `Circle_Extremas.m` - Generates the circular locus, its sweeping circles, and tangent rays.
* `Ellipse_Extremas.m` - Solves the quartic polynomial for the ellipse and plots its visual proof.
* `Master_Plot.m` - A combined visualization of both loci on a single complex plane, highlighting their shared minimum argument ray.
* `Docs/` - Contains our final group report and algebraic derivations. 

---

## Visual Proofs

### The Master Plot
![Master Plot showing Circle and Ellipse](assets/master_plot.png)


---

## How to Run the Code
1. Ensure you have [MATLAB](https://www.mathworks.com/products/matlab.html) installed.
2. Clone this repository:
   ```bash
   git clone [https://github.com/yourusername/geometric-extremas-fac1004.git](https://github.com/yourusername/geometric-extremas-fac1004.git)

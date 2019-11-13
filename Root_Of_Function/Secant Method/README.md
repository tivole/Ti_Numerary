# Secant Method

## Secant Method

In numerical analysis, the <b>secant method</b> is a root-finding algorithm that uses a succession of roots of secant lines to better approximate a root of a function ![f](img/f.gif). The secant method can be thought of as a finite-difference approximation of Newton's method. However, the method was developed independently of Newton's method and predates it by over 3000 years.

<p align="center">
  <img src="img/Secant_Method.gif">
</p>


## The method

The secant method is defined by the recurrence relation

![formula](img/formula.svg)

As can be seen from the recurrence relation, the secant method requires two initial values, ![x_0](img/x_0.gif) and ![x_1](img/x_1.gif), which should ideally be chosen to lie close to the root.


## Derivation of the method

Starting with initial values ![x_0](img/x_0.gif) and ![x_1](img/x_1.gif), we construct a line through the points ![(x0, f(x0))](img/x_0_f_x_0.gif) and ![(x1, f(x1))](img/x_1_f_x_1.gif), as shown in the picture above. In slope–intercept form, the equation of this line is

![formula_2](img/formula_2.svg)

The root of this linear function, that is the value of x such that y = 0 is

![formula_3](img/formula_3.svg)

We then use this new value of x as ![x_2](img/x_2.gif) and repeat the process, using ![x_1](img/x_1.gif) and ![x_2](img/x_2.gif) instead of ![x_0](img/x_0.gif) and ![x_1](img/x_1.gif). We continue this process, solving for ![x_3](img/x_3.gif), ![x_4](img/x_4.gif), etc., until we reach a sufficiently high level of precision (a sufficiently small difference between ![x_n](img/x_n.gif) and ![x_n-1](img/x_n-1.gif)):

![formula_4](img/formula_4.svg)


## Algorithm

```cpp
double secant_method(double a, double b, double (*f)(double), double *root_x) {
	double fa, fb, sgn_fa, sgn_fb, c, fc, sgn_fc;
	
	fa = f(a);
	fb = f(b);
	
	sgn_fa = sgn(fa);
	sgn_fb = sgn(fb);

	if (sgn_fa == sgn_fb) return 0;
	
	while ((fabs(b - a) > eps) && (fabs(b - a) > eps*fabs(a))) {
		if (fabs(fa) < eps) {
			*root_x = a;
			return 1;
		} else if (fabs(fb) < eps) {
			*root_x = b;
			return 1;
		}
		
		c = b - (fb*(b - a)) / (fb - fa);
		fc = f(c);
		sgn_fc = sgn(fc);

		if (fa > fb) {
			if (sgn_fc > 0){
				a = c;
				fa = fc;
			} else if (sgn_fc < 0) {
				b = c;
				fb = fc;
			} else if (sgn_fc == 0) {
				*root_x = c;
				return 1;
			}
		} else if (fa < fb) {
			if (sgn_fc > 0) {
				b = c;
				fb = fc;
			} else if (sgn_fc < 0) {
				a = c;
				fa = fc;
			} else if (sgn_fc == 0) {
				*root_x = c;
				return 1;
			}
		}
	}

	return 0;
}
```
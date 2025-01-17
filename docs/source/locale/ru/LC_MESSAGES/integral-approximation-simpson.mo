��          �                 
     ;   (  '   d  �   �  �   t  w   1  C  �  "   �       F     �   ]  �   =  �   �  �   R      �  N       W	  p   n	  Q   �	  �  1
  1  �  �       �  7   �     �  F   �  �   D  �   $  �   �  �   9  /   �   Definition Imagine that we want to integrate the following expression: Integral Approximation - Simpson's Rule Simpson's rule is usually applied by breaking the interval into :math:`N` equal-sized subintervals, where :math:`N` is an even number, and approximating the integral over each pair of adjacent subintervals using the above estimate. Suppose :math:`f(x)` is defined on the interval :math:`[a, b]`. Then Simpson's rule on the entire interval approximates the definite integral of :math:`f(x)` on the interval by the formula That is, let :math:`x_0=a, x_1=a+\frac{b-a}{N}, x_2=a+2\frac{b-x}{N}, \dots, x_{N-1}=a+(N-1)\frac{b-a}{N}, x_N=b`. Then The idea is that if :math:`f(x) = 1, x, x^2`, this formula is an exact equality. So Simpson's rule gives the correct integral of any quadratic function. In general, Simpson's rule approximates :math:`f(x)` by a parabola through the points on the graph of :math:`f(x)` with :math:`x`-coordinates :math:`a, \frac{a+b}{2}, b`. Then the code will look like this: Usage \begin{equation}
    \int_{0}^{1} (5x^3 + 2\cos{x}) dx.
\end{equation} \begin{equation}
    \int_{a}^{b} f(x) d x \approx \frac{b-a}{3 N}\left(f(a)+4 f\left(x_{1}\right)+2 f\left(x_{2}\right)+4 f\left(x_{3}\right)+2 f\left(x_{4}\right)+\cdots+4 f\left(x_{N-1}\right)+f(b)\right).
\end{equation} \begin{equation}
    \int_{a}^{b} f(x) d x \approx \frac{b-a}{6}\left(f(a)+4 f\left(\frac{a+b}{2}\right)+f(b)\right)
\end{equation} \begin{equation}
    \int_{a}^{x_{2}} f(x) d x \approx \frac{b-a}{3 N}\left(f(a)+4 f\left(x_{1}\right)+f\left(x_{2}\right)\right)
\end{equation} \begin{equation}
    \int_{x_2}^{x_{4}} f(x) d x \approx \frac{b-a}{3 N}\left(f(x_2)+4 f\left(x_{3}\right)+f\left(x_{4}\right)\right)
\end{equation} and so on. Adding these up gives Project-Id-Version: Numerary 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-09-17 18:15+0400
PO-Revision-Date: 2020-09-18 15:23+0400
Last-Translator: Kamran Asgarov <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 Определение Представьте, что мы хотим интегрировать следующее выражение: Интегральное приближение - правило Симпсона Правило Симпсона обычно применяется путем разбиения интервала на :math:`N` подинтервалов одинакового размера, где :math:`N` - четное число, и аппроксимации интеграла по каждой паре смежных подынтервалов с использованием приведенной выше оценки. Предположим, что :math:`f(x)` определена на интервале :math:`[a, b]`. Тогда правило Симпсона на всем интервале приближает определенный интеграл от :math:`f(x)` на интервале по формуле То есть пусть :math:`x_0=a, x_1=a+\frac{b-a}{N}, x_2=a+2\frac{b-x}{N}, \dots, x_{N-1}=a+(N-1)\frac{b-a}{N}, x_N=b`. Тогда Идея состоит в том, что если :math:`f(x) = 1, x, x^2`, эта формула является точным равенством. Итак, правило Симпсона дает правильный интеграл от любой квадратичной функции. В общем, правило Симпсона приближает :math:`f(x)` параболой через точки на графике :math:`f(x)` с :math:`x`-координатами :math:`a, \frac{a+b}{2}, b`. Тогда код будет выглядеть так: Использование \begin{equation}
    \int_{0}^{1} (5x^3 + 2\cos{x}) dx.
\end{equation} \begin{equation}
    \int_{a}^{b} f(x) d x \approx \frac{b-a}{3 N}\left(f(a)+4 f\left(x_{1}\right)+2 f\left(x_{2}\right)+4 f\left(x_{3}\right)+2 f\left(x_{4}\right)+\cdots+4 f\left(x_{N-1}\right)+f(b)\right).
\end{equation} \begin{equation}
    \int_{a}^{b} f(x) d x \approx \frac{b-a}{6}\left(f(a)+4 f\left(\frac{a+b}{2}\right)+f(b)\right)
\end{equation} \begin{equation}
    \int_{a}^{x_{2}} f(x) d x \approx \frac{b-a}{3 N}\left(f(a)+4 f\left(x_{1}\right)+f\left(x_{2}\right)\right)
\end{equation} \begin{equation}
    \int_{x_2}^{x_{4}} f(x) d x \approx \frac{b-a}{3 N}\left(f(x_2)+4 f\left(x_{3}\right)+f\left(x_{4}\right)\right)
\end{equation} и так далее. Сложение дает 
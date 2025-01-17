��          �               L  �   M     �  8     r  Q     �     �  �   �  
   �  Y   �  7   &  "   ^     �  ]  �  A   �  |   '  �   �  �   �  �  ,	  Y  �
  =       I  n   a  �  �  
   i     t  T  �  
   �  �   �  d   s  7   �       
  +  A   6  |   x  �   �  �   �  �  }   As can be seen from the recurrence relation, the secant method requires two initial values, :math:`x_0` and :math:`x_1`, which should ideally be chosen to lie close to the root. Derivation Of The Method Imagine that we want to minimize the following function: In numerical analysis, the **secant method** is a root-finding algorithm that uses a succession of roots of secant lines to better approximate a root of a function :math:`f`. The secant method can be thought of as a finite-difference approximation of Newton's method. However, the method was developed independently of Newton's method and predates it by over 3000 years. Overview Secant Method Starting with initial values :math:`x_0`` and :math:`x_1`, we construct a line through the points :math:`(x0, f(x0))` and :math:`(x1, f(x1))`, as shown in the picture above. In slope–intercept form, the equation of this line is The Method The root of this linear function, that is the value of :math:`x` such that :math:`y=0` is The secant method is defined by the recurrence relation Then the code will look like this: Usage We then use this new value of :math:`x` as :math:`x_2` and repeat the process, using :math:`x_1` and :math:`x_2` instead of :math:`x_0` and :math:`x_1`. We continue this process, solving for :math:`x_3`, :math:`x_4`, etc., until we reach a sufficiently high level of precision (a sufficiently small difference between :math:`x_n` and :math:`x_n-1`): \begin{equation}
    f(x) = \sin{x}, x \in [-1, 1]
\end{equation} \begin{equation}
    x=x_{1}-f\left(x_{1}\right) \frac{x_{1}-x_{0}}{f\left(x_{1}\right)-f\left(x_{0}\right)}.
\end{equation} \begin{equation}
    x_{n}=x_{n-1}-f\left(x_{n-1}\right) \frac{x_{n-1}-x_{n-2}}{f\left(x_{n-1}\right)-f\left(x_{n-2}\right)}=\frac{x_{n-2} f\left(x_{n-1}\right)-x_{n-1} f\left(x_{n-2}\right)}{f\left(x_{n-1}\right)-f\left(x_{n-2}\right)}.
\end{equation} \begin{equation}
    y=\frac{f\left(x_{1}\right)-f\left(x_{0}\right)}{x_{1}-x_{0}}\left(x-x_{1}\right)+f\left(x_{1}\right).
\end{equation} \begin{equation}\begin{aligned}
    x_{2} &=x_{1}-f\left(x_{1}\right) \frac{x_{1}-x_{0}}{f\left(x_{1}\right)-f\left(x_{0}\right)} \\
    x_{3} &=x_{2}-f\left(x_{2}\right) \frac{x_{2}-x_{1}}{f\left(x_{2}\right)-f\left(x_{1}\right)} \\
    & \vdots \\
    x_{n} &=x_{n-1}-f\left(x_{n-1}\right) \frac{x_{n-1}-x_{n-2}}{f\left(x_{n-1}\right)-f\left(x_{n-2}\right)}.
\end{aligned}\end{equation} Project-Id-Version: Numerary 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-09-17 18:15+0400
PO-Revision-Date: 2020-09-18 23:28+0400
Last-Translator: Kamran Asgarov <asgarovkamran@gmail.ccom>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 Как видно из рекуррентного соотношения, метод секущей требует двух начальных значений :math:`x_0` и :math:`x_1`, которые в идеале следует выбирать так, чтобы они лежали близко к корню. Вывод метода Представьте, что мы хотим минимизировать следующую функцию: В численном анализе **метод секущих** - это алгоритм поиска корней, который использует последовательность корней секущих линий для лучшего приближения корня функции :math:`f`. Метод секущих можно рассматривать как конечно-разностную аппроксимацию метода Ньютона. Однако этот метод был разработан независимо от метода Ньютона и предшествовал ему более чем на 3000 лет. Обзор Метод хорд Начиная с начальных значений :math:`x_0` и :math:`x_1`, мы строим линию через точки :math:`(x0, f(x0))` and :math:`(x1, f(x1))`, как показано на рисунке выше. В форме наклон-пересечение уравнение этой прямой имеет вид Метод Корень этой линейной функции, то есть значение :math:`x` такое, что :math:`y=0`, равно Метод секанса определяется рекуррентным соотношением Тогда код будет выглядеть так: Использование Затем мы используем это новое значение :math:`x` как :math:`x_2` и повторяем процесс, используя :math:`x_1` и :math:`x_2` вместо :math:`x_0` и :math:`x_1`. Мы продолжаем этот процесс, решая для :math:`x_3`, :math:`x_4` и т. Д., Пока не достигнем достаточно высокого уровня точности (достаточно малая разница между :math:`x_n` и :math:`x_n-1`): \begin{equation}
    f(x) = \sin{x}, x \in [-1, 1]
\end{equation} \begin{equation}
    x=x_{1}-f\left(x_{1}\right) \frac{x_{1}-x_{0}}{f\left(x_{1}\right)-f\left(x_{0}\right)}.
\end{equation} \begin{equation}
    x_{n}=x_{n-1}-f\left(x_{n-1}\right) \frac{x_{n-1}-x_{n-2}}{f\left(x_{n-1}\right)-f\left(x_{n-2}\right)}=\frac{x_{n-2} f\left(x_{n-1}\right)-x_{n-1} f\left(x_{n-2}\right)}{f\left(x_{n-1}\right)-f\left(x_{n-2}\right)}.
\end{equation} \begin{equation}
    y=\frac{f\left(x_{1}\right)-f\left(x_{0}\right)}{x_{1}-x_{0}}\left(x-x_{1}\right)+f\left(x_{1}\right).
\end{equation} \begin{equation}\begin{aligned}
    x_{2} &=x_{1}-f\left(x_{1}\right) \frac{x_{1}-x_{0}}{f\left(x_{1}\right)-f\left(x_{0}\right)} \\
    x_{3} &=x_{2}-f\left(x_{2}\right) \frac{x_{2}-x_{1}}{f\left(x_{2}\right)-f\left(x_{1}\right)} \\
    & \vdots \\
    x_{n} &=x_{n-1}-f\left(x_{n-1}\right) \frac{x_{n-1}-x_{n-2}}{f\left(x_{n-1}\right)-f\left(x_{n-2}\right)}.
\end{aligned}\end{equation} 
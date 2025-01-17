��          �               �  �   �  c   |  
   �  w   �  F   c  X  �  ?     �   C  "     ;   ;     w  �   }  q   2  [   �  4      �   5  V   �  i   %	  `   �	  :   �	  ?  +
  3   k  X  �  �  �  �   }       �   )  s   �  �  3  h   �  K  ]  7   �  w   �     Y    t  q   �  [   �  4   U  �   �  V   #  i   z  `   �  W   E  1  �  V   �   By choosing a very small :math:`h`, the round-off errors in computing on a computer can be comparable to or greater than :math:`h`. Therefore, we are interested in an algorithm that gives lower error value for the same value of :math:`h`. By definition, the first derivative of a smooth function :math:`f(x)` at a point x is calculated as Definition How to determine :math:`\mathrm{O}(h)`? Expand the function :math:`f(x)` in a Taylor series at the point :math:`x + h`: Imagine that we want to find the derivative of the following function: In principle, it is possible to follow the path of improving the accuracy of the method for calculating the first derivative and further. For example, considering the expansion of the function :math:`f(x)` in a Taylor series at the points :math:`x + h`, :math:`x + 2h`, :math:`x - h`, and :math:`x - 2h`, one can obtain a four-point scheme etc. Numerical differentiation. Calculation of the first derivative. Such an improved algorithm can be easily obtained by expanding the function :math:`f(x)` into a Taylor series at the points :math:`x + h` and :math:`x - h`, then subtracting one result from the other, which gives Then the code will look like this: This is the central difference scheme (central difference). Usage When calculating the first derivative of the function :math:`f(x)` on a computer, we replace the infinitesimal :math:`h \rightarrow \infty` with a small but finite value :math:`h`: \begin{align*}
    \mathrm{O}\left(h^{2}\right)=-\frac{h^{2}}{6} f^{\prime \prime \prime}(x)+\ldots.
\end{align*} \begin{equation}
    \mathrm{O}(h)=-\frac{h}{2} f^{\prime \prime}(x)+\ldots.
\end{equation} \begin{equation}
    f(x) = \sin{(x)}
\end{equation} \begin{equation}
    f(x+h)=f(x)+h f^{\prime}(x)+\frac{h^{2}}{2} f^{\prime \prime}(x)+\frac{h^{3}}{6} f^{\prime \prime \prime}(x)+\ldots,
\end{equation} \begin{equation}
    f^{\prime}(x)=\frac{f(x+h)-f(x)}{h}+\mathrm{O}(h),
\end{equation} \begin{equation}
    f^{\prime}(x)=\frac{f(x+h)-f(x-h)}{2 h}+\mathrm{O}\left(h^{2}\right),
\end{equation} \begin{equation}
    f^{\prime}(x)=\lim _{h \rightarrow 0} \frac{f(x+h)-f(x)}{h}.
\end{equation} whence it follows that in the first order of the expansion where :math:`\mathrm{O}(h)` is the derivative calculation error, which naturally depends on :math:`h`. Previous formula is called a difference scheme for calculating the first derivative (more precisely, a right difference scheme or just a right difference). Similarly, maybe the left-hand difference scheme is written. where the error in calculating the first derivative Project-Id-Version: Numerary 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-09-17 18:15+0400
PO-Revision-Date: 2020-09-18 13:07+0400
Last-Translator: Kamran Asgarov <asgarovkamran@gmail.com>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 Выбирая очень маленький :math:`h`, ошибки округления при вычислениях на компьютере могут быть сопоставимы с :math:`h` или больше. Поэтому нас интересует алгоритм, дающий меньшее значение ошибки при том же значении :math:`h`. По определению первая производная гладкой функции :math:`f` вточке x вычисляется как Определение Как определить :math:`\mathrm{O}(h)`? Разложим функцию :math:`f(x)` в ряд Тейлора в точке :math:`x + h`: Представьте, что мы хотим найти производную следующей функции: В принципе, можно пойти по пути повышения точности метода вычисления первой производной и далее. Например, рассматривая разложение функции f (x) в ряд Тейлора в точках :math:`x + h`, :math:`x + 2h`, :math:`x - h` и :math:`x - 2h`, можно получить четырехточечную схему и т. д. Численное дифференцирование. Расчет первой производной. Такой улучшенный алгоритм может быть легко получен путем разложения функции :math:`f(x)` в ряд Тейлора в точках :math:`x + h` и :math:`x - h`, а затем вычитания одного результата из другого, что дает Тогда код будет выглядеть так: Это центральная разностная схема (центральная разностная схема). Использование При вычислении первой производной функции :math:`f(x)` на компьютере мы заменяем бесконечно малую :math:`h \rightarrow \infty`на маленькое, но конечное значение :math:`h`: \begin{align*}
    \mathrm{O}\left(h^{2}\right)=-\frac{h^{2}}{6} f^{\prime \prime \prime}(x)+\ldots.
\end{align*} \begin{equation}
    \mathrm{O}(h)=-\frac{h}{2} f^{\prime \prime}(x)+\ldots.
\end{equation} \begin{equation}
    f(x) = \sin{(x)}
\end{equation} \begin{equation}
    f(x+h)=f(x)+h f^{\prime}(x)+\frac{h^{2}}{2} f^{\prime \prime}(x)+\frac{h^{3}}{6} f^{\prime \prime \prime}(x)+\ldots,
\end{equation} \begin{equation}
    f^{\prime}(x)=\frac{f(x+h)-f(x)}{h}+\mathrm{O}(h),
\end{equation} \begin{equation}
    f^{\prime}(x)=\frac{f(x+h)-f(x-h)}{2 h}+\mathrm{O}\left(h^{2}\right),
\end{equation} \begin{equation}
    f^{\prime}(x)=\lim _{h \rightarrow 0} \frac{f(x+h)-f(x)}{h}.
\end{equation} откуда следует, что в первом порядке разложения где :math:`\mathrm{O}(h)` - это ошибка вычисления производной, которая, естественно, зависит от :math:`h`. Предыдущая формула называется разностной схемой для вычисления первой производной (точнее, правильной разностной схемой или просто правильной разностной). Точно так же, может быть, написана левая разностная схема. где погрешность вычисления первой производной 
��          �               L  
   M     X  E   n  _   �  O     "   d  9   �  �   �  n   c     �  X   �  �  1  �   �  �   �  J   !	  �   l	  �   
    �
  N  �     ;  (   R  �   {  �     �   �  7   8  g   p  
  �  �   �     �  z   �  �    �   �  �     J     �   X  �   �  �  �   Definition Dormand-Prince Method Imagine that we want to minimize the following differential equation: Next, we will calculate the next step value :math:`z_{k+1}` by Runge-Kutta method of order 5 as The one step calculation in the Dormand-Prince method is done as the following. Then the code will look like this: Then the next step value :math:`y_{k+1}` is calculated as This is a calculation by Runge-Kutta method of order 4. We have to be aware that we do not use :math:`k_2`, though it is used to calculate :math:`k_3` and so on. This is considered as the error in :math:`y_{k+1}`. We calculate the optimal time interval :math:`h_{opt}` as, Usage We calculate the difference of the two next values :math:`\left|z_{k+1}-y_{k+1}\right|`. \begin{equation}
    \begin{aligned}
        k_{1} &=h f\left(t_{k}, y_{k}\right), \\
        k_{2} &=h f\left(t_{k}+\frac{1}{5} h, y_{k}+\frac{1}{5} k_{1}\right), \\
        k_{3} &=h f\left(t_{k}+\frac{3}{10} h, y_{k}+\frac{3}{40} k_{1}+\frac{9}{40} k_{2}\right), \\
        k_{4} &=h f\left(t_{k}+\frac{4}{5} h, y_{k}+\frac{44}{45} k_{1}-\frac{56}{15} k_{2}+\frac{32}{9} k_{3}\right), \\
        k_{5} &=h f\left(t_{k}+\frac{8}{9} h, y_{k}+\frac{19372}{6561} k_{1}-\frac{25360}{2187} k_{2}+\frac{64448}{6561} k_{3}-\frac{212}{729} k_{4}\right), \\
        k_{6} &=h f\left(t_{k}+h, y_{k}+\frac{9017}{3168} k_{1}-\frac{355}{33} k_{2}-\frac{46732}{5247} k_{3}+\frac{49}{176} k_{4}-\frac{5103}{18656} k_{5}\right), \\
        k_{7} &=h f\left(t_{k}+h, y_{k}+\frac{35}{384} k_{1}+\frac{500}{1113} k_{3}+\frac{125}{192} k_{4}-\frac{2187}{6784} k_{5}+\frac{11}{84} k_{6}\right).
    \end{aligned}
\end{equation} \begin{equation}
    \left|z_{k+1}-y_{k+1}\right|=\left|\frac{71}{57600} k_{1}-\frac{71}{16695} k_{3}+\frac{71}{1920} k_{4}-\frac{17253}{339200} k_{5}+\frac{22}{525} k_{6}-\frac{1}{40} k_{7}\right|
\end{equation} \begin{equation}
    s =\left(\frac{\varepsilon h}{2\left|z_{k+1}-y_{k+1}\right|}\right)^{\frac{1}{5}}, \\
    h_{o p t} =s h,
\end{equation} \begin{equation}
    y' = 3 \frac{y}{x} + x^3 + x, y(1) = 3
\end{equation} \begin{equation}
    y_{k+1}=y_{k}+\frac{35}{384} k_{1}+\frac{500}{1113} k_{3}+\frac{125}{192} k_{4}-\frac{2187}{6784} k_{5}+\frac{11}{84} k_{6}.
\end{equation} \begin{equation}
    z_{k+1}=y_{k}+\frac{5179}{57600} k_{1}+\frac{7571}{16695} k_{3}+\frac{393}{640} k_{4}-\frac{92097}{339200} k_{5}+\frac{187}{2100} k_{6}+\frac{1}{40} k_{7}
\end{equation} where :math:`h` in the right side is the old time interval. In practical programming, this new :math:`h_{opt}` will be used in the next step of the calculation, though the author thinks it should be also used in the present calculation when it is very small, half or smaller for example. Project-Id-Version: Numerary 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-09-17 18:15+0400
PO-Revision-Date: 2020-09-18 13:41+0400
Last-Translator: Kamran Asgarov <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 Определение Метод Дорманда-Принса Представьте, что мы хотим минимизировать следующее дифференциальное уравнение: Далее мы вычислим значение следующего шага :math:`z_{k+1}` методом Рунге-Кутты порядка 5 как Одноэтапный расчет в методе Дорманда-Принса выполняется следующим образом. Тогда код будет выглядеть так: Тогда значение следующего шага :math:`y_{k+1}` вычисляется как Это вычисление методом Рунге-Кутты порядка 4. Мы должны знать, что мы не используем :math:`k_2`, хотя оно используется для вычисления :math:`k_3` и так далее. Это считается ошибкой в :math:`y_{k+1}`. Мы вычисляем оптимальный интервал времени :math:`h_{opt}` как, Использование Рассчитываем разницу двух следующих значений :math:`\left|z_{k+1}-y_{k+1}\right|`. \begin{equation}
    \begin{aligned}
        k_{1} &=h f\left(t_{k}, y_{k}\right), \\
        k_{2} &=h f\left(t_{k}+\frac{1}{5} h, y_{k}+\frac{1}{5} k_{1}\right), \\
        k_{3} &=h f\left(t_{k}+\frac{3}{10} h, y_{k}+\frac{3}{40} k_{1}+\frac{9}{40} k_{2}\right), \\
        k_{4} &=h f\left(t_{k}+\frac{4}{5} h, y_{k}+\frac{44}{45} k_{1}-\frac{56}{15} k_{2}+\frac{32}{9} k_{3}\right), \\
        k_{5} &=h f\left(t_{k}+\frac{8}{9} h, y_{k}+\frac{19372}{6561} k_{1}-\frac{25360}{2187} k_{2}+\frac{64448}{6561} k_{3}-\frac{212}{729} k_{4}\right), \\
        k_{6} &=h f\left(t_{k}+h, y_{k}+\frac{9017}{3168} k_{1}-\frac{355}{33} k_{2}-\frac{46732}{5247} k_{3}+\frac{49}{176} k_{4}-\frac{5103}{18656} k_{5}\right), \\
        k_{7} &=h f\left(t_{k}+h, y_{k}+\frac{35}{384} k_{1}+\frac{500}{1113} k_{3}+\frac{125}{192} k_{4}-\frac{2187}{6784} k_{5}+\frac{11}{84} k_{6}\right).
    \end{aligned}
\end{equation} \begin{equation}
    \left|z_{k+1}-y_{k+1}\right|=\left|\frac{71}{57600} k_{1}-\frac{71}{16695} k_{3}+\frac{71}{1920} k_{4}-\frac{17253}{339200} k_{5}+\frac{22}{525} k_{6}-\frac{1}{40} k_{7}\right|
\end{equation} \begin{equation}
    s =\left(\frac{\varepsilon h}{2\left|z_{k+1}-y_{k+1}\right|}\right)^{\frac{1}{5}}, \\
    h_{o p t} =s h,
\end{equation} \begin{equation}
    y' = 3 \frac{y}{x} + x^3 + x, y(1) = 3
\end{equation} \begin{equation}
    y_{k+1}=y_{k}+\frac{35}{384} k_{1}+\frac{500}{1113} k_{3}+\frac{125}{192} k_{4}-\frac{2187}{6784} k_{5}+\frac{11}{84} k_{6}.
\end{equation} \begin{equation}
    z_{k+1}=y_{k}+\frac{5179}{57600} k_{1}+\frac{7571}{16695} k_{3}+\frac{393}{640} k_{4}-\frac{92097}{339200} k_{5}+\frac{187}{2100} k_{6}+\frac{1}{40} k_{7}
\end{equation} где :math:`h` в правой части - старый интервал времени. В практическом программировании этот новый :math:`h_{opt}` будет использоваться на следующем этапе расчета, хотя автор считает, что его также следует использовать в текущих расчетах, когда он очень мал, например, наполовину или меньше. 
��                        �  J  �  \   8  �   �  	   j     t  <  �  C   �       }   #     �  �   �  K   ^	  "   �	  Z   �	  7   (
     `
  7  f
  �  �  �  ]  ;  1  (   m  �  �  ^    �  �     �     �     �     �  X    J  [  �   �   �  A!     �"  ,   �"    #  �   ''  '   �'  �   �'  5   �(  F  �(  �   >*  7   �*  �   �*  e   �+     �+  7  ,  �  M/  �  3  ;  �6  (   9  �  E9  ^  .;  �  �<  '   d>  (   �>  E   �>     �>    \begin{align*}
        \left\{
            \begin{array}{ccc}
                x_{1}+\frac{a_{12}}{a_{11}}   \cdot x_{2} + & \cdots & + \frac{a_{1 n}}{a_{11}}  \cdot x_{n}=\frac{y_{1}}{a_{11}} \\
                x_{1}+\frac{a_{22}}{a_{21}}   \cdot x_{2} + & \cdots & + \frac{a_{2 n}}{a_{21}}  \cdot x_{n}=\frac{y_{2}}{a_{21}} \\
                                                            & \cdots & \\
                x_{1}+\frac{a_{n 2}}{a_{n 1}} \cdot x_{2} + & \cdots & + \frac{a_{n n}}{a_{n 1}} \cdot x_{n}=\frac{y_{n}}{a_{n 1}}
            \end{array}
        \right.
\end{align*} A new system of equations is obtained, in which the corresponding coefficients are replaced. After the indicated transformations have been completed, the first row and the first column are mentally deleted and continue the specified process for all subsequent equations until an equation with one unknown: Algorithm Gauss Elimination Method Gauss exceptions are based on the idea of ​​successive exceptions variables one at a time until only one equation remains with one variable on the left side. Then this equation is solved with respect to a single variable. Thus, the system of equations lead to a triangular (step) shape. For this, among the elements the first column of the matrix is ​​selected nonzero (and most often maximum) element and move it to its highest position by rearranging lines. Then all the equations are normalized, dividing it by the coefficient ai1, where i is the column number. Imagine that we want to solve following linear system of equations: Reverse substitution Reverse substitution involves the substitution of the value of x_n obtained in the previous step into the previous equations: Sequential exception The Gauss method is a classical method for solving a system of linear algebraic equations (SLAE). Consider a system of linear equations with real constant coefficients The Gauss method of solving a system of linear equations includes 2 stages: Then the code will look like this: Then the first line obtained after the permutation is subtracted from the remaining lines: This procedure is repeated for all remaining solutions: Usage \begin{align*}
        \begin{array}{rcl}
            x_{n-1}                                                                                                 & = & y_{n-1}^{(n-1)^{\prime}}-a_{(n-1) n}^{(n-1) \prime} \cdot x_{n} \\
            x_{n-2}+a_{(n-2)(n-1)}^{(n-2) \prime} \cdot x_{n-1}                                                     & = & y_{n-2}^{(n-2)^{\prime}}-a_{(n-2) n}^{(n-2) \prime} \cdot x_{n} \\
            \cdots \\
            x_{2}+a_{23}^{\prime \prime} \cdot x_{3}+\cdots+a_{2(n-1)}^{\prime \prime} \cdot x_{n-1}                & = & y_{2}^{\prime \prime}-a_{2 n}^{\prime \prime} \cdot x_{n} \\
            x_{1}+a_{12}^{\prime} \cdot x_{2}+a_{13}^{\prime} \cdot x_{3}+\cdots+a_{1(n-1)}^{\prime} \cdot x_{n-1}  & = & y_{1}^{\prime}-a_{1 n}^{\prime} \cdot x_{n}
        \end{array}
\end{align*} \begin{align*}
        \left\{
            \begin{array}{r c r c r c l}
                x_{1} & + & \frac{a_{12}}{a_{11}} \cdot x_{2}                                      & + \cdots + & \frac{a_{1 n}}{a_{11}} \cdot x_{n}                                       & = & \frac{y_{1}}{a_{11}} \\
                0     & + & \left(\frac{a_{22}}{a_{21}}-\frac{a_{12}}{a_{11}}\right) \cdot x_{2}   & + \cdots + &  \left(\frac{a_{2 n}}{a_{21}}-\frac{a_{1 n}}{a_{11}}\right) \cdot x_{n}  & = & \left(\frac{y_{2}}{a_{21}}-\frac{y_{1}}{a_{11}}\right) \\
                      &&                                                                           &   \cdots   & \\
                0     & + & \left(\frac{a_{n 2}}{a_{n 1}}-\frac{a_{12}}{a_{11}}\right) \cdot x_{2} & + \cdots + &  \left(\frac{a_{n n}}{a_{n 1}}-\frac{a_{1 n}}{a_{11}}\right) \cdot x_{n} & = & \left(\frac{y_{n}}{a_{n 1}}-\frac{y_{1}}{a_{11}}\right)
            \end{array}
        \right.
\end{align*} \begin{align*}
        \left\{
            \begin{array}{r c r c r c r c r}
                x_{1} & + & a_{12}^{\prime} \cdot x_{2} & + & a_{13}^{\prime} \cdot x_{3}        & + \cdots + & a_{1 n}^{\prime} \cdot x_{n}               & = & y_{1}^{\prime} \\
                0     & + & x_{2}                       & + & a_{23}^{\prime \prime} \cdot x_{3} & + \cdots + & a_{2 n}^{\prime \prime} \cdot x_{n}        & = & y_{2}^{\prime \prime} \\
                0     & + & 0                           & + & x_{3}                              & + \cdots + & a_{3 n}^{\prime \prime \prime} \cdot x_{n} & = & y_{3}^{\prime \prime \prime} \\
                      &&                                &&                                       &   \cdots   & \\
                0     & + & 0                           & + & 0                                  & + \cdots + & x_{n}                                      & = & y_{n}^{n \prime}
            \end{array}
        \right.
\end{align*} \begin{align*}
        \left\{
            \begin{array}{r c r c r c r}
                x_{1} & + & a_{12}^{\prime} \cdot x_{2}  & + \cdots + & a_{1 n}^{\prime} \cdot x_{n} & = & y_{1}^{\prime} \\
                0     & + & a_{22}^{\prime} \cdot x_{2}  & + \cdots + & a_{2 n}^{\prime} \cdot x_{n} & = & y_{2}^{\prime} \\
                      &&                                 &   \cdots   & \\
                0     & + & a_{n 2}^{\prime} \cdot x_{2} & + \cdots + & a_{n n}^{\prime} \cdot x_{n} & = & y_{n}^{\prime}
            \end{array}
        \right.
\end{align*} \begin{align*}
    A x = y,
\end{align*} \begin{align*}
    A=\left(
        \begin{array}{ccc}
            a_{11}  & \dots & a_{1 n} \\
                    & \dots & \\
            a_{n 1} & \dots & a_{n n}
        \end{array}
    \right),
    \quad x=\left(
        \begin{array}{c}
            x_{1} \\
            \vdots \\
            x_{n}
        \end{array}
    \right),
    \quad y=\left(
        \begin{array}{c}
            y_{1} \\
            \vdots \\
            y_{m}
        \end{array}
    \right).
\end{align*} \begin{align*}
    \left(
        \begin{array}{cc}
            2  & 1 \\
            -1 & 1
        \end{array}
    \right)
    \left(
        \begin{array}{c}
            x_{1} \\
            x_{2}
        \end{array}
    \right)
    =
    \left(
        \begin{array}{c}
            5 \\
            2
        \end{array}
    \right).
\end{align*} \begin{align*}
    \left\{
        \begin{array}{ccc}
            a_{11}  \cdot x_{1}  + a_{12}  \cdot x_{2}  + & \cdots & +  a_{1 n} \cdot x_{n}=y_{1} \\
            a_{21}  \cdot x_{1}  + a_{22}  \cdot x_{2}  + & \cdots & +  a_{2 n} \cdot x_{n}=y_{2} \\
                                                          & \cdots & \\
            a_{n 1} \cdot x_{1}  + a_{n 2} \cdot x_{2}  + & \cdots & +  a_{n n} \cdot x_{n}=y_{n}
        \end{array}
    \right.
\end{align*} or in matrix form reverse substitution. sequential (direct) exception; where Project-Id-Version: Numerary 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-09-17 18:15+0400
PO-Revision-Date: 2020-09-18 14:34+0400
Last-Translator: Kamran Asgarov <asgarovkamran@gmail.com>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
  \begin{align*}
        \left\{
            \begin{array}{ccc}
                x_{1}+\frac{a_{12}}{a_{11}}   \cdot x_{2} + & \cdots & + \frac{a_{1 n}}{a_{11}}  \cdot x_{n}=\frac{y_{1}}{a_{11}} \\
                x_{1}+\frac{a_{22}}{a_{21}}   \cdot x_{2} + & \cdots & + \frac{a_{2 n}}{a_{21}}  \cdot x_{n}=\frac{y_{2}}{a_{21}} \\
                                                            & \cdots & \\
                x_{1}+\frac{a_{n 2}}{a_{n 1}} \cdot x_{2} + & \cdots & + \frac{a_{n n}}{a_{n 1}} \cdot x_{n}=\frac{y_{n}}{a_{n 1}}
            \end{array}
        \right.
\end{align*} Получают новую систему уравнений, в которой заменены соответствующие коэффициенты. После того, как указанные преобразования были совершены, первую строку и первый столбец мысленно вычёркивают и продолжают указанный процесс для всех последующих уравнений пока не останется уравнение с одной неизвестной: Алгоритм Метод исключения Гаусса Исключения Гаусса основаны на идее последовательного исключения переменных по одной до тех пор, пока не останется только одно уравнение с одной переменной в левой части. Затем это уравнение решается относительно единственной переменной. Таким образом, систему уравнений приводят к треугольной (ступенчатой) форме. Для этого среди элементов первого столбца матрицы выбирают ненулевой (а чаще максимальный) элемент и перемещают его на крайнее верхнее положение перестановкой строк. Затем нормируют все уравнения, разделив его на коэффициент ai1, где i– номер столбца. Представьте, что мы хотим решить следующую линейную систему уравнений: Обратная подстановка Обратная подстановка предполагает подстановку полученного на предыдущем шаге значения переменной :math:`xn` в предыдущие уравнения: Последовательное исключение Метод Гаусса - классический метод решения системы линейных алгебраических уравнений (СЛАУ). Рассмотрим систему линейных уравнений с действительными постоянными коэффициентами Метод Гаусса решения системы линейных уравнений включает в себя 2 стадии: Тогда код будет выглядеть так: Затем вычитают получившуюся после перестановки первую строку из остальных строк: Эта процедура повторяется для всех оставшихся решений: Использование \begin{align*}
        \begin{array}{rcl}
            x_{n-1}                                                                                                 & = & y_{n-1}^{(n-1)^{\prime}}-a_{(n-1) n}^{(n-1) \prime} \cdot x_{n} \\
            x_{n-2}+a_{(n-2)(n-1)}^{(n-2) \prime} \cdot x_{n-1}                                                     & = & y_{n-2}^{(n-2)^{\prime}}-a_{(n-2) n}^{(n-2) \prime} \cdot x_{n} \\
            \cdots \\
            x_{2}+a_{23}^{\prime \prime} \cdot x_{3}+\cdots+a_{2(n-1)}^{\prime \prime} \cdot x_{n-1}                & = & y_{2}^{\prime \prime}-a_{2 n}^{\prime \prime} \cdot x_{n} \\
            x_{1}+a_{12}^{\prime} \cdot x_{2}+a_{13}^{\prime} \cdot x_{3}+\cdots+a_{1(n-1)}^{\prime} \cdot x_{n-1}  & = & y_{1}^{\prime}-a_{1 n}^{\prime} \cdot x_{n}
        \end{array}
\end{align*} \begin{align*}
        \left\{
            \begin{array}{r c r c r c l}
                x_{1} & + & \frac{a_{12}}{a_{11}} \cdot x_{2}                                      & + \cdots + & \frac{a_{1 n}}{a_{11}} \cdot x_{n}                                       & = & \frac{y_{1}}{a_{11}} \\
                0     & + & \left(\frac{a_{22}}{a_{21}}-\frac{a_{12}}{a_{11}}\right) \cdot x_{2}   & + \cdots + &  \left(\frac{a_{2 n}}{a_{21}}-\frac{a_{1 n}}{a_{11}}\right) \cdot x_{n}  & = & \left(\frac{y_{2}}{a_{21}}-\frac{y_{1}}{a_{11}}\right) \\
                      &&                                                                           &   \cdots   & \\
                0     & + & \left(\frac{a_{n 2}}{a_{n 1}}-\frac{a_{12}}{a_{11}}\right) \cdot x_{2} & + \cdots + &  \left(\frac{a_{n n}}{a_{n 1}}-\frac{a_{1 n}}{a_{11}}\right) \cdot x_{n} & = & \left(\frac{y_{n}}{a_{n 1}}-\frac{y_{1}}{a_{11}}\right)
            \end{array}
        \right.
\end{align*} \begin{align*}
        \left\{
            \begin{array}{r c r c r c r c r}
                x_{1} & + & a_{12}^{\prime} \cdot x_{2} & + & a_{13}^{\prime} \cdot x_{3}        & + \cdots + & a_{1 n}^{\prime} \cdot x_{n}               & = & y_{1}^{\prime} \\
                0     & + & x_{2}                       & + & a_{23}^{\prime \prime} \cdot x_{3} & + \cdots + & a_{2 n}^{\prime \prime} \cdot x_{n}        & = & y_{2}^{\prime \prime} \\
                0     & + & 0                           & + & x_{3}                              & + \cdots + & a_{3 n}^{\prime \prime \prime} \cdot x_{n} & = & y_{3}^{\prime \prime \prime} \\
                      &&                                &&                                       &   \cdots   & \\
                0     & + & 0                           & + & 0                                  & + \cdots + & x_{n}                                      & = & y_{n}^{n \prime}
            \end{array}
        \right.
\end{align*} \begin{align*}
        \left\{
            \begin{array}{r c r c r c r}
                x_{1} & + & a_{12}^{\prime} \cdot x_{2}  & + \cdots + & a_{1 n}^{\prime} \cdot x_{n} & = & y_{1}^{\prime} \\
                0     & + & a_{22}^{\prime} \cdot x_{2}  & + \cdots + & a_{2 n}^{\prime} \cdot x_{n} & = & y_{2}^{\prime} \\
                      &&                                 &   \cdots   & \\
                0     & + & a_{n 2}^{\prime} \cdot x_{2} & + \cdots + & a_{n n}^{\prime} \cdot x_{n} & = & y_{n}^{\prime}
            \end{array}
        \right.
\end{align*} \begin{align*}
    A x = y,
\end{align*} \begin{align*}
    A=\left(
        \begin{array}{ccc}
            a_{11}  & \dots & a_{1 n} \\
                    & \dots & \\
            a_{n 1} & \dots & a_{n n}
        \end{array}
    \right),
    \quad x=\left(
        \begin{array}{c}
            x_{1} \\
            \vdots \\
            x_{n}
        \end{array}
    \right),
    \quad y=\left(
        \begin{array}{c}
            y_{1} \\
            \vdots \\
            y_{m}
        \end{array}
    \right).
\end{align*} \begin{align*}
    \left(
        \begin{array}{cc}
            2  & 1 \\
            -1 & 1
        \end{array}
    \right)
    \left(
        \begin{array}{c}
            x_{1} \\
            x_{2}
        \end{array}
    \right)
    =
    \left(
        \begin{array}{c}
            5 \\
            2
        \end{array}
    \right).
\end{align*} \begin{align*}
    \left\{
        \begin{array}{ccc}
            a_{11}  \cdot x_{1}  + a_{12}  \cdot x_{2}  + & \cdots & +  a_{1 n} \cdot x_{n}=y_{1} \\
            a_{21}  \cdot x_{1}  + a_{22}  \cdot x_{2}  + & \cdots & +  a_{2 n} \cdot x_{n}=y_{2} \\
                                                          & \cdots & \\
            a_{n 1} \cdot x_{1}  + a_{n 2} \cdot x_{2}  + & \cdots & +  a_{n n} \cdot x_{n}=y_{n}
        \end{array}
    \right.
\end{align*} или в матричной форме обратная подстановка. последовательное (прямое) исключение; где 
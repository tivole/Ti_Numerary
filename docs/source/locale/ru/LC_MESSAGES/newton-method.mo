��    %      D              l  =  m  �   �  �  �  �     e     �   g  r   +     �  �   �    b	     }
  \   �
     �
     �
     �
     �
       
     L        c  C   i  p   �  �     i  �  �   E  �     w   �  �   A  l     j   n  �   �  y   Z  J   �  "     �   B  �     X  �  �  �  �  �  z  V  �   �  m   �    �  �   �     �  !  �  �  �  
   J!  �   U!  	   �!  	   "  	   "  	   "  	   $"  
   ."  �   9"     �"  _   �"  �   Q#  �   ,$  i  �$  �   S&  �   '  w   �'  �   O(  l   )  j   |)  �   �)  y   h*  �   �*  7   i+  .  �+  �   �,   **Newton’s method** is one of the most popular numerical methods, and is even referred by *Burden* and *Faires* as the most powerful method that is used to solve for the equation :math:`f(x) = 0`. This method originates from the *Taylor’s series* expansion of the function :math:`f(x)` about the point :math:`x1`: **Note:** As the iterations begin to have the same repeated values i.e. as :math:`x_i = x_{i+1} = \bar{x}` this is an indication that :math:`f(x)` converges to :math:`\bar{x}`. Thus :math:`x_i` is the root of the function :math:`f(x)`. **Note:** Rearranging the system in *Step 3*, we get that :math:`\mathbf{y}^{(0)}=-J\left(\mathbf{x}^{(0)}\right)^{-1} \mathbf{F}\left(\mathbf{x}^{(0)}\right)`. The significance of this is that, since :math:`\mathbf{y}^{(0)}=-J\left(\mathbf{x}^{(0)}\right)^{-1} \mathbf{F}\left(\mathbf{x}^{(0)}\right)`, we can replace :math:`-J\left(\mathbf{x}^{(0)}\right)^{-1} \mathbf{F}\left(\mathbf{x}^{(0)}\right)` in our iterative formula with :math:`\mathbf{y}^{(0)}`. This result will yield that **Note:** When a set of vectors converges, the norm :math:`\left\|\mathbf{x}^{(k)}-\mathbf{x}^{(k-1)}\right\|=0`. This means that Calculate :math:`J\left(\mathbf{x}^{(0)}\right)` and :math:`\mathbf{F}\left(\mathbf{x}^{(0)}\right)`. In order to find :math:`\mathbf{y}^{(0)}`, we solve the linear system :math:`J\left(\mathbf{x}^{(0)}\right) \mathbf{y}^{(0)}=-\mathbf{F}\left(\mathbf{x}^{(0)}\right)`, using Gaussian Elimination. Let :math:`\mathbf{x}^{(0)}=\left(x_{1}^{(0)}, x_{2}^{(0)}, \ldots, x_{n}^{(0)}\right)` be a given initial vector. Newton's Method Once :math:`\mathbf{y}^{(0)}` is found, we can now proceed to finish the first iteration by solving for :math:`\mathbf{x}^{(1)}`. Thus using the result from *Step 3*, we have that Once we have calculated :math:`\mathbf{x}^{(1)}`, we repeat the process again, until :math:`\mathbf{x}^{(k)}` converges to :math:`\bar{x}`. This indicates we have reached the solution to :math:`\mathbf{F}(\mathbf{x})=\mathbf{0}`, where :math:`\bar{x}` is the solution to the system. Overview Rearranging the previous expression we obtain the next approximation to the root, giving us: Step 1: Step 2: Step 3: Step 4: Step 5: The Method Thus generalizing previous expression we obtain Newton’s iterative method: Usage We now have to calculate the vector :math:`\mathbf{y}^{(0)}`, where We then set previous expression to zero (i.e :math:`f(x) = 0` ) to find the root of the equation which gives us: \begin{equation}
    \left\|\mathbf{x}^{(k)}-\mathbf{x}^{(k-1)}\right\|=\sqrt{\left(x_{1}^{(k)}-x_{1}^{(k-1)}\right)^{2}+\cdots+\left(x_{n}^{(k)}-x_{n}^{(k-1)}\right)^{2}}=0
\end{equation} \begin{equation}
    \mathbf{x}^{(1)}=\mathbf{x}^{(0)}+\mathbf{y}^{(0)}=
    \left[\begin{array}{c}
        x_{1}^{(0)} \\
        x_{2}^{(0)} \\
        \vdots \\
        x_{n}^{(0)}
    \end{array}\right]
    +
    \left[\begin{array}{c}
        y_{1}^{(0)} \\
        y_{2}^{(0)} \\
        \vdots \\
        y_{n}^{(0)}
    \end{array}\right]
\end{equation} \begin{equation}
    \mathbf{x}^{(k)}=\mathbf{x}^{(k-1)}-J\left(\mathbf{x}^{(k-1)}\right)^{-1} \mathbf{F}\left(\mathbf{x}^{(k-1)}\right)=\mathbf{x}^{(k-1)}-\mathbf{y}^{(k-1)}
\end{equation} \begin{equation}
    \mathbf{y}=
    \left[
        \begin{array}{c}
            y_{1} \\
            y_{2} \\
            \vdots \\
            y_{n}
        \end{array}
    \right]
\end{equation} \begin{equation}
    f(x) \approx f\left(x_{1}\right)+\left(x-x_{1}\right) f^{\prime}\left(x_{1}\right).
\end{equation} \begin{equation}
    f(x)=f\left(x_{1}\right)+\left(x-x_{1}\right) f^{\prime}\left(x_{1}\right)+\frac{1}{2 !}\left(x-x_{1}\right)^{2} f^{\prime \prime}\left(x_{1}\right)+\cdots
\end{equation} \begin{equation}
    f\left(x_{1}\right)+\left(x-x_{1}\right) f^{\prime}\left(x_{1}\right)=0.
\end{equation} \begin{equation}
    x=x_{2}=x_{1}-\frac{f\left(x_{1}\right)}{f^{\prime}\left(x_{1}\right)}
\end{equation} \begin{equation}
    x_{i}=x_{i-1}-\frac{f\left(x_{i-1}\right)}{f^{\prime}\left(x_{i-1}\right)}, i \in \mathbb{N}
\end{equation} \begin{equation}\left\{\begin{array}{l}
    f(x, y)=x^{2}+y^{2}-5 \\
    g(x, y)=y-3 x+5
\end{array}\right.\end{equation} imagine that we want to solve the following nonlinear system of equations: then the code will look like this: where :math:`f`, and its first and second order derivatives, :math:`f'` and :math:`f''` are calculated at :math:`x_1`. If we take the first two terms of the Taylor’s series expansion we have: where :math:`x_{i} \rightarrow \bar{x}` (as :math:`i \rightarrow \infty`), and :math:`x` is the approximation to a root of the function :math:`f(x)`. Project-Id-Version: Numerary 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-09-17 18:15+0400
PO-Revision-Date: 2020-09-18 22:20+0400
Last-Translator: Kamran Asgarov <asgarovkamran@gmail.com>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **Метод Ньютона** - один из самых популярных численных методов, и Бёрден и Фейрес даже называют его самым мощным методом, который используется для решения уравнения :math:`f(x) = 0`. Этот метод основан на разложении в ряд Тейлора функции :math:`f(x)` относительно точки :math:`x_1`: **Примечание:** Поскольку итерации начинают иметь одинаковые повторяющиеся значения, т.е. как :math:`x_i = x_{i+1} = \bar{x}`, это указывает на то, что :math:`f(x)` сходится к :math:`\bar{x}`. Таким образом, :math:`x_i` - это корень функции :math:`f(x)`. **Примечание:** преобразовав систему на *шаге 3*, мы получим :math:`\mathbf{y}^{(0)}=-J\left(\mathbf{x}^{(0)}\right)^{-1} \mathbf{F}\left(\mathbf{x}^{(0)}\right)`. Значение этого состоит в том, что, поскольку math:`\mathbf{y}^{(0)}=-J\left(\mathbf{x}^{(0)}\right)^{-1} \mathbf{F}\left(\mathbf{x}^{(0)}\right)`, мы можем заменить :math:`-J\left(\mathbf{x}^{(0)}\right)^{-1} \mathbf{F}\left(\mathbf{x}^{(0)}\right)` в наша итерационная формула с :math:`\mathbf{y}^{(0)}`. Этот результат даст, что Примечание: когда набор векторов сходится, норма :math:`\left\|\mathbf{x}^{(k)}-\mathbf{x}^{(k-1)}\right\|=0`. Это означает, что Вычислите :math:`J\left(\mathbf{x}^{(0)}\right)` и :math:`\mathbf{F}\left(\mathbf{x}^{(0)}\right)`. Чтобы найти :math:`\mathbf{y}^{(0)}`, мы решаем линейную систему :math:`J\left(\mathbf{x}^{(0)}\right) \mathbf{y}^{(0)}=-\mathbf{F}\left(\mathbf{x}^{(0)}\right)`используя метод исключения Гаусса. Пусть :math:`\mathbf{x}^{(0)}=\left(x_{1}^{(0)}, x_{2}^{(0)}, \ldots, x_{n}^{(0)}\right)` - заданный начальный вектор. Метод Ньютона Как только :math:`\mathbf{y}^{(0)}` найден, мы можем приступить к завершению первой итерации, решив для :math:`\mathbf{x}^{(1)}`. Таким образом, используя результат *шага 3*, мы имеем После того, как мы вычислили :math:`\mathbf{x}^{(1)}`, мы повторяем процесс снова, пока :math:`\mathbf{x}^{(k)}` не сходится к :math:`\bar{x}`. Это указывает на то, что мы достигли решения :math:`\mathbf{F}(\mathbf{x})=\mathbf{0}`, где :math:`\bar{x}` - решение системы. Обзор Переставляя предыдущее выражение, мы получаем следующее приближение к корню, что дает нам: Шаг 1: Шаг 2: Шаг 3: Шаг 4: Шаг 5: Метод Таким образом, обобщая предыдущее выражение, мы получаем итерационный метод Ньютона: Использование Теперь нам нужно вычислить вектор :math:`\mathbf{y}^{(0)}`, где Затем мы устанавливаем предыдущее выражение равным нулю (т.е. :math:`f(x) = 0`), чтобы найти корень уравнения, которое дает нам: \begin{equation}
    \left\|\mathbf{x}^{(k)}-\mathbf{x}^{(k-1)}\right\|=\sqrt{\left(x_{1}^{(k)}-x_{1}^{(k-1)}\right)^{2}+\cdots+\left(x_{n}^{(k)}-x_{n}^{(k-1)}\right)^{2}}=0
\end{equation} \begin{equation}
    \mathbf{x}^{(1)}=\mathbf{x}^{(0)}+\mathbf{y}^{(0)}=
    \left[\begin{array}{c}
        x_{1}^{(0)} \\
        x_{2}^{(0)} \\
        \vdots \\
        x_{n}^{(0)}
    \end{array}\right]
    +
    \left[\begin{array}{c}
        y_{1}^{(0)} \\
        y_{2}^{(0)} \\
        \vdots \\
        y_{n}^{(0)}
    \end{array}\right]
\end{equation} \begin{equation}
    \mathbf{x}^{(k)}=\mathbf{x}^{(k-1)}-J\left(\mathbf{x}^{(k-1)}\right)^{-1} \mathbf{F}\left(\mathbf{x}^{(k-1)}\right)=\mathbf{x}^{(k-1)}-\mathbf{y}^{(k-1)}
\end{equation} \begin{equation}
    \mathbf{y}=
    \left[
        \begin{array}{c}
            y_{1} \\
            y_{2} \\
            \vdots \\
            y_{n}
        \end{array}
    \right]
\end{equation} \begin{equation}
    f(x) \approx f\left(x_{1}\right)+\left(x-x_{1}\right) f^{\prime}\left(x_{1}\right).
\end{equation} \begin{equation}
    f(x)=f\left(x_{1}\right)+\left(x-x_{1}\right) f^{\prime}\left(x_{1}\right)+\frac{1}{2 !}\left(x-x_{1}\right)^{2} f^{\prime \prime}\left(x_{1}\right)+\cdots
\end{equation} \begin{equation}
    f\left(x_{1}\right)+\left(x-x_{1}\right) f^{\prime}\left(x_{1}\right)=0.
\end{equation} \begin{equation}
    x=x_{2}=x_{1}-\frac{f\left(x_{1}\right)}{f^{\prime}\left(x_{1}\right)}
\end{equation} \begin{equation}
    x_{i}=x_{i-1}-\frac{f\left(x_{i-1}\right)}{f^{\prime}\left(x_{i-1}\right)}, i \in \mathbb{N}
\end{equation} \begin{equation}\left\{\begin{array}{l}
    f(x, y)=x^{2}+y^{2}-5 \\
    g(x, y)=y-3 x+5
\end{array}\right.\end{equation} представьте, что мы хотим решить следующую нелинейную систему уравнений: тогда код будет выглядеть так: где :math:`f`, а также его производные первого и второго порядка, :math:`f'` и :math:`f'` вычисляются в :math:`x_1`. Если мы возьмем первые два члена разложения в ряд Тейлора, мы получим: где :math:`x_{i} \rightarrow \bar{x}` (при :math:`i \rightarrow \infty`), а x - приближение к корню функции f (x). 
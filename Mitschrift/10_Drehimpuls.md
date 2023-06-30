# 10. Drehimpuls
## Quantenmechanischer Drehimpuls
Ein Drehimpuls ist ein Erzeuger einer Rotation $R_{\vec{n},\varphi}$ um eine Achse $\vec{n}$ und einen Winkel $\varphi$. Sie erfüllen daher die Vertauschungsrelation $[J_i, J_k] = i\hbar\varepsilon_{ikl} J_l$. Dies kann als Operator $U(R_{\vec{n},\varphi})$ repräsentiert werden.

$$
\begin{aligned}
    L_i &= i\hbar \left.\frac{\partial}{\partial \varphi} U(R_{i,\varphi}) \right|_{\varphi=0} \\
    U(R_{\vec{n},\varphi}) &= \exp\left[-\frac{i}{\hbar}(\hat{L}\cdot \vec{n})\varphi\right]
\end{aligned}
$$

Daraus folgt, dass der Kommutator von zwei Drehimpulskomponenten die dritte Drehimpulskomponente ergibt, also $[L_1, L_2] = i\hbar L_3$ sowie zyklische Vertauschungen. Da das Betragsquadrat $L^2$ eine Erhaltungsgröße ist, ist es insbesondere invariant unter Rotation um eine Achse $i$. Daher verschwindet der Kommutator $[L^2, L_i]=0$. Dies gilt sowohl für den Bahndrehimpulsoperator $\hat{\vec{L}}$, als auch für den Spinoperator $\hat{\vec{S}}$ und den Gesamtdrehimpulsoperator $\hat{\vec{J}}=\hat{\vec{L}}+\hat{\vec{S}}$.

Der Spin ist der Eigendrehimpuls und kann nur einen von zwei Werten abnehmen. Der Spinhilbertraum $\mathcal H_\mathrm{Spin}$ ist zweidimensional, jeder Spin lässt sich daher durch eine Linearkombination von $\mathrm{up\ }\ket{\uparrow}$ und $\mathrm{down\ }\ket{\downarrow}$ dargestellt werden.

Im Unterschied dazu wird die Basis des Ortshilbertraumes $\mathcal H_\mathrm{Ort}$ durch den gesamten dreidimensionalen Raum aufgespannt. Dadurch wird der Gesamtdrehimpulsoperator auf Zuständen im Hilbertraum $\mathcal H_\mathrm{Ort} \otimes \mathcal H_\mathrm{Spin}$ wirken.

$$
\begin{aligned}
    \mathcal H_\mathrm{Spin}
        &= \mathrm{Span}\{\ket{\uparrow}, \ket{\downarrow}\} \\
    \mathcal H_\mathrm{Ort}
        &= \mathrm{Span}\{\ket{\vec{r}}\}_{\vec{r}\in\mathbb R^3} \\
    \mathcal H_\mathrm{Ort} \otimes \mathcal H_\mathrm{Spin}
        &= \mathrm{Span}\{\ket{\vec{r},\uparrow}, \ket{\vec{r},\downarrow}\}_{\vec{r}\in\mathbb R^3}
\end{aligned}
$$

Die Eigenschaften der drei Impulsoperatoren ergeben sich durch die Eigenschaften der räumlichen Rotation. Dies wird mathematisch durch die spezielle orthogonale Gruppe $\mathrm{SO}(3)$ dargestellt und berechnet.

## Teilchen im dreidimensionalen Raum
Betrachtet werde ein Teilchen im dreidimensionalen Raum. Damit ist Ortsoperator $\hat{\vec{r}}$ ein dreidimensionaler Vektor mit den Komponenten $\hat{x}_i$, wobei die Achsen miteinander kommutieren $([x_i, x_j]=0)$. Die gemeinsamen Eigenzustände $\ket{\varphi_{\vec{r}}} = \ket{\vec{r}}\in\mathbb R^3$ sind durch die Eigenwertgleichungen $\hat{x}_i\ket{\vec{r}}=x_i\ket{\vec{r}}$ definiert.

Wie auch im eindimensionalen Fall sind verschiedene Eigenzustände orthogonal zueinander $(\braket{\vec{r}^\prime|\vec{r}}=\delta(\vec{r}^\prime-\vec{r}))$. Ebenso ist die Vollständigkeit analog definiert $(\int_{\mathbb R^3} \mathrm d^3\vec{r} \ket{\vec{r}}\bra{\vec{r}}=\mathds 1)$, wie auch die Wellenfunktion $\Psi(\vec{r}) = \braket{\vec{r}|\Psi}$ für einen Zustand $\ket{\Psi}\in\mathcal H$.

Der Drehimpulsoperator wird analog durch $\hat{\vec{p}}=-i\hbar \nabla$ dargestellt.


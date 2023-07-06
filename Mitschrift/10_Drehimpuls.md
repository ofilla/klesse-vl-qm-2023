# 10. Drehimpuls
## Quantenmechanischer Drehimpuls
Ein Drehimpuls $\vec{J}$ ist ein Erzeuger einer Rotation $R_{\vec{n},\varphi}$ um eine Achse $\vec{n}$ und einen Winkel $\varphi$. Sie erfüllen daher die Vertauschungsrelation $[J_i, J_k] = i\hbar\varepsilon_{ikl} J_l$. Dies kann als Transformationsoperator $U(R_{\vec{n},\varphi})$ repräsentiert werden.

$$
\begin{aligned}
    J_i &= i\hbar \left.\frac{\partial}{\partial \varphi} U(R_{i,\varphi}) \right|_{\varphi=0} \\
    U(R_{\vec{n},\varphi}) &= \exp\left[-\frac{i}{\hbar}(\hat{\vec{J}}\cdot \vec{n})\varphi\right]
\end{aligned}
$$

Daraus folgt, dass der Kommutator von zwei Drehimpulskomponenten die dritte Drehimpulskomponente ergibt, also $[J_i, J_j] = i\hbar\varepsilon_{ijk} J_k$. Da das Betragsquadrat $J^2$ eine Erhaltungsgröße ist, ist es insbesondere invariant unter Rotation um eine Achse $i$. Daher verschwindet der Kommutator $[J^2, J_i]=0$. Dies gilt sowohl für den Bahndrehimpulsoperator $\hat{\vec{L}}$, als auch für den Spinoperator $\hat{\vec{S}}$ und den Gesamtdrehimpulsoperator $\hat{\vec{J}}=\hat{\vec{L}}+\hat{\vec{S}}$.

Der Spin ist der Eigendrehimpuls und kann nur einen von zwei Werten abnehmen. Der Spinhilbertraum $\mathcal H_\mathrm{Spin}$ ist zweidimensional, jeder Spin lässt sich daher durch eine Linearkombination von $\mathrm{up\ }\ket{\uparrow}$ und $\mathrm{down\ }\ket{\downarrow}$ dargestellt werden.

Im Unterschied dazu wird die Basis des Ortshilbertraumes $\mathcal H_\mathrm{Ort}$ durch den gesamten dreidimensionalen Raum aufgespannt. Dadurch wird der Gesamtdrehimpulsoperator auf Zuständen im Hilbertraum $\mathcal H_\mathrm{Ort} \otimes \mathcal H_\mathrm{Spin}$ wirken. Daher gilt auch $U(R_{\vec{n},\varphi}) = \exp[-\frac{i}{\hbar}(\hat{\vec{L}}\cdot \vec{n})\varphi] \otimes \exp[-\frac{i}{\hbar}(\hat{\vec{S}}\cdot \vec{n})\varphi]$.

$$
\begin{aligned}
    \mathcal H_\mathrm{Spin}
        &= \mathrm{Span}\{\ket{\uparrow}, \ket{\downarrow}\} \subseteq \mathbb C^2\\
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

## Eigenzustände & Drehimpulsquantenzahlen
Da durch die Vertauschungsrelationen insbesondere $J^2$ und $J_3$ kommutieren $([J^2, J_3]=0)$, haben beide Operatoren eine gemeinsame Eigenbasis $\ket{a,b}$ mit $J^2\ket{a,b}=a\ket{a,b}$ und $J_3\ket{a,b}=b\ket{a,b}$.

$$
\begin{aligned}
    J_+ &= J_1 + iJ_2 \\
    J_- &= J_1 - iJ_2
\end{aligned}
$$

Durch die zueinander adjunkten Operatoren $J_\pm$, die den Aufsteiger- und Absteigeroperatoren des harmonischen Oszillators ähneln. Auch die Vertauschungsrelationen $[J_3, J_\pm] = \hbar J_\pm$ und $[J^2, J_\pm] = 0$ sind ähnlich. Dadurch kann man die Eigenwerte algebraisch ausrechnen. Daher gilt für einen beliebigen Eigenzustand von $J_3$ $b_0$, dass man mit $J_\pm$ benachbarte Eigenzustände $J_\pm\ket{a,b_0}=\ket{a,b_0\pm1}$ ermittelt.

Der Operator $J^2-J_3^2\ge 0$ muss positive Eigenwerte haben. Dadurch werden die Eigenwerte von $J_3$ durch die von $J^2$ beschränkt. Daher gibt es einen maximalen Eigenwert $b_\mathrm{max}$, sodass $J_+\ket{a, b_\mathrm{max}}=0$ unverändert bleibt. Analog gibt es auch einen minimalen Eigenwert $b_\mathrm{min}$. Dadurch ist auch $J_-J_+\ket{a, b_\mathrm{max}}=0$. Es gilt $J_-J_+=J^2-J_3^2-\hbar J_3$, daraus folgt $(J^2-J_3^2-\hbar J_3)\ket{a, b_\mathrm{max}}=0$, was äquivalent zu der Forderung $a=b_\mathrm{max}(b_\mathrm{max}+\hbar)$ führt. Gleichzeitig gilt auch $a=b_\mathrm{min}(b_\mathrm{min}-\hbar)$, was durch eine analoge Rechnung bewiesen ist. Daher muss $\bar{b}\equiv b_\mathrm{max}=-b_\mathrm{min}$ gelten. Der Abstand zwischen den Grenzen muss ein Vielfaches von $\hbar$ sein, daher gilt $2\bar{b}=n\hbar$ (mit $n\in\mathbb N$).

Daraus ergeben sich Eigenwerte zu $J^2$ als $a=\hbar^2 \frac{n}{2} (\frac{n}{2}+1)$ und zu $J_3$ als $b_\mathrm{max}=\hbar\cdot \frac{n}{2}$. Nun wird $j\equiv \frac{n}{2}$ als **Drehimpulsquantenzahl** bezeichnet. Da $b\in [-\frac{n\hbar}{2}, +\frac{n\hbar}{2}]$ ebenfalls in ganzzahligen Vielfachen von $\hbar$ quantisiert ist, kann es durch eine Quantenzahl $m=-j, \dots, j$ beschrieben werden. $m$ heißt **magnetische Quantenzahl**, weil sie für magnetische Effekte wie den Zeemann-Effekt relevant ist.

Damit sind die Eigenzustände und Eigenwerte durch folgende Relationen definiert.

$$
\begin{aligned}
    J^2 \ket{j, m} &= \hbar^2 j(j+1) \ket{j, m} \\
    J_3 \ket{j, m} &= \hbar m \ket{j, m} \\
\end{aligned}
$$

## Eigendrehimpuls / Spin
Der Spinoperator erfüllt die Relation $[S_i, S_j] = i\hbar\varepsilon_{ijk} S_k$, ebenso die anderen Relationen des Gesamtdrehimpulses $\vec{J}$. Daraus folgt, dass die Komponenten $S_i$ des Spinvektors durch die Paulimatrizen $\sigma_i$ darzustellen sind. Die Eigenwerte der Spinkomponenten $S_i$ sind allesamt $\pm\frac{\hbar}{2}$. Wie beim Stern-Gerlach-Experiment werden die Eigenzustände in der Eigenbasis einer Spinkomponente - hier $\ket{z\pm}$ - dargestellt.

$$
\begin{aligned}
    \vec{S} &= \frac{\hbar}{2}\vec{\sigma} \\
    \ket{x\pm} &= \frac{1}{\sqrt{2}}
        \begin{pmatrix} 1 \\ \pm 1 \end{pmatrix} \\
    \ket{y\pm} &= \frac{1}{\sqrt{2}}
        \begin{pmatrix} 1 \\ \pm i \end{pmatrix} \\
    \ket{z+} &= \ket{\uparrow} = \begin{pmatrix} 1 \\ 0 \end{pmatrix} \\
    \ket{z-} &= \ket{\downarrow} = \begin{pmatrix} 0 \\ 1 \end{pmatrix} \\
\end{aligned}
$$

Dadurch können die Eigenzustände und Eigenwerte allgemein bestimmt ebenso wie es der Gesamtdrehimpuls erfwerden und der Transformationsoperatur $U_\mathrm{spin}$ kann dadurch explizit angegeben werden.

$$
\begin{aligned}
    U_\mathrm{Spin}(R_{\vec{n},\varphi})
        &= \exp\left[-\frac{i}{\hbar}(\hat{\vec{S}}\cdot \vec{n})\varphi\right] \\
        &= \exp\left[-i\vec{n}\vec{\sigma}\frac{\varphi}{2}\right] \\
    U_\mathrm{Spin}(R_{\vec{n},\varphi})
        &= \mathds 1 \cos\left[\frac{\varphi}{2}\right]
            - i \vec{n}\vec{\sigma}\sin\left[\frac{\varphi}{2}\right]
\end{aligned}
$$

Durch den Term $\frac{\varphi}{2}$ wird eine Drehung um $2\pi$ die Rotation $U(R_{\vec{n},2\pi})=-\mathds 1$. Dies unterscheidet sich von der klassischen Rechnung, da der Spin dabei gespiegelt wird. Eine Drehung von $4\pi$ ergibt dagegen eine wirklich komplette Drehung. Tatsächlich ist eine Drehung um $2\pi$ auch im klassischen Fall unterschiedlich zu einer Drehung von $4\pi$.

Um diesen Faktor $-1$ zu kompensieren, muss die Wellenfunktion von Fermionen (mit halbzahligem Spin) antisymmetrisch sein. Daraus folgt das Pauliprinzip für Fermionen.

### Rotation im Stern-Gerlach-Experiment
Sei ein Strahl Silberatome im Stern-Gerlach-Experiment auf den Zustand $\ket{z+}$ präperiert. Sei nun ein zweiter Magnet im Winkel $\varphi$ zum ersten Magneten aufgebaut. Dann ist der finale Up-Zustand $\ket{z+^\prime}=U(R_{2,\varphi})\ket{z+}$. Dann folgt die Wahrscheinlichkeit den Zustand $\ket{z+}$ zu messen $P_+=|\braket{z+^\prime|z+}|^2=|\cos(\frac{\varphi}{2})|^2$. Bei einer Drehung um $30^\circ$ ist $P_+(30^\circ)\approx 93\%$.

### Beispiel: Spin des Elektrons
Der Eigenwert des Elektronenspins beträgt immer $\pm\frac{\hbar}{2}$, insbesondere gilt $S_3\ket{z\pm}=\pm\frac{\hbar}{2}\ket{z\pm}$. Dadurch ist die magnetische Quantenzahl $m=\pm\frac{1}{2}$. Da $j$ die Grenzen der gültigen $m$ definiert, muss $j=s=\frac{1}{2}$ gelten. Dies wird als Spin bezeichnet.

Da $s=\frac{1}{2}$ nennt man Elektronen "Spin-$\frac{1}{2}$-Teilchen" oder Fermionen.

## Bahndrehimpuls
Für den Bahndrehimpuls gilt die klassische Relation $\hat{\vec{L}}=\hat{\vec{r}}\times \hat{\vec{p}}$, zudem gelten die Relationen des Gesamtdrehimpules $\vec{J}$.

Die Eigenwerte sind für einen Zustand $\ket{j\equiv l, m}$ bekannt. Die Eigenfunktionen sind durch Kugelflächenfunktionen beschrieben, da diese die Differentialgleichung $L_3\Psi(r, \varphi, z) = -i\hbar \frac{\partial}{\partial \varphi} \Psi(r, \varphi, z)$ lösen.

Dadurch werden die Operatoren folgendermaßen in Kugelkoordinaten dargestellt. Diese werden durch die Kugelflächenfunktionen $Y_{l,m}(\vartheta, \varphi)$ gelöst

$$
\begin{aligned}
    L^2 &= -\hbar^2\left(
            \frac{1}{\sin \vartheta} \frac{\partial}{\partial \vartheta} \sin\vartheta \frac{\partial}{\partial \vartheta}
            +  \frac{1}{\sin \vartheta} \frac{\partial^2}{\partial \vartheta^2}
        \right) \\
    L_3 &= -i\hbar \frac{\partial}{\partial \varphi} \\
    \Rightarrow L^2 Y_{l,m}(\vartheta, \varphi) &= \hbar^2 l(l+1) Y_{l,m}(\vartheta, \varphi) \\
    \Rightarrow L_3 Y_{l,m}(\vartheta, \varphi) &= \hbar m Y_{l,m}(\vartheta, \varphi)
\end{aligned}
$$

Wird der Impulsoperator $\vec{p}$ in Kugelkoordinaten dargestellt, wird dessen Betragsquadrat abhängig vom Dreimpulsoperator. Dies ist für den Hamiltonoperator benötigt.

$$
    |\vec{p}|^2 = -\frac{\hbar^2}{r^2}
        \left(
            \frac{\partial}{\partial r} r^2 \frac{\partial}{\partial r}
            - \hat{L}^2
        \right)
$$

Über den folgenden Ansatz kann die Schrödingergleichung separiert werden. Dadurch kann man die statische Schrödingergleichung im effektiven Potential $V_{\mathrm{eff}, l}$ für eine Dimension lösen.

$$
\begin{aligned}
    \Psi_E(r, \vartheta, \varphi) &= \frac{1}{r} u(r) Y_{l,m}(\vartheta, \varphi) \\
    \Rightarrow E u(r) &= \left(
            -\frac{\hbar^2}{2m} \frac{\partial^2}{\partial r^2}
            + \frac{\hbar^2 l(l+1)}{2mr^2} + V(r)
        \right) u(r) \\
    V_{\mathrm{eff}, l} &= \frac{\hbar^2l(l+1)}{2mr^2} + V(r)
\end{aligned}
$$


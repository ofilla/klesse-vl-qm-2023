# 8. Störungstheorie
## Zeitunabhängige Störungstheorie
Im Allgemeinen wird ein reales System durch einen Hamiltonoperator $H$ beschrieben. Dieses soll kein ideales System sein, sondern geringfügig von einem idealen System abweichen. Dies kann ein näherungsweise harmonischer Oszillator sein, oft wird auch das Wasserstoffatom als ideales System verwendet.

Der Hamiltonoperator des idealen Systems sei $H_0$, $H_1$ sei eine Korrektur. Sei $|\lambda|\ll 1$ ein dimensionsloser Faktor, der die Störung klein hält. Wird diese Störung zu groß, kann man die Störungstheorie nicht mehr anwenden.

Dann gilt $H = H_0 + \lambda H_1$. Damit kann die Energie $E_n(\lambda) = E_n + \Delta E(\lambda)$ als Abweichung der idealen Eigenenergie $E_n$ bestimmt werden, ebenso ist $\ket{n(\lambda)}=\ket{n}+\ket{\Delta n(\lambda)}$ abweichend vom idealen Eigenzustand $\ket{n}$.

### Nicht-entartete Zustände
Im Folgenden wird angenommen, dass keine Entartungen von Zuständen vorliegen. Dies bedeutet, dass die Energieniveaus für $\forall m\neq n$ ungleich sind ($E_n\neq E_m$).

Die Lösungsidee ist eine Potenzreihenentwicklung um $\lambda$. $E_n^{(0)}$ und $\ket{n^{(0)}}$ sind die Korreturterme $0$-ter Ordnung. Diese Lösungen erfüllen die statische Schrödingergleichung.

$$
\begin{aligned}
    E_n(\lambda) &= E_n^{(0)} + \lambda E_n^{(1)} + \lambda^2 E_n^{(2)} + \mathcal O(\lambda^3) \\
    \ket{n(\lambda)} &= \ket{n^{(0)}} + \lambda\ket{n^{(1)}} + \lambda^2\ket{n^{(2)}} + \mathcal O(\lambda^3) \\
    (H_0+\lambda H_1)\ket{n(\lambda)} &\overset{!}{=} E_n(\lambda) \ket{n(\lambda)} \\
    \Rightarrow (H_0+\lambda H_1)
        (\ket{n^{(0)}} + \lambda\ket{n^{(1)}} + \lambda^2\ket{n^{(2)}})
        &\overset{!}{\approx} (E_n^{(0)} + \lambda E_n^{(1)} + \lambda^2 E_n^{(2)})
        (\ket{n^{(0)}} + \lambda\ket{n^{(1)}} + \lambda^2\ket{n^{(2)}})
\end{aligned}
$$

Um diese Gleichung zu lösen kann man nach Potenzen von $\lambda$ separieren. Dann kann man die Koeffizienten vergleichen. Dadurch erhält man je eine Gleichung für die Terme mit $\lambda^0$, $\lambda^1$ und $\lambda^2$.

$$
\begin{aligned}
    H_0\ket{n^{(0)}} &= E_n^{(0)}\ket{n^{(0)}}  && (0)\\
    H_0\ket{n^{(1)}} + H_1\ket{n^{(0)}}
        &= E_n^{(0)}\ket{n^{(1)}} + E_n^{(1)}\ket{n^{(0)}}   && (1)\\
    H_0\ket{n^{(2)}} + H_1\ket{n^{(1)}} &=
        E_n^{(0)}\ket{n^{(2)}} + E_n^{(1)}\ket{n^{(1)}} + E_n^{(2)}\ket{n^{(0)}}  && (2)
\end{aligned}
$$

 Die $\lambda^0$-Terme ergeben die ursprünglichen Eigenenergien und Eigenzustände. Eine Normierung von $\braket{n^{(0)}|n(\lambda)} \overset{!}{=} 1$ ist sinnvoll. Da diese für alle $\lambda$ gelten soll, folgt dass die ursprünglichen Eigenzustände $\ket{n^{(0)}}$ und die Korrekturen $\ket{n^{(l)}}$ für $l\ge 1$ orthogonal ($\braket{n^{(0)}|n^{(l)}}=0$) sein müssen.
 
In der $0$-ten Ordnung erhält man aus aus dem Multiplizieren von $\bra{n^{(0)}}$ an die der Gleichung $(0)$ die Eigenenergie $E_n$. In der $1$-ten Ordnung erhält man mit Gleichung $(1)$ auf analoge Weise $E_n^{(1)}=\braket{n|H_1|n}$, was der Erwartungswert der Störung ist.

Um mit Gleichung $(2)$ ebenso verfahren zu können, muss zunächst $\ket{n^{(1)}}$ ermittelt werden, um die Gleichung aufzulösen. Daraus erhält man $E_n^{(2)}=\sum_{m\neq n} \frac{|\braket{m|H_1|n}|^2}{E_n-E_m}$. Dies ist die Summe der Betragsquadrate der Matrixelemente der Störung, die durch die Energiedifferenz dividiert werden.

$$
\begin{aligned}
    E_n(\lambda) &= E_n + \lambda \braket{n|H_1|n} + \mathcal O(\lambda^2) \\
    E_n(\lambda) &= E_n + \lambda \braket{n|H_1|n} + \sum_{m\neq n} \frac{|\braket{m|H_1|n}|^2}{E_n-E_m} + \mathcal O(\lambda^3) \\
\end{aligned}
$$

Sei die Störung $H_1$ eine Matrix mit den Matrixelementen $H_{1, mn} = \braket{m|H_1|n}$. Sei $\ket{m}=\ket{m^{(0)}}$ ein von $\ket{n}$ unterschiedlicher ungestörter Zustand.

$$
\begin{aligned}
    \ket{(n^{(1)})} &= \sum_{m\neq n} c_m \ket{m} \\
    \Rightarrow \ket{(n^{(1)})} &= \sum_{m\neq n} \frac{\braket{m|H_1|n}}{E_n-E_m} \ket{m}
\end{aligned}
$$

### Niveauabstoßung
 Existierende Differenzen von Energieniveaus werden immer vergrößert, jedoch nie verringert. Dies geschieht durch die Terme zweiter Ordnung aus der Störungstheorie.

### Grundzustand
Da die Korrekturterme zweiter Ordnung negativ sind, wird der Grundzustand durch die Störungen abgesenkt.

### Beispiel: Harmonischer Oszillator mit Anharmonizität
Sei $H_1=\hbar\omega\left(\frac{x}{l}\right)^3$ eine kleine Anharmonizität eines ansonsten harmonischen Oszillators. In der Rechnung wird die Relation $\frac{x}{l}=\frac{1}{\sqrt{2}}(a^\dagger + a)$ verwendet. Aus $(a^\dagger + a)^3$ sind die Terme mit mehr Erzeugern $a^\dagger$ als Vernichtern $a$ irrelevant, da $a\ket{0}=\ket{0}$.

$$
\begin{aligned}
    H &= \underbrace{\frac{p^2}{2m} + \frac{m\omega^2}{2}x^2}_{H_0}
        + \lambda \underbrace{\hbar\omega\left(\frac{x}{l}\right)^3}_{H_1} \\
    \Rightarrow E_n(\lambda) &=
        \hbar\omega\left(n+\frac{1}{2}\right)
        + \lambda \frac{\hbar\omega}{l^3}\braket{n|x^3|n}
        - \lambda^2 \hbar^2\omega^2
            \sum_{m\neq n} \frac{|\braket{m|\frac{x^3}{l^3}|n}|^2}{\hbar\omega} \\
    \Rightarrow E_0(\lambda) &=
        \hbar\omega\left(n+\frac{1}{2}\right)
        + \underbrace{\lambda \frac{\hbar\omega}{l^3}\braket{0|x^3|0}}_{=0}
        - \lambda^2 \hbar^2\omega^2
            \sum_{m\neq 0} \frac{|\braket{m|\frac{x^3}{l^3}|0}|^2}{\hbar\omega}
\end{aligned}
$$

### Entartete Zustände
Sei der Zustand mit Energie $E_l$ $g$-fach entartet, d.h. es gibt $g$ Teilchen im Zustand $\ket{l}$. Dann gibt es einen $g$-dimensionalen Eigenraum $\mathcal H_l \subset \mathcal H$, sodass für alle enthaltenden Zustände  $\ket{\Psi}\in\mathcal H_l$ die Eigenwertgleichung $H_0\ket{\Psi}=E_l\ket{\Psi}$ gilt.

Eine Orthonormalbasis, bei der für verschiedene Basisvektoren $h\neq l$ das Skalarprodukt mit der Störung $\braket{\varphi_h|H_1|\varphi_l}=0$ verschwindet und $\braket{\varphi_h|\varphi_l}=\delta_{hl}$, ist für die Störungstheorie ist eine besonders gut geeignet. Diese kann durch eine Projektion auf $\mathcal H_l$ beschrieben werden, indem $\tilde{H}_1 = P_lH_1P_l$ den in die entsprechende Basis transformierten Hamiltonoperator beschreibt.

Nichtentartete Zustände $\ket{n}\neq \ket{l}$ sind senkrecht zu den Basisvektoren $\ket{\varphi_k}$ $(\braket{\varphi_k|n}=0)$. Analog zu den nicht-entarteten Zuständen liefert die Potentzreihenentwicklung mit anschließendem Koeffizientenvergleich folgende Relationen mit $j\in\{1,\dots, g\}$.

$$
\begin{aligned}
    E_{l,j}(\lambda) &= E_l + \lambda \braket{\varphi_j|H_1|\varphi_j}
        + \sum_{m\neq l} \frac{|\braket{m|H_1|\varphi_j}|^2}{E_l-E_m} + \mathcal O(\lambda^3) \\
    E_{n\neq j}(\lambda) &= E_n + \lambda \braket{n|H_1|n}
        + \sum_{m\neq n\neq l} \frac{|\braket{m|H_1|n}|^2}{E_n-E_m}
        + \sum_{j=1}^g \frac{|\braket{\varphi_j|H_1|n}|^2}{E_n-E_l}
        + \mathcal O(\lambda^3)
\end{aligned}
$$

Der Zeemann-Effekt ist ein Beispiel für Störungen mit entarteten Zuständen.

## Zeitabhängige Störungstheorie
### Zeitabhängige Störungen
Im Unterschied zur zeitunabhängigen Störungstheorie wird nun angekommen, dass die Störung in der Zeit variabel ist. Dies wird durch ein zeitabhängiges Potential $V(t)$ beschrieben. Die Dynamik des gestörten Systems soll nun in Bezug auf die ungestörte Dynamik von $H_0$ mit den Energieeigenwerten $E_n$ und Zuständen $\ket{n}$ bestimmt werden.

$$
    H(t) = H_0 + V(t)
$$
#### Zeitentwicklungsoperator $U_0(t)$
Der Zeitentwicklungsoperator $U_0(t)$ für das ungestörte System mit dem Hamiltonoperator $H_0$ lautet folgendermaßen.

$$
    U_0(t) = \exp\left[-\frac{i}{\hbar}H_0t\right]
$$

### Übergangswahrscheinlichkeit
Beispielsweise sei ein System zum Zeitpunkt $t=0$ im $H_0$-Eigenzustand $\ket{n}$. Dann gibt die Übergangswahrscheinlichkeit $P_{nm}(t)=|\braket{m|n}|^2$ die Wahrscheinlichkeit an, dass sich das System zum Zeitpunkt $t$ im ungestörten Zustand $\ket{m}$ befindet.

Falls $V(t)=0$ verschwindet, ist die Übergangswahrscheinlichkeit $P_{nm}(t)=0$ ebenfalls nichtexistent. Ansonsten muss die folgende Schrödingergleichung gelöst werden, um den Zustand zu bestimmen. Hierbei ist $U_0(t)$ der Zeitentwicklungsoperator des ungestörten Systems.

$$
\begin{aligned}
    i\hbar\ket{\dot{\Psi}(t)} &= (H_0+V(t))\ket{\Psi(t)} \\
    \Rightarrow \ket{\Psi(t)} &= U_0(t) \ket{\Psi(0)}
\end{aligned}
$$

Den ersten Korrekturterm für die Übergangswahrscheinlichkeit $P_{nm}^{(1)}$ kann man über die Definition $P_{nm}^{(1)}(t)=|\braket{m|\Psi(t)}|^2$ berechnen, wobei $\ket{m}$ ein ungestörter Zustand ist und $\ket{\Psi(t)}_I^{(1)}$ der Störungszustand im Wechselwirkungsbild in erster Ordnung. $U_0(t)$ ist der Zeitentwicklungsoperator des ungestörten Systems.  Da $\ket{\Psi(t)}=U_0(t)\ket{\Psi(t)}_I=\ket{\Psi(t)}_I^{(1)}$ folgt die Relation für die Übergangswahrscheinlichkeit in erster Ordnung.

$$
\begin{aligned}
    P_{nm}^{(1)} &= |\braket{m|\Psi(t)}_I^{(1)}|^2 \\
    P_{nm}^{(1)} &= \frac{1}{\hbar^2}
        \left|
            \int_0^t \mathrm dt^\prime \exp\left[\frac{i}{\hbar}(E_m-E_n)t^\prime\right]
                \braket{m|V(t^\prime)|n}
        \right|^2
\end{aligned}
$$

### Wechselwirkungsbild
Mittels des Wechselwirkungsbildes wird die ungestörte $H_0$-Dynamik von der störenden $V(t)$-Dynamik getrennt.

Hierzu sei $\ket{\Psi(t)}$ ein Zustand im ungestörten Schrödingerbild, das die Schrödingergleichung $i\hbar\ket{\dot{\Psi}(t)} = (H_0+V(t))\ket{\Psi(t)}$ löst. Dann sei $\ket{\Psi(t)}_I$ ein Zustand im Wechselwirkungsbild, $U_0^\dagger(t)$ ist der adjungierte Zeitentwicklungsoperator des ungestörten Systems.

$$
    \ket{\Psi(t)}_I
        = U_0^\dagger(t) \ket{\Psi(t)}
        = \exp\left[+i\frac{H_0}{\hbar}t\right] \ket{\Psi(t)}
$$

Ohne Störung $(V(t)=0)$ gilt mit dem Zeitentwicklungsoperatur $U_0(t)$ die Relation $\ket{\Psi(t)}_I=U_0(t)\ket{\Psi(0)}$.

Die Störungstheorie kann durch iteratives Lösen der Schrödingergleichung im Wechselwirkungsbild gelöst werden.

### Operatoren im Wechselwirkungsbild
Ein Operator $V(t)$ kann in das Wechselwirkungsbild transformiert werden. Diese Transformation erzeugt $V_I(t)$ und ist folgendermaßen definiert.

$$
\begin{aligned}
    V_I(t) &= U_0^\dagger(t) V_0(t) U_0(t) \\
    V_I(t) &= \exp\left[+i\frac{H_0}{\hbar}t\right] V_0(t) \exp\left[-i\frac{H_0}{\hbar}t\right]
\end{aligned}
$$

### Schrödingergleichung im Wechselwirkungsbild
Damit muss $\ket{\Psi(t)}_I$ der Schrödingergleichung im Wechselwirkungsbild genügen. Hieran sieht man, dass die Dynamik von $\ket{\Psi(t)}_I$ durch das Bild der Störung $V_I(t)$ beschrieben.

$$
    i\hbar \ket{\dot{\Psi}(t)}_I = V_I(t)\ket{\Psi(t)}_I
$$

### Störungstheorie in $n$-ter Ordnung
Der Störungszustand in $n$-ter Ordnung wird durch die Wirkung der Störung auf den Störungszustand $n-1$-ter Ordnung beschrieben. In $0$-ter Ordnung gilt $i\hbar \ket{\dot{\Psi}(t)}_I^{(0)} = 0$, in $1$-ter Ordnung gilt $i\hbar \ket{\dot{\Psi}(t)}_I^{(1)} = V_I(t) \ket{\Psi(t)}^{(0)}$ et cetera.

$$
\begin{aligned}
    \ket{\Psi(t)}_I^{(0)} &= \ket{\Psi(0)} \\
    \Rightarrow \ket{\Psi(t)}_I^{(1)} &= \ket{\Psi(t)}^{(0)}
        - \frac{i}{\hbar} \int_{t_0}^t \mathrm dt^\prime V_I(t^\prime) \ket{\Psi(0)} \\
    \Rightarrow \ket{\Psi(t)}_I^{(2)} &= \ket{\Psi(t)}^{(0)}
        - \frac{i}{\hbar} \int_{t_0}^t \mathrm dt^\prime V_I(t^\prime) \ket{\Psi(0)}
        + \left(-\frac{i}{\hbar}\right)^2
            \int_{t_0}^t \mathrm dt^\prime \int_{t_0}^{t^\prime} \mathrm dt^{\prime\prime}
                V_I(t^\prime) V_I(t^{\prime\prime}) \ket{\Psi(0)} \\
\end{aligned}
$$

### Fermis goldene Regel
Sei $V(t)$ eine Störung, die mit der Frequenz $\omega$ oszilliert.

$$
    V(t) = u\exp[i\omega t] + u^\dagger \exp[i\omega t]
$$
Falls $u=u^\dagger=\frac{V_0}{2}$, dann ist $V(t)=V_0\cos(\omega t)$. Damit ist die Eigenenergie $E_x(t)=E_0 \cos(\omega t)$, wodurch der Operator $V$ als $V(t)=-qE_0\hat{x}\cos(\omega t)$ dargestellt wird.

Mit der Störungstheorie erster Ordnung wird die Übergangswahrscheinlichkeit $P_{nm}(t)$ gesucht.

Genau dann, wenn die Frequenz $\omega$ der Störung der Frequenz der Energiedifferenz $\frac{E_m-E_n}{\hbar}$ entspricht, gibt es eine Resonanz mit der Übergangsrate $\Gamma_{nm} = \frac{2\pi}{\hbar} |u_{nm}|^2 \delta(E_m-E_n-\omega\hbar)$.

$$
    \Gamma_{nm} = \frac{2\pi}{\hbar} \left[
             |u_{nm}|^2 \delta(E_m-E_n-\omega\hbar)
             +  |u_{mn}|^2 \delta(E_m-E_n+\omega\hbar)
        \right]
$$

Dies wird auch als _Fermis goldene Regel_ bezeichnet, auch wenn Pauli diese Regel früher erkannte.

#### Physikalische Interpretation
Seien Energieniveaus bei $E_m>E_n$ mit der Differenz $E_m-E_n =\hbar\omega$. Bei der spontanen Absorbtion eines Photons der Energie $\hbar\omega$ wechselt ein Elektron vom Zustand $\ket{n}$ in den Zustand $\ket{m}$. Bei der induzierten Emission eines Photons wechselt ein Elektron vom Zustand $\ket{n}$ in den energieärmeren Zustand $\ket{n}$.

Erst durch die Existenz eines äußeren Feldes wird der Wechsel von Elektronen zwischen Energieniveaus angeregt. In Isolation sind alle erreichbaren Niveaus Eigenzustände.

##### Laser
Bei einem Laser werden Zustände erzeugt, bei denen möglichst viele Elektronen in Zuständen $\ket{n}$ sitzen. Dann kann eine passende Elektromagnetische Welle die Elektronen auf Zustände $\ket{m}$ anregen. Dann kann man die Emission von Photonen induzieren.

Man kann auch beweisen, dass auch die Phase der emittierten Photonen gleich ist. Dies kann man mit kohärenten Zuständen erklären.


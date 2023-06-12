# Störungstheorie
## Zeitunabhängige Störungstheorie
Im Allgemeinen wird ein reales System durch einen Hamiltonoperator $H$ beschrieben. Dieses soll kein ideales System sein, sondern geringfügig von einem idealen System abweichen. Dies kann ein näherungsweise harmonischer Oszillator sein, oft wird auch das Wasserstoffatom als ideales System verwendet.

Der Hamiltonoperator des idealen Systems sei $H_0$, $H_1$ sei eine Korrektur. Sei $|\lambda|\ll 1$ ein dimensionsloser Faktor, der die Störung klein hält. Wird diese Störung zu groß, kann man die Störungstheorie nicht mehr anwenden. <!-- Lagrange-Multiplikator? -->

Dann gilt $H = H_0 + \lambda H_1$. Damit kann die Energie $E_n(\lambda) = E_n + \Delta E(\lambda)$ als Abweichung der idealen Eigenenergie $E_n$ bestimmt werden, ebenso ist $\ket{n(\lambda)}=\ket{n}+\ket{\Delta n(\lambda)}$ abweichend vom idealen Eigenzustand $\ket{n}$.

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


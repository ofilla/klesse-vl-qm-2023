# 7. Kohärente Zustände
Kohärente Zustände sind quasi-klassische Zustände. Sie sind in der Quantenoptik besonders interessant, da optische Wellen in einem begrenzten Raum durch stehende Wellen eines harmonischen Oszillators beschrieben werden.

Für große $n\gg 1$ sind die Eigenenergiezustände $\ket{n}$ delokalisiert, aber stationäre Lösungen $\varphi_n(x)$. Klassische Zustände sind stattdessen lokal und nicht-stationär, beispielsweise als $\rho_t(x)=\delta(x-x_0)$.

## Verschiebungsoperator
Es werden Zustände $\ket{\Psi(x)}$ gesucht, die möglichst lokale Zustände beschrieben. Dies kann dadurch ermöglicht werden, dass der Erwartungswert der Varianz $\braket{\Delta x}$ klein im Vergleich zum zweiten statistischen Moment $\braket{x^2}$ sein soll, also $\braket{(\Delta x)^2}_t\ll \braket{x^2}_t$.

Dies kann auf zwei Arten erfolgen: Man kann das Teilchen auslenken, was durch eine Translation $\ket{\Psi_0}=T(x_0)\ket{0}$ dargestellt wird, oder es anstoßen, was durch eine Impulstranslation $\ket{\Psi_0}=\tilde{T}(p_0)\ket{0}$ beschrieben wird. Man kann auch beide Methoden kombinieren, dies wird durch den unitären Verschiebungsoperator $D(\alpha) := \tilde{T}(\alpha)T(\alpha)$ dargestellt, wobei $\alpha\in\mathbb C$ komplexwertig ist.

$$
\begin{aligned}
    D(\alpha) &\equiv \tilde{T}(\alpha)T(\alpha)
        = \exp\left[\alpha a^\dagger - \alpha^* a\right] \\
    D(\alpha) &=
        \mathrm e^{i\varphi}
        \tilde{T}\left(\frac{\sqrt{2}\hbar}{l} \Im(\alpha) \right)
    T\left(\sqrt{2}l\Re(\alpha)\right)
\end{aligned}
$$

Sei $\alpha=u + iv$ mit $u,v\in\mathbb R$.  Falls $\alpha$ reell ist ($\Im(\alpha)=v= 0$), beschreibt $D(\alpha)=T(\sqrt{2}l u)$ eine reine Translation. Falls $\alpha$ imaginär ist ($\Re(\alpha)=u=0$), beschreibt $D(\alpha)=\tilde{T}(\frac{\sqrt{2}\hbar}{l} \alpha)$ eine reine Impulstranslation.

Im allgemeinen Fall kann man $D(\alpha)$ folgendermaßen darstellen. Hierzu sind $A$ und $B$ die Operatoren, die in den Exponenten der (Impuls-)Translationsoperatoren auftauchen.

$$
\begin{aligned}
    A &:= i\sqrt{2}v\frac{\hat{x}}{l} \\
    B &:= -i\sqrt{2}lu\frac{\hat{p}}{\hbar} \\
    D(\alpha) &= \mathrm{e}^A \mathrm{e}^B \\
\end{aligned}
$$

## Baker-Campbell-Hausdorff-Identität
Für Operatoren $A, B$, die mit $[A, B]$ vertauschen, gilt folgende Identität.

$$
    \mathrm{e}^A \mathrm{e}^B = \mathrm{e}^{[A,B]} \mathrm{e}^{A+B}
$$

## Kohärente Zustände
Wird die Baker-Campbell-Hausdorff-Identität auf den Verschiebungsoperator $D(\alpha)$ angewendet, ergibt sich folgende Relation.

$$
\begin{aligned}
    D(\alpha) &= \exp\left[\alpha a^\dagger - \alpha^* a\right] \\
    D(\alpha) &=
        \mathrm e^{iuv}
        \tilde{T}\left(\frac{\sqrt{2}\hbar}{l} \Im(\alpha) \right)
    T\left(\sqrt{2}l\Re(\alpha)\right)
\end{aligned}
$$

Damit können kohärente Zustände $\ket{c(\alpha)}$ definiert werden. Diese ergeben sich aus einer Impuls- und Ortstranslation des Grundzustandes $\ket{0}$, die durch den Verschiebungsoperator mit komplexvertigem $\alpha\in\mathbb C$ dargestellt wird. Der zeitentwickelte Zustand $U(t)\ket{c(\alpha)}$ bewegt sich ähnlich zum klassischen Fall auf einer Ellipse im Phasenraum.

$$
\begin{aligned}
    \ket{c(\alpha)} &= D(\alpha)\ket{0} \\
    U(t)\ket{c(\alpha)}
        &= \exp\left[-i\omega \frac{t}{2}\right]
            {\Large \ket{
                {\normalsize c{\large (}\exp[-i\omega t]\alpha{\large )}}}
            }
\end{aligned}
$$

Zum konkreten Rechnen kann man die Definitionen von $\tilde{T}$ und $T$ einsetzen und erhält eine strukturell einfache Gleichung für $D(\alpha)$.


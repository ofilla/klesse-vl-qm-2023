# Quantenmechanik eines Punktteilchens
## Ortsoperator
Im Folgenden betrachten wir ein Teilchen im Eindimensionalen Raum.

Die Observable $x\in\mathbb R$ beschreibt den Ort, der dazugehörige hermitesche Operator $\hat{X}$ hat daher reelle Eigenwerte. Daher wird das Eigensystem durch die Menge der Zustände $\{\ket{\varphi_x}\}_{x\in\mathbb R}$ beschrieben, es gilt $\hat{x}\ket{\varphi_x}=x\ket{\varphi_x}$.

## Impulsoperator
Der Impulsoperator $\hat{p}$ ist der Erzeuger von Translationen und kann durch den Translationsoperator $\hat{T}$ dargestellt werden. Dies ist analog zu der Darstellung des Hamiltonoperators mithilfe des Zeitentwicklungsoperators.
$$
    \hat{p} = \left.i\hbar\frac{\mathrm d}{\mathrm ds}\hat{T}(s)\right|_{s=0}
$$

Es folgt daraus:
$$
\begin{aligned}
    \hat{p}\ket{\varphi_p} &= p\ket{\varphi_p} \\
    \hat{p}\Psi(x) &= -i\hbar\frac{\partial}{\partial x}\Psi(x) \overset{!}{=} p\Psi(x)
\end{aligned}
$$

* $p=p^\dagger$
* $[\hat{x}, \hat{p}]=i\hbar\mathds 1$
    * hieraus folgt die Unschärferelation $\Delta x\Delta p\ge \frac{\hbar}{2}$. <!-- Erwähne dies bei Kommutator -->
    * dies gilt für alle Observablen mit nicht-verschwindendem Kommutator.

## Ortsdarstellung und Impulsdarstellung
Wenn ein Ort gemessen wird, muss die Ortsdarstellung verwendet werden; wird ein Impuls gemessen, muss die Impulsdarstellung verwendet werden. Durch eine Fouriertransformation kann zwischen Ortsdarstellung und Impulsdarstellung gewechselt werden.

Im Impulsraum hat der Impulsoperator die Eigenzustände $\ket{\tilde{\varphi}_p}$ mit $\tilde{\varphi}_p(x) = \exp[i\frac{p}{\hbar}x]$. $\tilde{\varphi}_p$ ist eine ebene Welle mit der Wellenzahl $k=\frac{P}{t}$.

Daraus folgt für die Orthonormalität $\braket{\tilde{\varphi} _ p | \tilde{\varphi} _ {p^\prime}} = 2\pi\hbar\delta(p-p^\prime)$ bzw. mit den Wellenzahlen $\braket{\tilde{\varphi} _ {\hbar k} | \tilde{\varphi} _ {\hbar k^\prime}} = 2\pi\delta(k-k^\prime)$.

Die Impulswellenfunktion $\tilde{\Psi}(k)$ wird als Fouriertransformierte der Ortswellenfunktion $\Psi(x)$ bestimmt.
$$
\begin{aligned}
    \ket{\Psi} &= \int \frac{\mathrm dk}{2\pi} \tilde{\Psi}(k) \ket{\tilde{\varphi}_{\hbar k}} \\
    \ket{\Psi} &= \int \mathrm dx \Psi(x) \ket{\varphi_x} \\
    \Rightarrow \tilde{\Psi}(k) &= \mathcal{F}(\Psi(x)) \\
    \mathcal{F}(\Psi(x)) &= \int \frac{\mathrm dx}{2\pi} \Psi(x)\exp[-ikx]
\end{aligned}
$$

## Translationsoperator
Der Translationsoperator $\hat{T}(s)$ verschiebt den Ort eines Objektes um $s$. Es gelten $\hat{T}(0)=\mathds 1$ und $\hat{T}(s)\ket{\varphi_x} = \ket{\varphi_{x+s}}$. Er ist analog zum Zeitentwicklungsoperator.

$$
    \hat{T}(s) = \exp\left[-\frac{i}{\hbar}\hat{p}s\right]
$$

Daraus folgt $\hat{T}^\dagger(s) = \hat{T}(-s)$.

## Kontinuitätsübergang
Üblicherweise wird der Ort als diskret betrachten, daher wird meist Lineare Algebra verwendet, um Orte zu beschreiben. Die Menge  $\{\ket{\varphi_x}\}_{x\in\mathbb R}$ hat jedoch unendlich viele Basisvektoren, daher ist die Dimension des Hilbertraumes $\dim{\mathcal H} = \infty$. Deswegen muss statt der Linearen Algebra die Funktionsanalysis verwendet werden, um Quantenzustände zu beschreiben.

$$
\begin{aligned}
    && \text{diskret} && \text{kontinuierlich} \\
    \text{Kronecker-Delta} &&
        \delta_{ij} && \text{Deltafunktion } \delta(x) \\
    &&
        \delta_{ij} = 0 \Leftrightarrow i=j &&
        \delta(x-y) = 0 \Leftrightarrow x=y \\
    \text{Normierung} &&
        \sum_i \delta_{ij} = 1 &&
        \int_{\mathbb R} \delta(x-x^\prime) \mathrm dx = 1 \\
    \text{Orthonormale Eigenbasis} &&
        \{\ket{\varphi_i}\} &&
        \{\ket{\varphi_x}\} \text{ Eigensystem} \\
    \text{Orthonormalität} &&
        \braket{\varphi_i|\varphi_j} = \delta_{ij} &&
        \braket{\varphi_x|\varphi_{x^\prime}} = \delta(x-x^\prime) \\
    \text{Vollständigkeit} &&
        \mathds 1_{\mathcal H} = \sum_i\ket{\varphi_i}\bra{\varphi_i} &&
        \mathds 1_{\mathcal H} = \int_{\mathbb R} \ket{\varphi_x}\bra{\varphi_x} \mathbb dx \\
    \text{Spektraldarstellung} &&
        A = \sum_i a_i\ket{\varphi_i}\bra{\varphi_i} &&
        A = \int_{\mathbb R} x \ket{\varphi_x}\bra{\varphi_x} \mathbb dx \\
    \text{Komponentendarstellung} &&
        \sum_i \Psi_i \ket{\varphi_i} &&
        \int_{\mathbb R} \Psi(x) \ket{\varphi_x} \mathbb dx \\
    \text{Skalarprodukt} &&
        \braket{\Psi|\chi} = \sum_i \Psi_i^*\chi_i &&
        \braket{\Psi|\chi} = \int_{\mathbb R} \Psi^*(x)\chi(x) \mathrm dx
\end{aligned}
$$

### Komponentendarstellung

$$
    \mathcal H \ni \ket{\Psi} = \mathds 1 \ket{\Psi} = \sum_i \ket{\varphi_i}\braket{\varphi_i|\Psi} \\
    \Psi_i = \braket{\varphi_i|\Psi}
        \Rightarrow \ket{\Psi} = \sum_i \Psi_i \ket{\varphi_i} \\
    \Psi(x) = \braket{\varphi_x|\Psi}
        \Rightarrow \ket{\Psi} = \int_{\mathbb R} \Psi(x) \ket{\varphi_x} \mathbb dx
$$

$\Psi(x)$ ist die Wellenfunktion des Zustands $\ket{\Psi}$, $\Psi_i$ eine Komponente von $\ket{\Psi}$.

#### Skalarprodukt in Komponentendarstellung
Dadurch sieht das Skalarprodukt in Komponentendarstellung folgendermaßen aus:

$$
    \braket{\Psi|\chi} =
        \bra{\Psi}\mathds 1 \ket{\chi}
        = \bra{\Psi}\left(\sum_i \ket{\varphi_i}\bra{\varphi_i}\right)\ket{\chi}
        = \sum_i \Psi_i^*\chi_i\\
    \braket{\Psi|\chi} = \int_{\mathbb R} \Psi^*(x)\chi(x) \mathrm dx
$$

## Translationssymmetrie und Impulserhaltung
Ein System ist genau denn symmetrisch bezüglich Translation, wenn der Impuls $p$ eine Erhaltungsgröße ist.
Dies ist genau dann der Fall, wenn der Kommutator $[T(s), U(t)]$ verschwindet. Dies wiederum ist äquivalent dazu, dass der Kommutator $[H,p]$ verschwindet.

## Hamiltonoperator eines Punktteilchens
### Hamiltonoperator eines freien Punktteilchens
Aus der Energie-Impuls-Reaktion folgt der Hamiltonoperator eines freien Punktteilchens:
$$
    H = \frac{p^2}{2m}
$$

### Hamiltonoperator eines Punktteilchens
Sei das Teilchen in einem Potential $U(x)$.
$$
    H = \frac{p^2}{2m} + U(x)
$$

## Schrödingergleichung eines Punktteilchens
### Schrödingergleichung eines freien Punktteilchens
Ein freies Teilchen ist symmetrisch bezüglich Translation, daher gilt $[H, p]=0$. Der Hamiltonoperator eines freien Punktteilchens wird in die Schrödingergleichung eingesetzt.

$$
    i\hbar \frac{\partial}{\partial t} \Psi(x, t)
        = -\frac{\hbar^2}{2m} \frac{\partial^2}{\partial x^2} \Psi(x, t)
$$

Dies ist eine partielle Differentialgleichung 2. Ordnung, die eine nicht-triviale Dynamik erzeugt.

### allgemeine Schrödingergleichung eines Punktteilchens
Der Hamiltonoperator eines Punktteilchens $H = \frac{p^2}{2m}$ wird in die Schrödingergleichung eingesetzt.

$$
    i\hbar \frac{\partial}{\partial t} \Psi(x, t) =
        \left(
            -\frac{\hbar^2}{2m} \frac{\partial^2}{\partial x^2} + U(x)
        \right)\Psi(x, t)
$$

### Stationäre Schrödingergleichung
Oft ist es hilfreich, ein dynamisches Problem zunächst als stationär zu betrachten. Dies ist meist einfacher und daraufhin kann man die Zeitentwicklung anwenden.

Die stationäre Schrödingergleichung gilt, wenn die Wellenfunktion $\Psi(x)$ nur vom Ort, aber nicht von der Zeit abhängt. Hierbei sind die normierten Eigenenergiezustände $\ket{\Psi_n}$ und die Eigenenergien $E_n$ wichtig. Es gilt $H\ket{\Psi_n}=E_n\ket{\Psi_n}$, daraus folgt die stationäre Schrödingergleichung.

$$
    E_n\Psi(x) =
        \left(
            -\frac{\hbar^2}{2m} \frac{\partial^2}{\partial x^2} + U(x)
        \right)\Psi_n(x)
$$

Daraus folgt die Dynamik des Teilchens. Hierbei sind $c_n$ Koeffizienten, die bestimmt werden müssen.

$$
\begin{aligned}
    \ket{\Psi(0)} &= \sum_n c_n \ket{\Psi_n} \\
    \Rightarrow \ket{\Psi(t)} &= \sum_n c_n \exp[-\frac{i}{\hbar}E_n t] \ket{\Psi_n}
\end{aligned}
$$

## Quanten-Zeno-Effekt
Der Übergang eines quantenmechanischen Systems von einem Zustand in einen anderen kann durch wiederholte Messungen aufgehalten werden.[^2] Durch die Messung eines Zustand $\phi$ wird das System diesem Zustand $\phi$ präperiert. Wird dies häufig gemacht, so kann das System in $\phi$ fixiert werden.

Die Wahrscheinlichkeit, dass $N$ Messungen $M_\phi$ im zeitlichen Abstand $\tau$ das selbe Ergebnis liefern, ist nach der Bornschen Regel $P_N = |\braket{\phi|\Psi}|^2$, wenn vorher der Zustand $\Psi$ vorherrschte. Wird häufig genug gemessen, geht die Wahrscheinlichkeit für den Wechsel in einen anderen Zustand gegen Null.

[^2]: Benannt nach _Zenon von Elea_, von dem das [Pfeil-Paradoxon](https://de.wikipedia.org/wiki/Pfeil-Paradoxon) stammt.


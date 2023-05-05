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

* $P=P^\dagger$
* $[\hat{X}, \hat{P}]=i\hbar\mathds 1$
    * hieraus folgt die Unschärferelation $\Delta x\Delta p\ge \frac{\hbar}{2}$.
    * dies gilt für alle Observablen mit nicht-verschwindendem Kommutator.

### Spektraldarstellung
Eigenzustände $\ket{\tilde{\varphi}_p}$ mit $\tilde{\varphi}_p(x) = \exp[i\frac{P}{\hbar}x]$. $\tilde{\varphi}_p$ ist eine ebene Welle mit der Wellenzahl $k=\frac{P}{t}$.

Daraus folgt für die Orthonormalität $\braket{\tilde{\varphi} _p | \tilde{\varphi}_{p^\prime}} = 2\pi\hbar\delta(p-p^\prime)$.

### Translationsoperator
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

$\Psi(x)$ ist die Wellenfunktion des Zustands $\Psi(x)$.

#### Skalarprodukt in Komponentendarstellung
Dadurch sieht das Skalarprodukt in Komponentendarstellung folgendermaßen aus:

$$
    \braket{\Psi|\chi} =
        \bra{\Psi}\mathds 1 \ket{\chi}
        = \bra{\Psi}\left(\sum_i \ket{\varphi_i}\bra{\varphi_i}\right)\ket{\chi}
        = \sum_i \Psi_i^*\chi_i\\
    \braket{\Psi|\chi} = \int_{\mathbb R} \Psi^*(x)\chi(x) \mathrm dx
$$


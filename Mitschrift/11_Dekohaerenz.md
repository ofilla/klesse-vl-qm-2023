# 11. Dekohärenz
## lokal-klassische Theorien
Die Theorie soll lokal sein, d.h. es gibt keine (instantane) langreichweitige Wechselwirkung. Zudem soll sie klassisch sein in dem Sinne, dass es keinen Indeterminismus mehr gibt, wenn man das System vollständig beschrieben hat.

Die Bellschen Ungleichungen nutzen eine solche hypothetische Theorie, ohne Details über diese Theorie zu kennen. Experimentell wird gemessen, dass diese Ungleichungen verletzt werden. Damit sind lokal-klassische Theorien nicht haltbar.

## Dekohärenz
Mithilfe des Begriffes der Dekohärenz soll erklärt werden, warum in makroskopischen System keine quantenmechanischen Effekte beobachtbar sind. Dazu ist es notwendig, ein zusammengesetztes System zu betrachten.

## Zusammengesetzte Systeme
Seien $A$ ein System mit dem Zustandsraum $\mathcal H_A\subseteq \mathbb C^n$ und der Orthonormalbasis $\{\ket{\varphi_i}\}$ und $B$ ein System mit dem Zustandsraum $\mathcal H_B\subseteq \mathbb C^m$ und der Orthonormalbasis $\{\ket{\chi_i}\}$. Sei $AB$ das Verbundsystem mit dem Zustandsraum $\mathcal H_{AB}$.

### Tensorprodukte
Dann kann die Orthonormalbasis von $AB$ als $\{\ket{\varphi_i, \chi_j}\}$ beschrieben werden. $H_{AB}=\mathcal H_A \otimes \mathcal H_B$ ist das Tensorprodukt der Zustandsräume von $A$ und $B$. Damit kann auch die Basis als Tensorprodukt $\ket{\varphi_i, \chi_j}=\ket{\varphi_i}\ket{\chi_j}=\ket{\varphi_i}\otimes\ket{\chi_j}$ beschrieben werden. Die Dimension des Zustandsraumes ist $\dim\mathcal H_{AB} = \dim\mathcal H_A \otimes \dim\mathcal H_B$ ist das Produkt der Dimensionen der Zustandsräume (also $n\cdot m$).

Werde ein Zustand im System $A$ durch die Basis dargestellt $\ket{\Psi_A}=\sum_{i=1}^n a_i\ket{\varphi_A}$, ein Zustand $\ket{\Psi_B}$ analog im System $B$. Diese Darstellung ist zwar eigentlich basisabhängig, es kann aber mathematisch bewiesen werden, dass die Relation auch basisunabhängig gilt.

$$
\begin{aligned}
    \ket{\Psi_A}\otimes\ket{\Psi_B}
        &= \sum_{i=1}^n\sum_{j=1}^m a_i b_j \ket{\varphi_i}\otimes\ket{\chi_j}\\
    \Rightarrow \ket{\Psi_{AB}} &= \sum_{ij} c_{ij} \ket{\varphi_i}\otimes\ket{\chi_j}\\
    \Rightarrow \braket{\Psi_{AB}|\Phi_{AB}}
        &= \sum_{ij} c_{ij}d_{ij} \ket{\varphi_i}\otimes\ket{\chi_j}\\
\end{aligned}
$$

#### Tensoren
Es gibt im Allgemeinen Tensoren $n$-ter Stufe. Tensoren $0$-ter Stufe sind skalare Größen wie Masse oder Ladung. Tensoren $1$-ter Stufe sind vektorielle Größen wie ein Ort $\vec{r}$ oder Impuls $\vec{p}$, die sich unter Rotation wie ein Ortsvektor verhalten.[^111]

[^111]: Literaturempfehlung: Vektoranalysis von Klaus Jänich, Wikipedia

## Verschränkung und Seperabilität
Ein Zustand $\ket{\Psi_{AB}}\in\mathcal H_{AB}$ ist genau dann verschränkt, wenn er sich nicht als Tensorprodukt $\ket{\Psi_{AB}}\neq\ket{\Psi_A}\otimes \ket{\Psi_B}$ darstellen lässt. Zustände, die sich als ein solches Tensorprodukt darstellen lassen, nennt man seperabel. Dies gilt auch dann, wenn die Zustände $A$ und $B$ weit voneinander entfernt sind.

### Das Einstein-Podolsky-Rosen-Paradoxon
Sei $\ket{\Psi_{AB}}$ ein verschränkter Zustand, bei denen die Systeme $A$ und $B$ weit voneinander entfernt liegen. Dann teilen sich $A$ und $B$ Elemente des Zustands $\ket{\Psi_{AB}}$. Beispielsweise können die Spins eines Atoms betrachtet werden. Dann sollen zwei Experimente $I$ und $II$ betrachtet werden.

$$
\begin{aligned}
    \ket{\Psi_{AB}} = \frac{1}{\sqrt{2}} \left(
            \ket{\uparrow_A}\ket{\uparrow_B}
            + \ket{\downarrow_A}\ket{\downarrow_B}
        \right)
\end{aligned}
$$

In Experiment $I$ wird bei $t=0$ der Spin $S_3$ in System $A$ gemessen. Die Quantenmechanik fordert die Wahrscheinlichkeit für die beide möglichen Messergebnisse von $\frac{1}{2}$.[^112] Der Zustand $\ket{\Psi_{AB}}$ ist eine vollständige Beschreibung des Zustands, daher ist der Indeterminismus fundamental, also nicht durch versteckte Abhängigkeiten beeinflusst.

In Experiment $II$ wird der Spin $S_3$ wieder im System $A$ bei $t=0$ gemessen. Kurz vorher, bei $t=-\Delta t$, wird der Spin $S_3$ in System $B$ ebenfalls gemessen. $\Delta t$ sei dabei kleiner als die Zeit, die Licht für die Strecke von $A$ nach $B$ benötigt. Sei die Messung ideal, dann kollabiert die Wellenfunktion bei der Messung in $B$. Dadurch kann aber in System $A$ nur noch ein Ergebnis mit der Wahrscheinlichkeit von $100\%$ messen. Durch die kurze Zeit darf es aber keine Wechselwirkung zwischen $A$ und $B$ geben.

[^112]: siehe Messpostulat


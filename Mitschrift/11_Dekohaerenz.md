# 11. Dekohärenz
## lokal-klassische Theorien
Die Theorie soll lokal sein, d.h. es gibt keine (instantane) langreichweitige Wechselwirkung. Zudem soll sie klassisch sein in dem Sinne, dass es keinen Indeterminismus mehr gibt, wenn man das System vollständig beschrieben hat.

Die Bellschen Ungleichungen nutzen eine solche hypothetische Theorie, ohne Details über diese Theorie zu kennen. Experimentell wird gemessen, dass diese Ungleichungen verletzt werden. Damit sind lokal-klassische Theorien nicht haltbar.

## Dekohärenz
Mithilfe des Begriffes der Dekohärenz soll erklärt werden, warum in makroskopischen System keine quantenmechanischen Effekte beobachtbar sind. Dazu ist es notwendig, ein zusammengesetztes System zu betrachten.

## Zusammengesetzte Systeme
Seien $A$ ein System mit dem Zustandsraum $\mathcal H_A\subseteq \mathbb C^n$ und der Orthonormalbasis $\{\ket{\varphi_i}\}$ und $B$ ein System mit dem Zustandsraum $\mathcal H_B\subseteq \mathbb C^m$ und der Orthonormalbasis $\{\ket{\chi_i}\}$. Sei $AB$ das Verbundsystem mit dem Zustandsraum $\mathcal H_{AB}$.

### Tensorprodukte
Dann kann die Orthonormalbasis von $AB$ als $\{\ket{\varphi_i, \chi_j}\}$ beschrieben werden. $H_{AB}=\mathcal H_A \otimes \mathcal H_B$ ist das Tensorprodukt der Zustandsräume von $A$ und $B$. Damit kann auch die Basis als Tensorprodukt $\ket{\varphi_i, \chi_j}=\ket{\varphi_i}\ket{\chi_j}=\ket{\varphi_i}\otimes\ket{\chi_j}$ beschrieben werden. Die Dimension des Zustandsraumes $\dim\mathcal H_{AB} = \dim\mathcal H_A \otimes \dim\mathcal H_B$ ist das Produkt der Dimensionen der Zustandsräume. Wenn die Hilberträume $A$ und $B$ die Dimensionen $n$ und $m$ haben, hat deren Tensorprodukt die Dimension $n\cdot m$.

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

[^111]: Literaturempfehlung: Vektoranalysis von Klaus Jänich, sowie Wikipedia

## Verschränkung und Seperabilität
Ein Zustand $\ket{\Psi_{AB}}\in\mathcal H_{AB}$ ist genau dann verschränkt, wenn er sich nicht als Tensorprodukt darstellen lässt, also $\nexists \Psi_A, \Psi_B: \ket{\Psi_{AB}}=\ket{\Psi_A}\otimes \ket{\Psi_B}$. Zustände, die sich als ein solches Tensorprodukt darstellen lassen, nennt man seperabel. Dies gilt auch dann, wenn die Zustände $A$ und $B$ weit voneinander entfernt sind.

Falls die Hilberträume $\mathcal H_A$ und $\mathcal H_B$ der Systeme $A$ und $B$ sehr groß sind $(\dim \mathcal H_{A} \gg 1\land \dim \mathcal H_{B} \gg 1)$, dann ist ein zufälliger Zustand $\ket{\Psi_{AB}}\in \mathcal H_A\otimes \mathcal H_B$ sehr wahrscheinlich verschränkt. Fast alle Zustände $\ket{\Psi_{AB}}$ sind sogar sehr stark verschränkt.

### Das Einstein-Podolsky-Rosen-Paradoxon
Sei $\ket{\Psi_{AB}}$ ein verschränkter Zustand, bei denen die Systeme $A$ und $B$ weit voneinander entfernt liegen. Dann teilen sich $A$ und $B$ Elemente des Zustands $\ket{\Psi_{AB}}$. Beispielsweise können die Spins eines Atoms betrachtet werden. Dann sollen zwei Experimente $I$ und $II$ betrachtet werden.

$$
\begin{aligned}
    \ket{\Psi_{AB}} = \frac{1}{\sqrt{2}} \left(
            \ket{\uparrow}_A\ket{\uparrow}_B
            + \ket{\downarrow}_A\ket{\downarrow}_B
        \right)
\end{aligned}
$$

In Experiment $I$ wird bei $t=0$ der Spin $S_3$ in System $A$ gemessen. Die Quantenmechanik fordert die Wahrscheinlichkeit für die beide möglichen Messergebnisse von $\frac{1}{2}$.[^112] Der Zustand $\ket{\Psi_{AB}}$ ist eine vollständige Beschreibung des Zustands, daher ist der Indeterminismus fundamental, also nicht durch versteckte Abhängigkeiten beeinflusst.

In Experiment $II$ wird der Spin $S_3$ wieder im System $A$ bei $t=0$ gemessen. Kurz vorher, bei $t=-\Delta t$, wird der Spin $S_3$ in System $B$ ebenfalls gemessen. $\Delta t$ sei dabei kleiner als die Zeit, die Licht für die Strecke zwischen $A$ und $B$ benötigt. Sei die Messung ideal, dann kollabiert die Wellenfunktion bei der Messung in $B$. Dadurch kann aber in System $A$ nur noch ein Ergebnis mit der Wahrscheinlichkeit von $100\%$ messen.

Aufgrund des kurzen Zeitunterschieds und des großen Abstands der Messungen, darf es zwischen den Messungen keine Wechselwirkung zwischen $A$ und $B$ geben.[^113] Man dachte ursprünglich, dass dieses Phänomen durch eine unzureichende Beschreibung quantenmechanischer Zustände verursacht werde. Demnach müsste es "verborgene Variablen" geben. Quantitativ wird dies durch die Bell'schen Ungleichungen gefordert, diese können experimentell überprüft werden.

Durch Experimente wurden die Bell'schen Ungleichungen als verletzt gemessen, es scheint daher keine verborgenen Variablen zu geben.

[^112]: siehe Messpostulat
[^113]: Aus der speziellen Relativitätstheorie folgt, dass Informationen nicht schneller als Lichtgeschwindigkeit übertragen werden können.

## Bell'sche Ungleichungen
### Die Bell'schen Ungleichungen
Die Bell'sche Ungleichungen beschreiben Bedingungen, die ein Modell erfüllen muss, das nach dem Einstein-Podolsky-Rosen-Paradoxon versteckte Variablen beschreibt. Diese Ungleichungen haben nichts mit der Quantenmechanik zu tun, da sie ein besseres Modell beschreiben sollen. Experimente zeigen, dass es kein solches Modell geben kann.

### Die CHSH-Ungleichung
Die CHSH[^114]-Ungleichung ist eine Variante, die leichter gemessen werden kann als die "originalen" Bell'schen Ungleichungen.

Es wird ein korrelliertes System $AB$ mit gekoppelten Spins erzeugt. Diese Teilchen werden an zwei verschiedene Orte geschickt. In Teilsystem $A$ wird zufällig eine Eigenschaft aus der Menge $\{Q,R\}$ gemessen, wobei $q, r=\pm 1$ die möglichen Messergebnisse beschreibt. In System $B$ wird ebenso zufällig eine Eigenschaft aus der Menge  $\{S,T\}$ gemessen, wobei $s,t=\pm 1$. Beispielsweise können $Q$ und $R$ die Spinkomponenten $S_3$ und $S_2$ beschreiben, während $S$ und $T$ auch Spinkomponenten beschreiben können, die nicht orthogonal zu $S_{2,3}$ sind.

Viele Messungen ergeben ein statistisches Ergebnis, ein Beispiel davon ist in der untenstehenden Tabelle. Aus den Messergebnissen lassen sich Korrelationen, beispielsweise $\overline{RS}$ zwischen $R$ und $S$, berechnen.  Die Annahme, dass die Messergebnisse gemäß einer Theorie mit lokalen verborgenen Variablen ausfallen, führt auf die folgende Bedingung für den Zusammenhang aller Korrelationen. Dies ist die CHSH-Ungleichung.

$$
    M \equiv {\Large |}\overline{QS} - \overline{QT} + \overline{RS} + \overline{RT}{\Large |} \le 2
$$

[^114]: John Clauser, Michael Horne, Abner Shimony, Richard Holt

#### Beweis der CHSH-Ungleichung nach Bell
Angenommen, es gebe eine Theorie mit lokalen verborgenen Variablen $\lambda=(\lambda_1,\lambda_2, \dots)\in \mathbb R^n$. Hierbei soll $Q$ eine Funktion mit Wahrscheinlichkeiten $p$ $Q: \lambda \mapsto \bar{q}(\lambda)=p^{(\lambda)} _ {q=+1} \cdot (+1) + p^{(\lambda)} _ {q=-1} \cdot (-1)$, die indeterministisch sein darf, aber lokal ist. Analog gebe es die Funktionen $R$, $S$ und $T$. Dies erlaubt Indeterminismus, weil Nicht-Lokalität physikalisch das größere Problem ist. Zudem sollen die Messwerte $p,q,r,s=\pm 1$ sein.

Desweiteren gebe es eine Wahrscheinlichkeitsdichte $\rho(\lambda)$. Dann gilt die Relation $\bar{Q} \overset{!}{=} \int \bar{q}(\lambda)\rho(\lambda) \mathrm d^n\lambda$. Weil die Messungen in den verschiedenen Messungen durch die geforderte Lokalität unabhängig sein müssen, müssen die Wahrscheinlichkeiten für die Messung von $q$ und $s$ unabhängig sein, also $p(q,s;\lambda)=p(q;\lambda)\cdot p(s;\lambda)$. Dann muss die Korrelation <!-- missing -->

### Korrelation
Die Korrelation $\overline{RS}$ zwischen den Eigenschaften $R$ und $S$ mit Messwerten $r_i$ bzw. $s_i$ ist die Summe über das Produkt der einzelnen Messwerte. Dies muss durch die Gesamtzahl der Messungen $N_{RS}$ normiert werden. Im kontinuierlichen Fall steckt die Normierung in der Wahrscheinlichkeitsdichte $\rho(\lambda)$.

$$
    \overline{RS} = \frac{1}{N_{RS}} \sum_i r_i s_i = \int \rho(\lambda) r(\lambda) s(\lambda) \,\mathrm d\lambda
$$

### Quantenmechanik
Die Quantenmechanik besagt, dass die CHSH-Ungleichung in bestimmten Situationen verletzt werden darf, beispielsweise im untenstehenden Zustand $\ket{\Psi_{AB}}$, wenn die Messeigenschaften $Q=\frac{2}{\hbar}S_3=\sigma_3$, $R=\frac{2}{\hbar}S_1=\sigma_1$, $S=-\frac{1}{\sqrt{2}}(\sigma_1+\sigma_3)$ und $T=\frac{1}{\sqrt{2}}(\sigma_1-\sigma_3)$. Dieser Zustand ist so gewählt, dass der Gesamtdrehimpuls $0$ ist.
<!-- missing parts in equation -->

$$
\begin{aligned}
    \ket{\Psi_{AB}} &= \frac{1}{\sqrt{2}} \left(
            \ket{\uparrow}_A\ket{\downarrow}_B
            + \ket{\downarrow}_A\ket{\uparrow}_B
        \right) \\
    \Rightarrow M &= \braket{QS}_{\Psi_{AB}} - \braket{QT}_{\Psi_{AB}} + \braket{RS}_{\Psi_{AB}} + \braket{RT}_{\Psi_{AB}} > 2 \\
\end{aligned}
$$

### Experimente
Es ist schwierig, solche Experimente durchzuführen, diese werden auch kritisch betrachtet. Das letzte große Experiment fand $2018$ mit Messungen im Abstand von ca. $1.5\mathrm{km}$ statt. Die Experimente zeigen eine zunehmende Evidenz für die Verletzung der CHSH-Ungleichung in Übereinstimmung mit der Quantenmechanik. Dies zeigt, dass die Theorie der versteckten Variablen vermutlich falsch ist. Für solche Experimente gab es $2022$ den Physik-Nobelpreis.


---
author:
  - Dr. Rochus Klesse
  - Oliver Filla
date: Sommersemester 2023
keywords:
  - Physik
  - Quantenmechanik
---
## Postulate
### 1. Postulat: Der Hilbertraum
Der Zustandsraum der Quantenmechanik ist der **Hilbertraum** $\mathcal{H}_S$ des Systems, ein unitärer Vektorraum. Dies bedeutet, es gibt ein hermitesches Skalarprodukt.

Ein quantenmechanischer Zustand ist ein Vektor $\varphi\in\mathcal {H}_S$. Dieser Vektor hat die Norm $1$: $||\varphi||=1$

#### Eigenschaften des hermiteschen Skalarprodukts
$$
    \braket{\Psi|\varphi}
        = \Psi^\dagger\varphi
        = (\Psi_1^*,\ldots,\Psi_n^*)
           \cdot \begin{pmatrix}\varphi_1\\\vdots\\\varphi_n\end{pmatrix}
$$
* Vertauschung der Parameter erzeugt das komplex Konjugierte des Skalarprodukts: $\braket{\varphi|\psi} = \braket{\psi|\varphi}^*$
* positiv semi-definit: $\forall \varphi \in V\backslash \{0\}: \braket{\varphi|\varphi} > 0$
    * $\forall \varphi \ne 0: \braket{\varphi|\varphi} > 0$
    * $\varphi = 0 \Leftrightarrow \braket{\varphi|\varphi} = 0$
* Linearität:
    * $\forall \lambda \in \mathbb C: \braket{\varphi|\lambda\psi} = \lambda\braket{\varphi|\psi} = \braket{\lambda^*\varphi|\psi}$
    * $\braket{\varphi|\psi_1 + \psi_2} = \braket{\varphi|\psi_1} + \braket{\varphi|\psi_2}$

#### Winkel von Zuständen
Das Skalarprodukt zweier Vektoren $\braket{\varphi, \psi}$ beschreibt den Winkel $\alpha = \measuredangle(\varphi, \psi)$. Es gilt $\braket{\varphi, \psi} = \cos(\alpha)$.
Daraus folgt, dass die Wahrscheinlichkeit $p$ dem quadrierten Kosinus des Winkels zwischen den Zuständen entspricht:
$$
    p = |\braket{\varphi, \psi}|^2 = [\cos(\alpha)]^2 \in [0,1] \\
    \Rightarrow p =
        \begin{cases}
            1 \Leftrightarrow \varphi \bot \psi \\
            1 \Leftrightarrow \varphi \parallel \psi
        \end{cases}
$$

Nur wenn $p\neq 0 \lor p\neq 1$ gelten, kann man das Ergebnis einer Messung $M_\varphi$ vorhersagen.
Das bedeutet, wenn $\varphi \bot \psi \lor \varphi \parallel \psi$ ist die Messung $M_\varphi$ deterministisch, ansonsten ist sie indeterministisch.

### Superpositionsprinzip
Superposition ist ein universell gültiges Prinzip, das besagt, dass sich ein Quantenteilchen zugleich in mehreren Zuständen befinden kann.

Ein berühmtes Beispiel ist das Gedankenexperiment von Schrödingers Katze. Heute verstehen wir, dass Superposition auch hier gilt, aber trotzdem in diesem Fall praktisch nicht beobachtbar ist. Dies ist ein Problem der Dekohärenz.

##### Teilchen im Doppelmuldenpotential
Sei ein Teilchen in einem _Doppelmuldenpotential_ im Grundzustand. Das Potential habe zwei Minima bei $x_1$ und $x_2$, beide auf exakt gleicher Höhe $E(x_1) = E(x_2)$. Somit ist die Wahrscheinlichkeit, dass das Teilchen sich an der Stelle $x_1$ befindet, ebenso groß wie die Wahrscheinlichkeit für die Position $x_2$.

Klassisch würden wir erwarten, dass das Teilchen sich im Grundzustand _entweder_ an $x_1$ _oder_ an $x_2$ befindet.

Quantenmechanisch sagen wir dagegen, das Teilchen befindet sich in _Superposition_, es befindet sich _zugleich_ an beiden Orten!

Ein anderes Beispiel ist der Spin: Beispielsweise kann ein Silberatom gleichzeitig in Zuständen _up_ und _down_ (relativ zu einer z-Achse) sein.

##### Mathematische Darstellung
Bezeichne $\mathcal H_{DMP}$ den Hilbertraum des Doppelmuldenpotentials. Dann gibt es zwei Zustände
$\varphi_1\in\mathcal H_{DMP}$ und $\varphi_2\in\mathcal H_{DMP}$. Die Superposition wird dann als $\mathcal H_{DMP} \ni \Psi = \varphi_1 + \varphi_2$ geschrieben.

### 2. Postulat: Das Messpostulat
Ein fundamentales Problem der Quantenphysik ist, dass direkte Beobachtungen nicht möglich sind.

Dieses Problem wird _operationalistisch_ gelöst. Das Messpostulat besagt, dass die Theorie mit _makroskopischen Messungen_ kompatibel sein muss.

Die Messung $M_\varphi$ misst, ob der Zustand $\varphi$ vorliegt (genannt _positiv_) oder nicht (genannt _negativ_).
$$
    M_\varphi =
        \begin{cases}
            0 \Leftrightarrow \varphi \ \mathrm{negativ} \\
            1 \Leftrightarrow \varphi \ \mathrm{positiv}
        \end{cases}
$$

1. Die gemessenen Werte sind reell, daher kann ein hermitescher Operator durch die Eigenwerte $\{a_i\}$ und Eigenzustände $\{\ket{\varphi_i}\}$ dargestellt werden.
2. Bornsche Regel: $p=|\braket{\varphi|\Psi}|^2$
3. Eine _ideale_ Messung $M_\Psi$ präperiert das System in Zustand $\Psi$.

#### 1. Messung von Zuständen
Die Messwerte $a_i$, die die Zustände $\varphi_i\in\mathcal H$ im Hilbertraum messen, sind reellwertig $a_i\in \mathbb R^n$.

Die Zustände werden durch hermitesche Operatoren beschrieben, die in der Spektraldarstellung durch die Eigenwerte $\{a_i\}$ und Eigenzustände $\{\ket{\varphi_i}\}$ dargestellt werden können.

#### 2. Bornsche Regel
Sei das System in einem Zustand $\Psi\in\mathcal H$. Dann ist Messung $M_\varphi$ mit der Wahrscheinlichkeit $p=|\braket{\varphi|\Psi}|^2$ positiv.

#### 3. ideale Messung
Eine Messung nennt man ideal, wenn sich das System nach der Messung $M_\Psi$ im Zustand $\Psi$ befindet. Dann spricht man von einem _Kollaps der Wellenfunktion_. Dies ermöglicht eine Präperation des Systems mit dem Zustand $\Psi$.

### Indeterminismus
Es gibt nur zwei Fälle in denen man das Ergebnis vorhersagen kann. Dazu muss ein Zustand $\psi$ gemessen worden sein, nun wird der der Zustand $\varphi$ gemessen. Diese zweite Messung kann man genau dann vorhersagen, wenn $\varphi \bot \psi$ oder $\varphi \parallel \psi$ gelten, ansonsten kann man das Ergebnis nicht vorhersagen.

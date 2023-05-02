---
title: Quantenmechanik
author:
  - Dr. Rochus Klesse
  - Oliver Filla
date: Sommersemester 2023
keywords:
  - Physik
  - Quantenmechanik
---
# Vorlesung: Quantenmechanik
## Einleitung
Die klassische Physik ist schon lange bekannt, zu Teilen schon sehr lange. Hierzu zählen die _klassische Mechanik_, die _Elektrodynamik_ sowie die _spezielle_ und _allgemeine_ _Relativitätstheorie_. Diese Bereiche gelten zwar im makroskopischen Bereich, allerdings nicht im mikroskopischen Bereich! Hierfür benötigt man die Quantenphysik.

Beispielsweise besagt die klassische Vorstellung eines Atoms, ein Elektron kreise auf einer Keplerbahn um den Atomkern. Auf diese Weise wäre es jedoch dauerhaft beschleunigt, daher müsste es elektromagnische Strahlung abstrahlen. Dies würde die Energie des Elektrons reduzieren, was die Kreisbahn instabil machen müsste - das Elektron fiele auf einer spiralförmigen Bahn in den Atomkern. Daher reicht die klassische Theorie nicht aus, um Atome zu erklären.

Andere Phänomene, die die klassische Physik nicht erklären kann, sind Spektrallinien, manche Eigenschaften von Festkörpern[^1] oder die Schwarzkörperstrahlung.

Aus diesen Gründen entstand um 1925 die Quantenphysik. Heutzutage ist sie extrem gut erforscht und scheint allgemeingültig zu sein.

Der in dieser Vorlesung gewählte Zugang ist ahistorisch über Postulate.
Wesentliche Merkmale der Quantenmechanik sind das _Superpositionsprinzip_ und der _Indeterminismus_.

[^1]: z.B: elektrische Leitfähigkeit und Wärmekapazität

## Prinzipien
### Operatoren
Ein Operator $\hat{A}$ auf dem Hilbertraum $\mathcal H$ ist eine lineare Abbildung, die einen Zustand $\varphi$ auf einen Zustand $\hat{A}\varphi$ abbildet.

Ein Operator ist vollständig beschrieben durch die Bilder der Basisvektoren, die er erzeugt. Daher kann er als Matrix dargestellt werden. Er kann einer Observablen zugeordnet werden. Es gilt $\braket{O}_\Psi = \braket{\Psi|\hat{O}\Psi}$.

Die meisten quantenmechanischen Operatoren sind _selbstadjungiert_ bzw. _hermitesch_.

#### Hermitesche Operatoren
Ein Operator $\hat{A}$ ist hermitesch bzw. selbstadjungiert, wenn $\hat{A}^\dagger=\hat{A}$. Daraus folgt, dass die Adjungierte $\hat{A}^\dagger = \hat{A}^{-1}$ auch die Inverse ist.

* Quantenmechanisch wird die Adjunktion eines Operators durch $\braket{\varphi|A\psi}=\braket{A^\dagger\varphi|\psi}$ definiert.
* Ein hermitescher Operator besitzt eine orthonormale Basis $\{\varphi_i\}$.
* Die Eigenwerte $a_i$ eines hermiteschen Operators sind _reell_: $\hat{A}\ket{\varphi_i}=a_i\ket{\varphi_i}$
    * Dadurch kann die Matrix $A$ in der Spektraldarstellung diagonalisiert werden.
    * Der Erwartungswert $\braket{\hat{A}}_\Psi$ ist das Skalarprodukt $\braket{\Psi|A|\Psi}$.

#### Adjunktion
Die Adjunktion $A^\dagger$ ist die Verkettung von komplexer Konjugation $A^*$ und Transponation $A^\mathrm T$. Es gilt $A^\dagger=(A^*)^\mathrm T$.

#### Spektraldarstellung Hermitescher Operatoren
Die Spektraldarstellung nutzt den Projektionsoperator $P_\chi$. $\sum_i \ket{\varphi_i}\bra{\varphi_i}$ ist dabei die Einheitsmatrix, $a_i\in\mathbb R$ sind reelle Eigenwerte. Daher sind $\{\varphi_i\}$ eine orthonormale Eigenbasis.
$$
    \hat{A} = \sum_i a_i P_{\varphi_i} = \sum_i a_i \ket{\varphi_i}\bra{\varphi_i}
$$

#### Erwartungswert Hermitescher Operatoren
Der Erwartungswert $\braket{\hat{A}}_\Psi$ eines Hermiteschen Operators $\hat{A}$ ist für ein System im Zustand $\Psi$ durch das Skalarprodukt $\braket{\Psi|A|\Psi}$ definiert. Durch die Spektraldarstellung kann die Matrix $A$ als reellwertige Diagonalmatrix dargestellt werden, daher spielt es keine Rolle, ob $A$ auf den Ket-Vektor oder den Bra-Vektor angewendet wird.

#### Projektionsoperator
Der Operator $P_\chi$ projiziert einen Vektor $\Psi$ auf den Vektor $\chi$. Dies ergibt einen Vektor mit Richtung und Orientierung des Vektors $\chi$. Die Länge des Vektors $P_\chi\Psi$ entspricht dem "Schatten", den der Vektor $\Psi$ werfen würde. Dieser wird durch das Skalarprodukt $\braket{\chi, \Psi}$ beschrieben.
$$
    P_\chi\Psi = \braket{\chi, \Psi} \chi
$$

##### Darstellung mit Dualvektoren
Die Matrixdarstellung des Projektionsoperators kann mittels des Dualraums $\mathcal H^*$ berechnet werden:
$$
P_\chi \ket{\Psi} = (\braket{\chi|\Psi})\ket{\chi} = \ket{\chi}(\braket{\chi|\Psi}) = (\ket{\chi}\bra{\chi})\ket{\Psi} \Rightarrow P_\chi = \ket{\chi}\bra{\chi}
$$
Da $\braket{\chi|\Psi}\in\mathbb C$ kann das Kommutativgesetz angewendet werden. $\ket{\chi}\bra{\chi}$ ist eine $n\times n$-dimensionale Matrix.

#### Kommutator
Der Kommutator ist definiert als $[A, B] = AB - BA$.

Wenn $A$ eine Erhaltungsgröße und $H$ der Hamiltionoperator ist, gilt $[H, A]=0$.

Die klassische Entsprechung des Kommutators ist die Poisson-Klammer.

### Observable
Eine beobachtbare Größe wird in der Quantenmechanik _Observable_ genannt.

Sie hat konkrete Werte, die gemessen werden. Für Messungen einem Systemen im Zustand $\Psi$ wird der Erwartungswert der Observable $O$ als $\braket{O}_\Psi$ geschrieben. Einer Observable $O$ kann ein zugehöriger Operator $\hat{O}$ zugeordnet werden. Es gilt $\braket{O}_\Psi = \braket{\Psi|\hat{O}\Psi}$.

Im Fall des Stern-Gerlach-Experimentes ist die Observable die $z$-Komponente $\mu_z$ des magnetischen Moments.

### Dirac-Notation
Zustände im Hilbertraum $\varphi\in\mathcal H$ werden als "Ket" $\ket{\varphi}$ dargestellt, Dualvektoren $\varphi^\dagger\in\mathcal H^*$ als "Bra" $\bra{\varphi}$. Auf diese Weise wird das Skalarprodukt als "Bra-Ket" $\braket{\varphi|\varphi}$ dargestellt.

Zudem werden oft nur Indizes in Ket/Bra eingetragen. So wird aus $\ket{\varphi_{z+}}=\ket{z+}$.

#### Rechenregeln
##### Ket
* $\ket{\varphi + \psi} = \ket{\varphi} + \ket{\psi}$
* $\ket{\lambda\psi} = \lambda\ket{\psi}$

##### Bra
* $\bra{\varphi + \psi} = \bra{\varphi} + \bra{\psi}$
* $\ket{\lambda\psi} = \lambda^*\ket{\psi}$

##### Operator / Matrix
$$
\begin{aligned}
    \ket{\varphi}\bra{\chi}
        = &\varphi\chi^\dagger\\
        = &\begin{pmatrix}\varphi_1\\\vdots\\\varphi_n\end{pmatrix}
           \cdot (\Psi_1^*,\ldots,\Psi_n^*)\\
        = &\begin{pmatrix}
               \varphi_1\Psi_1^* && \dots && \varphi_1\Psi_n^* \\
               \vdots && \ddots && \vdots\\
               \varphi_n\Psi_1^* && \dots && \varphi_n\Psi_n^*
           \end{pmatrix}
\end{aligned}
$$

#### Dualraum
Der Dualraum $\mathcal H^*$ zu dem Hilbertraum $\mathcal H$ ist der Vektorraum der linearen Abbildungen (_Linearformen_) von $\mathcal H \rightarrow \mathbb C$.

Es gibt einen Isomorphismus, der einem Zustand $\psi\in\mathcal H$ den _Dualvektor_ $\psi^\dagger \in\mathcal H^*$ zuordnet. Es gilt $\varphi^\dagger\psi = \braket{\varphi|\psi}$. Hierbei sind $\psi$ als $n$-dimensionaler Vektor und $\varphi^\dagger$ als $1\times n$-dimensionale Matrix darstellbar.

### Pauli-Matrizen
$$
\begin{aligned}
    \sigma_1 = \sigma_x =\ &
        \begin{pmatrix}
            0 & 1\\
            1 & 0
        \end{pmatrix} \\
    \sigma_2 = \sigma_y =\ &
        \begin{pmatrix}
            0 & -i\\
            i & 0
        \end{pmatrix}\\
    \sigma_3 = \sigma_z =\ &
        \begin{pmatrix}
            1 & 0\\
            0 & -1
        \end{pmatrix}
\end{aligned}
$$
#### Euler-Identität
$$
    \mathrm e^{i\varphi \sigma_i} = \cos(\varphi)\mathds 1 + i\sigma_i\sin(\varphi)
$$

### Exponentialfunktion
#### Reihendarstellung
$$
    \mathrm e^x = \sum_{n=0}^\infty\frac{x^n}{n!}
$$

#### Grenzwertdarstellung
$$
    \mathrm e^x = \lim_{n\rightarrow \infty} \left(1+\frac{x}{n}\right)^n
$$

### Euler-Identität
$$
    \mathrm e^{i\varphi} = \cos(\varphi) + i\sin(\varphi) \\
    \Rightarrow \mathrm e^{i\pi} = 1
$$

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
            0 \Leftrightarrow \varphi \bot \psi \\
            1 \Leftrightarrow \varphi \parallel \psi
        \end{cases}
$$

Nur wenn $p\neq 0 \lor p\neq 1$ gelten, kann man das Ergebnis einer Messung $M_\varphi$ vorhersagen.
Das bedeutet, wenn $\varphi \bot \psi \lor \varphi \parallel \psi$ ist die Messung $M_\varphi$ deterministisch, ansonsten ist sie indeterministisch.

### Superposition
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
2. Bornsche Regel: $p=|\braket{\varphi|\Psi}|^2$, der Eigenwert $a_i$ wird mit der Wahrscheinlichkeit $p=|\braket{\varphi_1|\Psi}|^2$ gemessen. Erwartungswert $\braket{A}_\Psi=\braket{\Psi|A|\Psi}$.
3. Eine _ideale_ Messung $M_{\varphi_i}$ präperiert das System in Zustand $\varphi_i$ durch einen Kollaps der Wellenfunktion $\Psi$.

#### 1. Messung von Zuständen
Die Messwerte $a_i$, die die Zustände $\varphi_i\in\mathcal H$ im Hilbertraum messen, sind reellwertig $a_i\in \mathbb R^n$.

Die Zustände werden durch hermitesche Operatoren beschrieben, die in der Spektraldarstellung durch die Eigenwerte $\{a_i\}$ und Eigenzustände $\{\ket{\varphi_i}\}$ dargestellt werden können.

#### 2. Bornsche Regel
Sei das System in einem Zustand $\Psi\in\mathcal H$. Dann ist Messung $M_\varphi$ mit der Wahrscheinlichkeit $p=|\braket{\varphi|\Psi}|^2$ positiv.

#### 3. ideale Messung
Eine Messung nennt man ideal, wenn sich das System nach der Messung $M_\Psi$ im Zustand $\Psi$ befindet. Dann spricht man von einem _Kollaps der Wellenfunktion_. Dies ermöglicht eine Präperation des Systems mit dem Zustand $\Psi$.

### Indeterminismus
Es gibt nur zwei Fälle in denen man das Ergebnis vorhersagen kann. Dazu muss ein Zustand $\psi$ gemessen worden sein, nun wird der der Zustand $\varphi$ gemessen. Diese zweite Messung kann man genau dann vorhersagen, wenn $\varphi \bot \psi$ oder $\varphi \parallel \psi$ gelten, ansonsten kann man das Ergebnis nicht vorhersagen.

### 3. Postulat: Dynamik
Die zeitliche Entwicklung eines Zustands $\Psi(t)$ eines abgeschlossenen, unbeobachteten Systems genügt der Schrödingergleichung mit dem Hermiteschen Operator $H$, dem sogenannten Hamiltonoperator des Systems.
$$
    \dot{\Psi}(t) = -\frac{i}{\hbar} H\Psi(t)\ ,
$$

## Zweizustandssysteme
### Bohr-Sommerfeldsches Atommodell
Das Bohr-Sommerfeldsche Atommodell ist eine Erweiterung des Bohrschen Atommodells, das klassische Mechanik annimmt, um die Bewegung der Elektronen um den Atomkern zu beschreiben. Es wird um Quantisierungsbedingungen ergänzt.

Durch seine Rotation um den Atomkern hat ein Elektron einen Drehimpuls $\vec{L}$. Dieser Drehimpuls ist durch die Quantenzahl $l=1,2,3,\dots$ quantisiert, es gilt $|\vec{L}| = l\hbar$.

Die Drehimpulskomponente in Richtung der $z$-Achse $L_z=m\hbar$ ist nun durch eine magnetische Quantenzahl $m=-l,-l+1,\dots,l$ zu beschreiben.

Da eine bewegte Ladung ein elektromagnetisches Feld beschreibt, kann man die Quantenzahlen auch nutzen, um ein sogenanntes Magneton $\vec{\mu}$ zu beschreiben. Es gilt $|\vec{\mu}| = \mu_0 l$ sowie $\mu_z =  \mu_0m$. $\mu_0$ ist das Bohrsche Magneton.

#### Zeemann-Effekt
Durch $L_z$ werden die Energieniveaus der Elektronen verschoben. Diese Verschiebung führt zu einer Verschiebung der Spektrallinien.

Der Zeemann-Effekt wird auch Feinaufspaltung genannt.

### Das Stern-Gerlach-Experiment
Die Quantenphysik erwartet diskrete magnetische Momente, die klassische Physik hätte nach dem Bohr-Modell kontinuierliche magnetische Momente erwartet. Im Stern-Gerlach-Experiment wurde gemessen, was davon zutrifft.

Hierzu wird ein Strahl von Silberatomen durch ein inhomogenes Magnetfeld geschickt. Durch ihr magnetisches Moment werden diese Atome abgelenkt, diese Ablenkung ist proportional zum magnetischen Moment in $z$-Richtung. Klassischerweise würde man eine kontinuierliche Verteilung der abgelenkten Strahlen erwarten, quantenmechanisch eine diskrete Verteilung.

Das Experiment ergab, dass es genau zwei Punkte gab, an denen Silberatome gemessen werden konnten. Dies zeigte, dass das magnetische Moment gequantelt ist.

In weiteren Messungen wurde festgestellt, dass die Zustände $\ket{z\uparrow}$ und $\ket{z\downarrow}$ senkrecht zueinander sind, selbiges gilt jeweils in $x$- und $y$-Richtung. Die Zustände der Achsen $x$, $y$ und $z$ sind unternander jedoch nicht rechtwinklig, sondern in einem Winkel von jeweils $45^\circ$.

Deswegen wählt man oft folgende Ortonormalbasis:
$$
\begin{aligned}
    \varphi_{z+}
        &\ \ \land\ \ \varphi_{z-} \\
    \varphi_{x+} = \frac{1}{\sqrt{2}} (\varphi_{z+} + \varphi_{z-})
        &\ \ \land\ \ \varphi_{x-}
        = \frac{1}{\sqrt{2}} (\varphi_{z+} - \varphi_{z-})\\
    \varphi_{y+} = \frac{1}{\sqrt{2}} (\varphi_{z+} + \mathcal i\varphi_{z-})
        &\ \ \land\ \ \varphi_{x-}
        = \frac{1}{\sqrt{2}} (\varphi_{z+} - \mathcal i\varphi_{z-})
\end{aligned}
$$

#### Observable
Die Observable ist in diesem Fall $\mu_z$, die $z$-Komponente des magnetischen Moments. Die gemessenen Werte sind $\pm \mu_0$.

Nach dem Messpostulat hat sie die Wahrscheinlichkeiten $p_+=|\braket{\varphi_{z+}, \Psi}|^2$ und $p_-=|\braket{\varphi_{z-}, \Psi}|^2$, wenn vorher der Zustand $\Psi$ vorherrschte. Damit hat $\mu_z$ den Erwartungswert $\braket{\mu_z}_\Psi$ für Messungen an Atomen mit dem Zustand $\Psi$. Es gilt daher $\braket{\mu_z} _{\Psi} = p_{+}\cdot\mu_0+p_{-}\cdot(-\mu_0)$.

Die Operatoren $\{\mu_i\}$ sind proportional zu den Paulimatrizen $\sigma_i$:

$$
\begin{aligned}
    \mu_x = \mu_0 \sigma_1 =\ & \mu_0
        \begin{pmatrix}
            0 & 1\\
            1 & 0
        \end{pmatrix} \\
    \mu_y = \mu_0 \sigma_2 =\ & \mu_0
        \begin{pmatrix}
            0 & -i\\
            i & 0
        \end{pmatrix}\\
    \mu_z = \mu_0 \sigma_3 =\ & \mu_0
        \begin{pmatrix}
            1 & 0\\
            0 & -1
        \end{pmatrix}
\end{aligned}
$$

### Schrödingergleichung
Die zeitliche Entwicklung eines Zustands $\Psi(t)$ eines abgeschlossenen, unbeobachteten Systems genügt der Schrödingergleichung mit dem Hermiteschen Operator $H$, dem sogenannten Hamiltonoperator des Systems. Der Faktor $\hbar^{-1}$ sorgt dafür, dass die Einheit der Eigenwerte eine Energie ist.
$$
    \dot{\Psi}(t) = -\frac{i}{\hbar} H\Psi(t)\ ,
$$
Die Schrödingergleichung beschreibt eine _lineare_ Dynamik. Nicht-lineare Dynamik verstößt gegen die Spezielle Relativitätstheorie.

Mit dem Kommutator lässt folgt für eine Observable $A$:

$$
    \frac{\mathrm d}{\mathrm d t} \braket{A}_{\Psi(t)} = \braket{\frac{i}{\hbar}[H, A]}_{\Psi(t)}
$$

#### Hamiltonfunktion
In der Klassischen Mechanik werden Zustände durch den Hamiltonian $H(H(\vec{x}, t))$ beschrieben, wobei $\vec{x}(t) = \left(\begin{smallmatrix}\vec{q}(t)\\\vec{p}(t)\end{smallmatrix}\right)\in\Gamma(\mathbb R^{2n})$ einen Punkt im Phasenraum $\Gamma$ beschreibt. Die Bewegungsgleichung lautet:

$$
    \dot{\vec{x}}(t) =
        \begin{pmatrix}
            \dot{\vec{q}}(t)\\
            \dot{\vec{p}}(t)
        \end{pmatrix} \overset{!}{=}
        \begin{pmatrix}
            \frac{\partial H(\vec{x}, t)}{\partial \vec{p}} \\
            -\frac{\partial H(\vec{x}, t)}{\partial \vec{q}} \\
        \end{pmatrix} \\
    \frac{\mathrm d}{\mathrm d t} A(\vec{x}, t) = \{H, A\}_{\vec{x}(t)}
$$

Dies führt zu einer Differentialgleichung 1. Ordnung. Es gilt mit den Poisson-Klammern:


Die Entsprechung in der Quantenmechanik ist der Hamiltonoperator.

#### Poisson-Klammer
$$
    \{A, B\} = \sum_i \frac{\partial A}{\partial p_i}\frac{\partial B}{\partial q_i}
        - \frac{\partial A}{\partial q_i}\frac{\partial B}{\partial p_i}
$$

Die quantenmechanische Entsprechung der Poisson-Klammer ist der Kommutator.

#### Herleitung der Schrödingergleichung
In der Quantenmechanik gilt eine ähnliche Zustandsgleichung: $\dot{\Psi}(t) \overset{!}{=} F\Psi(t)$, wobei $F$ ein linearer Operator sein muss. Aus der Normierung der Zustände $|\Psi|^2=1$ folgt, dass $\frac{\mathrm d}{\mathrm d t}|\Psi|^2=0$. Rechnung führt zu der Identität $\frac{\mathrm d}{\mathrm d t}|\Psi|^2 = \braket{\Psi|(F^\dagger+F)\Psi}$, woraus folgt dass $F^\dagger+F=0$ gelten muss.

Die übliche Wahl fällt auf $F=-\frac{i}{\hbar} H$, wobei $H$ der Hamiltonoperator ist. Daraus folgt
$$
    \dot{\Psi}(t) = -\frac{i}{\hbar} H\Psi(t)\ ,
$$
sowie $H^\dagger=H$. $H$ ist also ein Hermitescher Oparator.

### Hamiltonoperator
* Der Hamiltonoperator $H$ ist ein Hermitescher Operator. Er wird in der Schrödingergleichung verwendet.
* Er entspricht der Hamiltonfunktion in der Klassischen Mechanik.
* Die zugehörige Observable ist die Energie des Systems
* Spektraldarstellung: $H = \sum_{i=0}^N E_i \ket{\varphi_i}\bra{\varphi_i}$
    * $E_i$ sind die Eigenenergien bzw. Energieniveaus
    * $\varphi_i$ sind die Eigenenergiezustände bzw Eigenzustände

Der Kommutator $[H, H]$ ist immer $0$, daher ist die Energie immer eine Erhaltungsgröße.

### Zeitentwicklungsoperator
Da die Schrödingergleichung $\dot{\Psi}(t) = -\frac{i}{\hbar} H\Psi(t)$ durch die allgemeine Lösung $\Psi(t) = \exp[-\frac{i}{\hbar}Ht] \Psi(0)$ gelöst wird, ist es sinnvoll, dies durch einen Operator auszudrücken. Der Zeitentwicklungsoperator $U(t)$ ist wie folgt definiert:
$$
    U(t) = \exp\left[-\frac{i}{\hbar}Ht\right]
$$
$U(t)$ ist die Lösung der Schrödingergleichung zu dem Anfangswert $U(0)$. Da $U(t_1)\cdot U(t_2) = U(t_1+t_2)$ gilt, folgt $U(t)U(-t)=0$, wodurch folgt dass $U$ _unitär_ ist: $U^\dagger=U^{-1}$.

* $\Psi(t) = U(t)\Psi(0)$
* $U(0) = \mathds 1$
* $\dot{U}(t) = -\frac{i}{\hbar} H\cdot U(t)$
* Der Kommutator verschwindet: $[U(t), H] = 0$

#### Spektraldarstellung / Energiedarstellung
Aus $H = \sum_{i=0}^N E_i \ket{\varphi_i}\bra{\varphi_i}$ folgt $U(t) = \sum_{i=0}^N \exp\left[-\frac{i}{\hbar} E_n t \right]\ket{\varphi_i}\bra{\varphi_i}$, wodurch $U(t)$ dieselben Eigenzustände wie $H$ hat.

### Erhaltungsgrößen
Die Observable $A$ ist genau dann eine Erhaltungsgröße, wenn $\braket{A}_{\Psi(t)}$ für alle Lösungen der Schrödingergleichung $\dot{\Psi}(t) = -\frac{i}{\hbar} H\Psi(t)$ konstant ist.

Daraus folgt, dass $A$ genau dann eine Erhaltungsgröße ist, wenn für die Operatoren $HA=AH$ gilt, bzw. der Kommutator $[H, A]=0$ ist. Insbesondere gilt:
$$
    \frac{\mathrm d}{\mathrm d t} \braket{A}_{\Psi(t)} = 
        \left<\frac{i}{\hbar} [H, A]\right>_{\Psi(t)}
$$

Die Energie immer eine Erhaltungsgröße, da $[H, H]=0$.

#### Stabilität von Eigenzuständen
Eigenzustände sind immer stabil, der Erwartungswert aller Observablen bezüglich eines Eigenzustandes ist immer erhalten. Daraus folgt, dass dynamische Zustände durch die Superposition von Energieeigenzuständen entstehen.

Beweis: Die zeitliche Veränderung eines Eigenzustands wird durch den Zeitentwicklungsoperator $U(t)$ beschrieben. Für Eigenzustände $\ket{\varphi_i}$ gilt demnach $U(t)\ket{\varphi_i} = \exp[-i\omega_l t]\ket{\varphi_i}$. Der Erwartungswert einer Observable $A$ im Eigenzustand ist $\braket{A}_{\ket{\varphi_i}}$ wird unter Zeitentwicklung $\braket{A}_{U(t)\ket{\varphi_i}}=\braket{U(t)\varphi_i|A|U(t)\varphi_i} = \braket{\varphi_i|A|\varphi_i}$. Die Phasenverschiebung eines einzelnen Eigenzustands ist daher nicht beobachtbar.

#### Quantenschwebung
Der Erwartungswert einer beliebigen Observablen in der Superposition $\ket{\varphi_m+\varphi_n}$ der Energieeigenzustände $\ket{m}$ und $\ket{n}$ oszilliert mit der Frequenz $\omega$.
$$
    \omega = \left|\frac{E_n-E_m}{\hbar}\right|
$$

### Lamorpräzession
#### Klassische Präzession
Ein symmetrischer Kreisel mit einer Winkelgeschwindigkeit $\vec{\omega} = \omega\hat{n}$ und der Länge $l$ hat ein Drehmoment von $\vec{M} = -ml\vec{g}\times \vec{n}$, wobei das Drehmoment die Änderung des Drehimpulses $\vec{L}$ darstellt. Es gelten $\vec{M}=\dot{\vec{L}}$ und $.

Ein Spin im Magnetfeld $\vec{B}$ hat mit einem magnetischen Moment $\vec{\mu}$ ein Drehmoment von $\vec{M} = \vec{B} \times \vec{\mu}$, da $\vec{\mu}\parallel\vec{L}$.

#### Lamorpräzession: Präzession des magnetischem Moments
Betrachtet wird die Präzession des magnetischem Moments $\vec{\mu}$ in einem Magnetfeld $\vec{B}$, wenn das magnetische Moment entlang der $z$-Achse ausgerichtet ist. Die Energie ist $E=-\vec{B}\vec{\mu}=-B\mu_z$. Daher ist der Hamiltonoperator $H=-B\hat{\mu}_z=-B\mu_0\sigma_3$.

Aus der Schrödingergleichung folgt dann die Bewegungsgleichung $\dot{\Psi}(t) = i\omega\sigma_3\Psi(t)$. Diese wird durch  $\Psi(t)= \exp[i\omega t\sigma_3] \Psi(0)$ gelöst. Nach der Euler-Identität für Pauli-Matrizen wird dies durch $\Psi(t) = \mathrm e^{i\omega t\sigma_3}\Psi_0$ gelöst.

Wird $\Psi_0=\varphi_{x+}$ gewählt, so folgt $\Psi(t) = \frac{1}{\sqrt 2} \left(\begin{smallmatrix}\mathrm e^{i\omega t}\\\mathrm e^{-i\omega t}\end{smallmatrix}\right)$. Es folgt für die Erwartungswerte der Komponenten von $\vec{\mu}$:
$$
    \braket{\mu}_{\Psi(t)} =
        \begin{pmatrix}
            \braket{\mu_x}_{\Psi(t)} \\
            \braket{\mu_y}_{\Psi(t)} \\
            \braket{\mu_z}_{\Psi(t)} \\
        \end{pmatrix}
        = \mu_0
        \begin{pmatrix}
            \cos[2\omega t] \\
            - \sin[2\omega t] \\
            0
        \end{pmatrix}
$$

Dies ist eine **Lamorpräzession** mit der Frequenz $\omega_L=2\omega=\frac{2B\mu_0}{\hbar}$.

## Quantenmechanik eines Punktteilchens
### Ortsoperator
Im Folgenden betrachten wir ein Teilchen im Eindimensionalen Raum.

Die Observable $x\in\mathbb R$ beschreibt den Ort, der dazugehörige hermitesche Operator $\hat{x}$ hat daher reelle Eigenwerte. Daher wird das Eigensystem durch die Menge der Zustände $\{\ket{\varphi_x}\}_{x\in\mathbb R}$ beschrieben.

### Kontinuitätsübergang
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

#### Komponentendarstellung

$$
    \mathcal H \ni \ket{\Psi} = \mathds 1 \ket{\Psi} = \sum_i \ket{\varphi_i}\braket{\varphi_i|\Psi} \\
    \Psi_i = \braket{\varphi_i|\Psi}
        \Rightarrow \ket{\Psi} = \sum_i \Psi_i \ket{\varphi_i} \\
    \Psi(x) = \braket{\varphi_x|\Psi}
        \Rightarrow \ket{\Psi} = \int_{\mathbb R} \Psi(x) \ket{\varphi_x} \mathbb dx
$$

$\Psi(x)$ ist die Wellenfunktion des Zustands $\Psi(x)$.

##### Skalarprodukt in Komponentendarstellung
Dadurch sieht das Skalarprodukt in Komponentendarstellung folgendermaßen aus:

$$
    \braket{\Psi|\chi} =
        \bra{\Psi}\mathds 1 \ket{\chi}
        = \bra{\Psi}\left(\sum_i \ket{\varphi_i}\bra{\varphi_i}\right)\ket{\chi}
        = \sum_i \Psi_i^*\chi_i\\
    \braket{\Psi|\chi} = \int_{\mathbb R} \Psi^*(x)\chi(x) \mathrm dx
$$

<!--
### Impuls
### Drehimpuls
## Harmonischer Oszillator

## Zentralpotential
### Wasserstoffatom

## Identische Teilchen
### Bosonen
### Fermionen

## Verschränkung
### Bell'sche Ungleichungen

## Messprozess
### Dekohärenz
"QM -> klassische Physik"
-->

# Literatur
1. [@Sakurai2020]

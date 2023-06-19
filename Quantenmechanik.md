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
# Disclaimer
Dies ist eine _inoffizielle_ Mitschrift aus der Vorlesung zur Quantenmechanik von Dr. Rochus Klesse. Ich habe Dr. Klesses Erlaubnis, dies zu publizieren. Dies bedeutet jedoch nicht, dass irgendjemand Korrekturgelesen hätte. Fehler, Ungenauigkeiten etc. sind demnach zu erwarten und mir zuzuschreiben.

# Einleitung
Die klassische Physik ist schon lange bekannt, zu Teilen schon sehr lange. Hierzu zählen die _klassische Mechanik_, die _Elektrodynamik_ sowie die _spezielle_ und _allgemeine_ _Relativitätstheorie_. Diese Bereiche gelten zwar im makroskopischen Bereich, allerdings nicht im mikroskopischen Bereich! Hierfür benötigt man die Quantenphysik.

Beispielsweise besagt die klassische Vorstellung eines Atoms, ein Elektron kreise auf einer Keplerbahn um den Atomkern. Auf diese Weise wäre es jedoch dauerhaft beschleunigt, daher müsste es elektromagnische Strahlung abstrahlen. Dies würde die Energie des Elektrons reduzieren, was die Kreisbahn instabil machen müsste - das Elektron fiele auf einer spiralförmigen Bahn in den Atomkern. Daher reicht die klassische Theorie nicht aus, um Atome zu erklären.

Andere Phänomene, die die klassische Physik nicht erklären kann, sind Spektrallinien, manche Eigenschaften von Festkörpern[^1] oder die Schwarzkörperstrahlung.

Aus diesen Gründen entstand um 1925 die Quantenphysik. Heutzutage ist sie extrem gut erforscht und scheint allgemeingültig zu sein.

Der in dieser Vorlesung gewählte Zugang ist ahistorisch über Postulate.
Wesentliche Merkmale der Quantenmechanik sind das _Superpositionsprinzip_ und der _Indeterminismus_.

[^1]: z.B: elektrische Leitfähigkeit und Wärmekapazität

# Prinzipien

## Operatoren
Ein Operator $\hat{A}$ auf dem Hilbertraum $\mathcal H$ ist eine lineare Abbildung, die einen Zustand $\varphi$ auf einen Zustand $\hat{A}\varphi$ abbildet.

Ein Operator ist vollständig beschrieben durch die Bilder der Basisvektoren, die er erzeugt. Daher kann er als Matrix dargestellt werden. Er kann einer Observablen zugeordnet werden. Es gilt $\braket{O}_\Psi = \braket{\Psi|\hat{O}\Psi}$.

Die meisten quantenmechanischen Operatoren sind _selbstadjungiert_ bzw. _hermitesch_.

### Hermitesche Operatoren
Ein Operator $\hat{A}$ ist hermitesch bzw. selbstadjungiert, wenn $\hat{A}^\dagger=\hat{A}$. Daraus folgt, dass die Adjungierte $\hat{A}^\dagger = \hat{A}^{-1}$ auch die Inverse ist.

* Quantenmechanisch wird die Adjunktion eines Operators durch $\braket{\varphi|A\psi}=\braket{A^\dagger\varphi|\psi}$ definiert.
* Ein hermitescher Operator besitzt eine orthonormale Basis $\{\varphi_i\}$.
* Die Eigenwerte $a_i$ eines hermiteschen Operators sind _reell_: $\hat{A}\ket{\varphi_i}=a_i\ket{\varphi_i}$
    * Dadurch kann die Matrix $A$ in der Spektraldarstellung diagonalisiert werden.
    * Der Erwartungswert $\braket{\hat{A}}_\Psi$ ist das Skalarprodukt $\braket{\Psi|A|\Psi}$.

### Adjunktion
Die Adjunktion $A^\dagger$ ist die Verkettung von komplexer Konjugation $A^*$ und Transponation $A^\mathrm T$. Es gilt $A^\dagger=(A^*)^\mathrm T$.

### Spektraldarstellung Hermitescher Operatoren
Die Spektraldarstellung nutzt den Projektionsoperator $P_\chi$. $\sum_i \ket{\varphi_i}\bra{\varphi_i}$ ist dabei die Einheitsmatrix, $a_i\in\mathbb R$ sind reelle Eigenwerte. Daher sind $\{\varphi_i\}$ eine orthonormale Eigenbasis.
$$
    \hat{A} = \sum_i a_i P_{\varphi_i} = \sum_i a_i \ket{\varphi_i}\bra{\varphi_i}
$$

### Erwartungswert Hermitescher Operatoren
Der Erwartungswert $\braket{\hat{A}}_\Psi$ eines Hermiteschen Operators $\hat{A}$ ist für ein System im Zustand $\Psi$ durch das Skalarprodukt $\braket{\Psi|A|\Psi}$ definiert. Durch die Spektraldarstellung kann die Matrix $A$ als reellwertige Diagonalmatrix dargestellt werden, daher spielt es keine Rolle, ob $A$ auf den Ket-Vektor oder den Bra-Vektor angewendet wird.

### Projektionsoperator
Der Operator $P_\chi$ projiziert einen Vektor $\Psi$ auf den Vektor $\chi$. Dies ergibt einen Vektor mit Richtung und Orientierung des Vektors $\chi$. Die Länge des Vektors $P_\chi\Psi$ entspricht dem "Schatten", den der Vektor $\Psi$ werfen würde. Dieser wird durch das Skalarprodukt $\braket{\chi, \Psi}$ beschrieben.
$$
    P_\chi\Psi = \braket{\chi, \Psi} \chi
$$

#### Darstellung mit Dualvektoren
Die Matrixdarstellung des Projektionsoperators kann mittels des Dualraums $\mathcal H^*$ berechnet werden:
$$
P_\chi \ket{\Psi} = (\braket{\chi|\Psi})\ket{\chi} = \ket{\chi}(\braket{\chi|\Psi}) = (\ket{\chi}\bra{\chi})\ket{\Psi} \Rightarrow P_\chi = \ket{\chi}\bra{\chi}
$$
Da $\braket{\chi|\Psi}\in\mathbb C$ kann das Kommutativgesetz angewendet werden. $\ket{\chi}\bra{\chi}$ ist eine $n\times n$-dimensionale Matrix.

### Kommutator
Der Kommutator ist definiert als $[A, B] = AB - BA$.

Wenn $A$ eine Erhaltungsgröße und $H$ der Hamiltionoperator ist, gilt $[H, A]=0$.

Die klassische Entsprechung des Kommutators ist die Poisson-Klammer.

## Observable
Eine beobachtbare Größe wird in der Quantenmechanik _Observable_ genannt.

Sie hat konkrete Werte, die gemessen werden. Für Messungen einem Systemen im Zustand $\Psi$ wird der Erwartungswert der Observable $O$ als $\braket{O}_\Psi$ geschrieben. Einer Observable $O$ kann ein zugehöriger Operator $\hat{O}$ zugeordnet werden. Es gilt $\braket{O}_\Psi = \braket{\Psi|\hat{O}\Psi}$.

Im Fall des Stern-Gerlach-Experimentes ist die Observable die $z$-Komponente $\mu_z$ des magnetischen Moments.

## Dirac-Notation
Zustände im Hilbertraum $\varphi\in\mathcal H$ werden als "Ket" $\ket{\varphi}$ dargestellt, Dualvektoren $\varphi^\dagger\in\mathcal H^*$ als "Bra" $\bra{\varphi}$. Auf diese Weise wird das Skalarprodukt als "Bra-Ket" $\braket{\varphi|\varphi}$ dargestellt.

Zudem werden oft nur Indizes in Ket/Bra eingetragen. So wird aus $\ket{\varphi_{z+}}=\ket{z+}$.

### Rechenregeln

#### Ket
* $\ket{\varphi + \psi} = \ket{\varphi} + \ket{\psi}$
* $\ket{\lambda\psi} = \lambda\ket{\psi}$

#### Bra
* $\bra{\varphi + \psi} = \bra{\varphi} + \bra{\psi}$
* $\bra{\lambda\psi} = \lambda^*\bra{\psi}$

#### Operator / Matrix
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

## Dualraum
Der Dualraum $\mathcal H^*$ zu dem Hilbertraum $\mathcal H$ ist der Vektorraum der linearen Abbildungen (_Linearformen_) von $\mathcal H \rightarrow \mathbb C$.

Es gibt einen Isomorphismus, der einem Zustand $\psi\in\mathcal H$ den _Dualvektor_ $\psi^\dagger \in\mathcal H^*$ zuordnet. Es gilt $\varphi^\dagger\psi = \braket{\varphi|\psi}$. Hierbei sind $\psi$ als $n$-dimensionaler Vektor und $\varphi^\dagger$ als $1\times n$-dimensionale Matrix darstellbar.

## Pauli-Matrizen
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

### Euler-Identität
$$
    \mathrm e^{i\varphi \sigma_i} = \cos(\varphi)\mathds 1 + i\sigma_i\sin(\varphi)
$$

## Exponentialfunktion

### Reihendarstellung
$$
    \mathrm e^x = \sum_{n=0}^\infty\frac{x^n}{n!}
$$

### Grenzwertdarstellung
$$
    \mathrm e^x = \lim_{n\rightarrow \infty} \left(1+\frac{x}{n}\right)^n
$$

## Trigonometrie
$$
\begin{aligned}
    \sinh[i\alpha] &= i\sin[\alpha] \\
    \cosh[i\alpha] &= \cos[\alpha]
\end{aligned}
$$

### Euler-Identität
$$
    \mathrm e^{i\varphi} = \cos(\varphi) + i\sin(\varphi) \\
    \Rightarrow \mathrm e^{i\pi} = 1
$$

# Postulate

## 1. Postulat: Der Hilbertraum
Der Zustandsraum der Quantenmechanik ist der **Hilbertraum** $\mathcal{H}_S$ des Systems, ein unitärer Vektorraum. Dies bedeutet, es gibt ein hermitesches Skalarprodukt.

Ein quantenmechanischer Zustand ist ein Vektor $\varphi\in\mathcal {H}_S$. Dieser Vektor hat die Norm $1$: $||\varphi||=1$

### Eigenschaften des hermiteschen Skalarprodukts
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

### Winkel zwischen Zuständen
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

## Superposition
Superposition ist ein universell gültiges Prinzip, das besagt, dass sich ein Quantenteilchen zugleich in mehreren Zuständen befinden kann.

Ein berühmtes Beispiel ist das Gedankenexperiment von Schrödingers Katze. Heute verstehen wir, dass Superposition auch hier gilt, aber trotzdem in diesem Fall praktisch nicht beobachtbar ist. Dies ist ein Problem der Dekohärenz.

#### Teilchen im Doppelmuldenpotential
Sei ein Teilchen in einem _Doppelmuldenpotential_ im Grundzustand. Das Potential habe zwei Minima bei $x_1$ und $x_2$, beide auf exakt gleicher Höhe $E(x_1) = E(x_2)$. Somit ist die Wahrscheinlichkeit, dass das Teilchen sich an der Stelle $x_1$ befindet, ebenso groß wie die Wahrscheinlichkeit für die Position $x_2$.

Klassisch würden wir erwarten, dass das Teilchen sich im Grundzustand _entweder_ an $x_1$ _oder_ an $x_2$ befindet.

Quantenmechanisch sagen wir dagegen, das Teilchen befindet sich in _Superposition_, es befindet sich _zugleich_ an beiden Orten!

Ein anderes Beispiel ist der Spin: Beispielsweise kann ein Silberatom gleichzeitig in Zuständen _up_ und _down_ (relativ zu einer z-Achse) sein.

#### Mathematische Darstellung
Bezeichne $\mathcal H_{DMP}$ den Hilbertraum des Doppelmuldenpotentials. Dann gibt es zwei Zustände
$\varphi_1\in\mathcal H_{DMP}$ und $\varphi_2\in\mathcal H_{DMP}$. Die Superposition wird dann als $\mathcal H_{DMP} \ni \Psi = \varphi_1 + \varphi_2$ geschrieben.

## 2. Postulat: Das Messpostulat
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

### 1. Messung von Zuständen
Die Messwerte $a_i$, die die Zustände $\varphi_i\in\mathcal H$ im Hilbertraum messen, sind reellwertig $a_i\in \mathbb R^n$.

Die Zustände werden durch hermitesche Operatoren beschrieben, die in der Spektraldarstellung durch die Eigenwerte $\{a_i\}$ und Eigenzustände $\{\ket{\varphi_i}\}$ dargestellt werden können.

### 2. Bornsche Regel
Sei das System in einem Zustand $\Psi\in\mathcal H$. Dann ist Messung $M_\varphi$ mit der Wahrscheinlichkeit $p=|\braket{\varphi|\Psi}|^2$ positiv.
In der kontinuierlichen Darstellung kann man auch $p=|\Psi(x)|^2$ schreiben.

### 3. ideale Messung
Eine Messung nennt man ideal, wenn sich das System nach der Messung $M_\Psi$ im Zustand $\Psi$ befindet. Dann spricht man von einem _Kollaps der Wellenfunktion_. Dies ermöglicht eine Präperation des Systems mit dem Zustand $\Psi$.

## Indeterminismus
Es gibt nur zwei Fälle in denen man das Ergebnis vorhersagen kann. Dazu muss ein Zustand $\psi$ gemessen worden sein, nun wird der der Zustand $\varphi$ gemessen. Diese zweite Messung kann man genau dann vorhersagen, wenn $\varphi \bot \psi$ oder $\varphi \parallel \psi$ gelten, ansonsten kann man das Ergebnis nicht vorhersagen.

## 3. Postulat: Dynamik
Die zeitliche Entwicklung eines Zustands $\Psi(t)$ eines abgeschlossenen, unbeobachteten Systems genügt der Schrödingergleichung mit dem Hermiteschen Operator $H$, dem sogenannten Hamiltonoperator des Systems.
$$
    \dot{\Psi}(t) = -\frac{i}{\hbar} H\Psi(t)\ ,
$$

# Zweizustandssysteme

## Bohr-Sommerfeldsches Atommodell
Das Bohr-Sommerfeldsche Atommodell ist eine Erweiterung des Bohrschen Atommodells, das klassische Mechanik annimmt, um die Bewegung der Elektronen um den Atomkern zu beschreiben. Es wird um Quantisierungsbedingungen ergänzt.

Durch seine Rotation um den Atomkern hat ein Elektron einen Drehimpuls $\vec{L}$. Dieser Drehimpuls ist durch die Quantenzahl $l=1,2,3,\dots$ quantisiert, es gilt $|\vec{L}| = l\hbar$.

Die Drehimpulskomponente in Richtung der $z$-Achse $L_z=m\hbar$ ist nun durch eine magnetische Quantenzahl $m=-l,-l+1,\dots,l$ zu beschreiben.

Da eine bewegte Ladung ein elektromagnetisches Feld beschreibt, kann man die Quantenzahlen auch nutzen, um ein sogenanntes Magneton $\vec{\mu}$ zu beschreiben. Es gilt $|\vec{\mu}| = \mu_0 l$ sowie $\mu_z =  \mu_0m$. $\mu_0$ ist das Bohrsche Magneton.

### Zeemann-Effekt
Durch $L_z$ werden die Energieniveaus der Elektronen verschoben. Diese Verschiebung führt zu einer Verschiebung der Spektrallinien.

Der Zeemann-Effekt wird auch Feinaufspaltung genannt.

## Das Stern-Gerlach-Experiment
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

### Observable
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

## Schrödingergleichung
Die zeitliche Entwicklung eines Zustands $\Psi(t)$ eines abgeschlossenen, unbeobachteten Systems genügt der Schrödingergleichung mit dem Hermiteschen Operator $H$, dem sogenannten Hamiltonoperator des Systems. Der Faktor $\hbar^{-1}$ sorgt dafür, dass die Einheit der Eigenwerte eine Energie ist.
$$
    \dot{\Psi}(t) = -\frac{i}{\hbar} H\Psi(t)\ ,
$$
Die Schrödingergleichung beschreibt eine _lineare_ Dynamik. Nicht-lineare Dynamik verstößt gegen die Spezielle Relativitätstheorie.

Mit dem Kommutator lässt folgt für eine Observable $A$:

$$
    \frac{\mathrm d}{\mathrm d t} \braket{A}_{\Psi(t)} =
        \left<\frac{i}{\hbar} [H, A]\right>_{\Psi(t)}
$$
### Schrödingergleichung eines Punktteilchens
siehe unten: _Quantenmechanik eines Punktteilchens_ -> _Schrödingergleichung eines Punktteilchens_.

### Hamiltonfunktion
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

### Poisson-Klammer
$$
    \{A, B\} = \sum_i \frac{\partial A}{\partial p_i}\frac{\partial B}{\partial q_i}
        - \frac{\partial A}{\partial q_i}\frac{\partial B}{\partial p_i}
$$

Die quantenmechanische Entsprechung der Poisson-Klammer ist der Kommutator.

### Herleitung der Schrödingergleichung
In der Quantenmechanik gilt eine ähnliche Zustandsgleichung: $\dot{\Psi}(t) \overset{!}{=} F\Psi(t)$, wobei $F$ ein linearer Operator sein muss. Aus der Normierung der Zustände $|\Psi|^2=1$ folgt, dass $\frac{\mathrm d}{\mathrm d t}|\Psi|^2=0$. Rechnung führt zu der Identität $\frac{\mathrm d}{\mathrm d t}|\Psi|^2 = \braket{\Psi|(F^\dagger+F)\Psi}$, woraus folgt dass $F^\dagger+F=0$ gelten muss.

Die übliche Wahl fällt auf $F=-\frac{i}{\hbar} H$, wobei $H$ der Hamiltonoperator ist. Daraus folgt
$$
    \dot{\Psi}(t) = -\frac{i}{\hbar} H\Psi(t)\ ,
$$
sowie $H^\dagger=H$. $H$ ist also ein Hermitescher Oparator.

## Hamiltonoperator
* Der Hamiltonoperator $H$ ist ein Hermitescher Operator. Er wird in der Schrödingergleichung verwendet.
* Er entspricht der Hamiltonfunktion in der Klassischen Mechanik.
* Die zugehörige Observable ist die Energie des Systems
* Spektraldarstellung: $H = \sum_{i=0}^N E_i \ket{\varphi_i}\bra{\varphi_i}$
    * $E_i$ sind die Eigenenergien bzw. Energieniveaus
    * $\varphi_i$ sind die Eigenenergiezustände bzw Eigenzustände

Der Kommutator $[H, H]$ ist immer $0$, daher ist die Energie immer eine Erhaltungsgröße.

Mithilfe des Zeitentwicklungsoperators $U(t)$ kann $H$ folgendermassen dargestellt werden:
$$
    H = \left.i\hbar\frac{\mathrm d}{\mathrm dt}U(t)\right|_{t=0}
$$
Dies ist analog zu der Darstellung des Impulsoperators mithilfe des Translationsoperators.

### Hamiltonoperator eines freien Punktteilchens
siehe unten: _Quantenmechanik eines Punktteilchens_ -> _Hamiltonoperator eines Punktteilchens_.

#### Energie-Impuls-Relation
$$
    \braket{H}_\Psi = \frac{1}{2m}\braket{p}_\Psi
$$

## Zeitentwicklungsoperator
Da die Schrödingergleichung $\dot{\Psi}(t) = -\frac{i}{\hbar} H\Psi(t)$ durch die allgemeine Lösung $\Psi(t) = \exp[-\frac{i}{\hbar}Ht] \Psi(0)$ gelöst wird, ist es sinnvoll, dies durch einen Operator auszudrücken. Der Zeitentwicklungsoperator $U(t)$ ist wie folgt definiert:
$$
    U(t) = \exp\left[-\frac{i}{\hbar}Ht\right]
$$
$U(t)$ ist die Lösung der Schrödingergleichung zu dem Anfangswert $U(0)$. Da $U(t_1)\cdot U(t_2) = U(t_1+t_2)$ gilt, folgt $U(t)U(-t)=0$, wodurch folgt dass $U$ _unitär_ ist: $U^\dagger=U^{-1}$.

* $\Psi(t) = U(t)\Psi(0)$
* $U(0) = \mathds 1$
* $\dot{U}(t) = -\frac{i}{\hbar} H\cdot U(t)$
* Der Kommutator verschwindet: $[U(t), H] = 0$
* $\braket{A}_{\ket{\Psi(t)}}=\braket{\Psi(0)|U^\dagger(t)AU(t)|\Psi(0)}$
* $\dot{A}(t) = \frac{\mathrm d}{\mathrm dt}A(t) = \frac{i}{\hbar}[H, A(t)]$

Der Zeitentwicklungsoperator ist analog zum Translationsoperator.

### Spektraldarstellung / Energiedarstellung
Aus $H = \sum_{i=0}^N E_i \ket{\varphi_i}\bra{\varphi_i}$ folgt $U(t) = \sum_{i=0}^N \exp\left[-\frac{i}{\hbar} E_n t \right]\ket{\varphi_i}\bra{\varphi_i}$, wodurch $U(t)$ dieselben Eigenzustände wie $H$ hat.

### Operatoren
Für zeitabhängige Operatoren $\hat{A}(t)$ mit $\hat{A}(0)=A$ gilt:
$$
    \hat{A}(t) = U^\dagger(t)AU(t) \\
    \braket{A}_{\Psi(t)} = \braket{\hat{A}(t)}_{\Psi(0)}
$$

## Erhaltungsgrößen
Die Observable $A$ ist genau dann eine Erhaltungsgröße, wenn $\braket{A}_{\Psi(t)}$ für alle Lösungen der Schrödingergleichung $\dot{\Psi}(t) = -\frac{i}{\hbar} H\Psi(t)$ konstant ist.

Daraus folgt, dass $A$ genau dann eine Erhaltungsgröße ist, wenn für die Operatoren $HA=AH$ gilt, bzw. der Kommutator $[H, A]=0$ ist. Insbesondere gilt:
$$
    \frac{\mathrm d}{\mathrm d t} \braket{A}_{\Psi(t)} =
        \left<\frac{i}{\hbar} [H, A]\right>_{\Psi(t)}
$$

Die Energie immer eine Erhaltungsgröße, da $[H, H]=0$.

### Stabilität von Eigenzuständen
Eigenzustände sind immer stabil, der Erwartungswert aller Observablen bezüglich eines Eigenzustandes ist immer erhalten. Daraus folgt, dass dynamische Zustände durch die Superposition von Energieeigenzuständen entstehen.

Beweis: Die zeitliche Veränderung eines Eigenzustands wird durch den Zeitentwicklungsoperator $U(t)$ beschrieben. Für Eigenzustände $\ket{\varphi_i}$ gilt demnach $U(t)\ket{\varphi_i} = \exp[-i\omega_l t]\ket{\varphi_i}$. Der Erwartungswert einer Observable $A$ im Eigenzustand ist $\braket{A}_{\ket{\varphi_i}}$ wird unter Zeitentwicklung $\braket{A}_{U(t)\ket{\varphi_i}}=\braket{U(t)\varphi_i|A|U(t)\varphi_i} = \braket{\varphi_i|A|\varphi_i}$. Die Phasenverschiebung eines einzelnen Eigenzustands ist daher nicht beobachtbar.

### Quantenschwebung
Der Erwartungswert einer beliebigen Observablen in der Superposition $\ket{\varphi_m+\varphi_n}$ der Energieeigenzustände $\ket{m}$ und $\ket{n}$ oszilliert mit der Frequenz $\omega$.
$$
    \omega = \left|\frac{E_n-E_m}{\hbar}\right|
$$

## Lamorpräzession

### Klassische Präzession
Ein symmetrischer Kreisel mit einer Winkelgeschwindigkeit $\vec{\omega} = \omega\hat{n}$ und der Länge $l$ hat ein Drehmoment von $\vec{M} = -ml\vec{g}\times \vec{n}$, wobei das Drehmoment die Änderung des Drehimpulses $\vec{L}$ darstellt. Es gelten $\vec{M}=\dot{\vec{L}}$ und $.

Ein Spin im Magnetfeld $\vec{B}$ hat mit einem magnetischen Moment $\vec{\mu}$ ein Drehmoment von $\vec{M} = \vec{B} \times \vec{\mu}$, da $\vec{\mu}\parallel\vec{L}$.

### Lamorpräzession: Präzession des magnetischem Moments
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
* $p=\hbar k$

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
\begin{aligned}
    \mathcal H \ni \ket{\Psi} &= \mathds 1\ket{\Psi}
        &&\Rightarrow&&
        \ket{\Psi}~= \sum_i \ket{\varphi_i}\braket{\varphi_i|\Psi} \\
    \Psi_i &= \braket{\varphi_i|\Psi}
        &&\Rightarrow&&
        \ket{\Psi}~= \sum_i \Psi_i \ket{\varphi_i} \\
    \Psi(x) &= \braket{\varphi_x|\Psi}
        &&\Rightarrow&&
        \ket{\Psi}~= \int_{\mathbb R} \Psi(x) \ket{\varphi_x} \mathbb dx
\end{aligned}
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

# Modellsysteme
## Gebundene Eigenenergiezustände
Eigenzustände sind gebunden, wenn die Eigenenergiezustände normierbar sind.

## Potentialkasten
Sei das Potential $U$ überall $V$ außer in dem Bereich von $0$ bis $a$.
$$
    U(x) =
        \begin{cases}
            V & x \notin [0, a] \\
            0 & x \in [0, a]
        \end{cases}
$$

Dann gilt die stationäre Schrödingergleichung:
$$
\begin{aligned}
    E\Psi_E(x) &=
        \left(
            -\frac{\hbar^2}{2m} \frac{\partial^2}{\partial x^2} + U(x)
        \right)\Psi_E(x) \\
    \Leftrightarrow \Psi_E^{\prime\prime}(x) &=
        \frac{2m}{\hbar}\left(
            U(x) - E
        \right)\Psi_E(x)
\end{aligned}
$$

In Bereichen, in denen $U(x)>E$, folgt $\Psi_E^{\prime\prime}(x) = c\cdot \Psi_E(x)$, wobei $c$ eine positive Konstante ist. In Bereichen, in denen $U(x)<E$, folgt $\Psi_E^{\prime\prime}(x)=-c\cdot \Psi_E(x)$. Daher ist $\Psi_E(x)$ in Bereichen mit $U(x)>E$ konvex und in Bereichen mit $U(x)<E$ konkav.

Falls $x\notin[0,a]$, dann gilt $\Psi_E^{\prime\prime}(x) = \chi^2\Psi_E(x)$, wobei $\chi^2=\frac{2m}{\hbar}\left(V - E \right)$ eine verkürzte Schreibweise darstellt.
Falls $x\in[0,a]$, dann gilt $\Psi_E^{\prime\prime}(x) = k^2 \Psi_E(x)$, da $E=\frac{\hbar^2k^2}{2m}$. Dann folgt $\Psi _ \pm(x) = \ket{\tilde{\varphi} _ {\pm\hbar k}}$

$$
    \Rightarrow \Psi_E(x) =
        \begin{cases}
            x<0: & \alpha \exp[\chi x] + \beta_2 \exp[-\chi x] \\
            x>a: & \alpha_2 \exp[\chi x] + \beta \exp[-\chi x] \\
            x\in[0,a]: & r\sin(kx) + s\cos(kx)
        \end{cases}
$$

Hierbei muss $\alpha_2=\beta_2=0$ gelten, da die entsprechenden Exponentialterme divergieren.

Zudem muss die Funktion auch an den Stellen $0$ und $a$ stetig sein. Daraus folgen 5 Bedingungen. Daraus erhalten wir die $5$ freien Parameter $\alpha, \beta, r, s$ und $E$.

$$
\begin{aligned}
    \Psi(0_-) &= \Psi(0_+) \\
    \Psi^\prime(0_-) &= \Psi^\prime(0_+) \\
    \Psi(a_-) &= \Psi(a_+) \\
    \Psi^\prime(a_-) &= \Psi^\prime(a_+) \\
    \text{Normierung: } 1 &= \int_{-\infty}^\infty |\Psi(x)|^2 \mathrm dx
\end{aligned}
$$

### Unendlicher Potentialkasten
Eine Vereinfachung ist, $V\rightarrow\infty$ zu schicken. Dann gilt auch $\chi^2\rightarrow\infty$ und damit gilt $\forall x\notin[0,a]: \Psi(x)=0$. Dadurch gibt es die Randbedingungen $\Psi(0)=\Psi(a)=0$, woraus $\Psi(x) = r\sin(kx)$ für $x\in[0,a]$ folgt. Daher muss $ka=n\pi$ (mit $n\in\mathbb N$) sein.

$$
\begin{aligned}
    \Psi_n(x) &= \sqrt(\frac{2}{a}) \sin(k_nx) \\
    k_n &= \frac{\pi}{a}\cdot n \text{ mit } n\in\mathbb N \\
    E_n &= \frac{(\hbar k_n)^2}{2m} = \frac{\hbar^2 \pi^2}{2ma^2} \cdot n^2
\end{aligned}
$$

Die Schwingung $\Psi_n$ besitzt $n-1$ Nullstellen bzw. Knoten.

## Doppelkastenpotential
Sei das Potential $U(x)$ ein Potentialkasten im Bereich $[-a, a]$, der bei $x=0$ eine Potentialbarriere in der Höhe von $u$ hat. Zur Vereinfachung nehmen wir an, dass das Potential außerhalb des Kastens unendlich hoch ist und $u$ groß ist. Dieses Potential ist ein einfaches Modell für Teilchen im Doppelmuldenpotential.

$$
    U(x) =
        \begin{cases}
            u\delta(x) & |x| < a \\
            \infty & |x| > a
        \end{cases}
$$

Nun sei $\Psi$ ein Eigenenergiezustand zur Energie $E$. Dann wird die stationäre Schrödingergleichung durch folgende Differentialgleichung für $x\in(-a, a)$ gelöst. Hierbei gelten die Randbedingungen $\Psi_E(\pm a)=0$.

$$
    \Psi_E^{\prime\prime}(x) = \frac{2m}{\hbar}(u\delta(x) - E)\Psi_E(x)
$$

### symmetrische Zustände
Für $x\neq0$ erhält man wie beim Potentialkasten $\Psi_E=r\sin(kx)+s\cos(kx)$ mit $k=\frac{2mE}{\hbar^2}$. Das Verhalten bei $x=0$ ist dagegen anders zu bestimmen.

Da die $\delta$-Funktion keinen exakten Wert angibt, sondern nur über eine Integration sinnvoll interpretiert werden kann, muss die Differentialgleichung integriert werden. Sei $\varepsilon\rightarrow 0$ klein. Zudem sei $\Psi_E(x)$ innerhalb des Potentialkastens symmetrisch.

$$
\begin{aligned}
    \int_{-\varepsilon}^\varepsilon \Psi_E^{\prime\prime}(x) \mathrm dx
        &=
            \frac{2mu}{\hbar^2} \int_{-\varepsilon}^\varepsilon \delta(x) \Psi_E(x) \mathrm dx
            &-& k^2\int_{-\varepsilon}^\varepsilon \Psi_E(x)\mathrm dx \\
    \Leftrightarrow \Psi_E^\prime(\varepsilon) - \Psi_E^\prime(-\varepsilon)
        &=
            \frac{2mu}{\hbar^2} \Psi_E(0)
            &-& 0 \\
    \Rightarrow \Delta \Psi_E^\prime(x) &= \frac{2mu}{\hbar^2} \Psi_E(0)
\end{aligned}
$$

Als Ansatz kann man $\Psi_E(x)=c\sin(k|x|+b)$ wählen. Dann erhält man aus der obigen Gleichung $\tan(kb)=\frac{k\hbar^2}{mu}$. Da $u$ groß ist, ist der Tangens klein und es gilt $\tan(kb)\approx kb$. Damit erhält man die Relation $b=\frac{\hbar^2}{mu}$.

Die Randbedingungen $\Psi_E(\pm a)=0$ liefern uns die Gleichung $\sin(k(a+b))=0$, woraus $k(a+b)=\pi n$ (mit $n\in\mathbb N$) gefordert wird. Daraus erhalten wir die Energieeigenfunktionen.

$$
\begin{aligned}
    \Psi_n(x) &= c_n \sin(k_n(|x|+b)) \\
    k_n &= \frac{\pi}{a+b}\cdot n \\
    E_n &= \frac{\hbar^2k^2}{2m} = \frac{\hbar^2\pi^2}{2m}\frac{k^2}{(a+b)^2}
\end{aligned}
$$

### antisymmerische Zustände
Mit einer ähnlichen Rechnung wie bei den symmetrischen Zuständen erhält man für ungerade Wellenzahlen $k$ folgendes.

$$
\begin{aligned}
    \tilde{\Psi}_n(x) &= \frac{1}{\sqrt{a}} \sin(\tilde{k}x) \\
    \tilde{k}_n &= \frac{\pi}{a}\cdot n \\
    \tilde{E}_n &= \frac{\hbar^2\tilde{k}^2}{2m} = \frac{\hbar^2\pi^2}{2m}\frac{n^2}{a^2}
\end{aligned}
$$

Hier gibt es neben den Randbedingungen $\tilde{\Psi}_ n(\pm a)=0$ und der Lösung der Schrödingergleichung bei $x=0$ noch eine weitere Bedingung, die eingehalten werden muss, nämlich die _Anschlussbedingung_. Diese fordert die Stetigkeit der Wellenfunktion, also dass für $\varepsilon\rightarrow0$ der gleiche Wert $\tilde{\Psi}_ n(-\varepsilon)=\tilde{\Psi}_ n(\varepsilon)$ gilt. Dies ist erfüllt, da $\tilde{\Psi}_ n(0)=0$.

### Niveauaufspaltung
Die symmetrischen Eigenenergien $E_n$ sind kleiner als die antisymmetrischen Eigenenergien $\tilde{E}_n$, da $\Delta E_n=\tilde{E}_ n - E_n > 0$ positiv ist. Daher ist $\Psi_n$ jeweils der $n$-te Grundzustand, $\tilde{\Psi}_n$ ist der $n$-te angeregte Zustand. Allerdings ist $\Delta E_n=\tilde{E} _ n\frac{2b}{a} \ll \tilde{E}_ n$ bzw. $\frac{\Delta E_n-E_n}{E_n}=\frac{2b}{a}\ll 1$ sehr klein.

Die Oszillation zwischen den Kästen wird durch die Frequenz $\omega_n = \frac{\Delta E_n}{\hbar}$ beschrieben, die von der Niveauaufspaltung abhängt. Die Oszillation in den jeweiligen Kästen wird durch die Frequenz $\Omega_n=\frac{\tilde{E}_n}{\hbar}$ dargestellt, die von der Eigenenergie im angeregten Zustand abhängt und $\omega_n \ll \Omega_n$.

Dies kommt daher, dass der Hamiltonoperator in Spektraldarstellung durch $H=\mathds 1 \frac{E_n+\tilde{E} _ n}{2} + \sigma_z\frac{E_n-\tilde{E} _ n}{2}$ darstellen kann. Der erste Term ist konstant, der zweite erzeugt die Dynamik. Durch diese Seperation kann der Zeitentwicklungsoperator $U(t)$ in eine global wirkende Phase und einen Schwingungsterm mit $\sigma_z$ seperiert werden, also $U(t)=\exp[i\frac{i}{hbar}\Omega t]\cdot\exp[-\frac{i}{hbar}\sigma_z\omega t]$. Nur der Term $\exp[-\frac{i}{hbar}\sigma_\omega t]$ erzeugt die Dynamik.

### Superposition
Als Basis wählt man den $n$-ten Grundzustand und den $n$-ten angeregten Zustand. $\Psi_+$ beschreibt hier ein Teilchen im rechten Kasten, $\Psi_-$ ein Teilchen im linken Kasten. So kann man aus beiden Zuständen ein Teilchen beschreiben, dass sich nur auf einer Seite im Kasten befindet.

$$
    \ket{\Psi_\pm} = \frac{1}{\sqrt{2}}(\ket{\Psi_n} \pm \ket{\tilde{\Psi}_n})
$$

### Dipolmoment
Beispielsweise bei Ammioniak befinden sich Bindungselektronen in einem Doppelmuldenpotential. Durch den Wechsel von der einen in die andere Mulde induzieren sie ein magnetisches Dipolmoment $\vec{\mu}$.

$$
    \mu_x = \mu_0 \left(
            \ket{\Psi_+}\bra{\Psi_+}
            - \ket{\Psi_-}\bra{\Psi_-}
        \right)
$$

## Reflektion und Transmission an einer Potentialbarriere
### Tunneleffekt
Wenn eine Potentialbarriere ein höher ist als die Energie, die ein Teilchen hat, würde man klassisch $100$% Reflektion erwarten. In der Quantenmechanik gibt es allerdings Fälle von Transmission. Man spricht davon, dass das Teilchen durch die Potentialbarriere tunnelt.

Dies ist beispielsweise für den $\alpha$-Zerfall relevant. Nur durch den Tunneleffekt ist es möglich, dass die $\alpha$-Teilchen die Bindungsenergie überwinden können.

### Potentialbarriere
Sei eine Potentialbarriere $U(x)>0$ der Dicke $a$. im Intervall $(0, a)$ gegeben. Sei $\ket{\Psi}_{t_0}$ die einlaufende Welle zum Zeitpunkt $t_0$ Position $\braket{x}_{t_0}=-l$. Der initale Abstand zur Barriere soll sehr viel größer sein als die Dicke, also $l\gg a$, die initiale Breite $b$ der Welle mit $a\ll b\ll l$ sei sehr viel kleiner als der Abstand zur Barriere, aber deutlich größer als die Dicke der Barriere. Es gilt also $\braket{\Delta x}_{t_0}=b$. Die Welle habe einen Impuls $p=\hbar k =\braket{p}_{t_0}$ und damit eine Energie $E=\braket{H}_{t_0}=\frac{p^2}{2m}$.

Die Wellenfunktion der einlaufenden Welle lautet zu Beginn folgendermaßen:

$$
    \Psi(x, t_0)
        = \frac{1}{ \sqrt[4]{2\pi b^2} }
            \exp\left[
                    -\frac{(x+l)^2}{4b^2}
                \right]
            \exp[ikx]
$$

### Streuansatz
Zunächst soll das stationäre Problem betrachtet werden. Um die Wellenfunktion zu beschreiben, wird ein Streuansatz benutzt. Hierbei sind der Reflektionskoeffizient $r$ und der Transmissionskoeffizient $t$ wichtig. Im Bereich vor der Barriere gibt es eine einlaufende und eine reflektierte Welle, hinter der Barriere eine transmittierte Welle. $\Psi_0(x)$ ist die Lösung der stationären Schrödingergleichung für das gegebene Potential.

$$
    \Psi(x) =
        \begin{cases}
            1\exp[ikx] + r\exp[-ikx] & : x<0 \\
            \Psi_0(x) & : x \in [0, a] \\
            t \exp[ikx] & : x>a
        \end{cases}
$$

$\Psi_0(x)$ kann wie beim Potentialkasten als $\Psi_0(x)=s\sin(kx) + u\cos(kx)$ dargestellt werden.

### Anschlussbedingungen
Es ist gefordert, dass $\Psi(x)$ und $\Psi^\prime(x)$ stetig sind. Dies muss an den Stellen $x=0$ und $x=a$ sichergestellt werden, dadurch ergeben sich $4$ Bedingungen, die erfüllt werden müssen. Dadurch werden die freien Parameter $r, t, s, u$ bestimmt.

### Reflektions- und Transmissionswahrscheinlichkeit
Insbesondere ergibt sich, dass die Reflektionswahrscheinlichkeit $R$ und die Transmissionswahrscheinlichkeit $T$ von den Parametern $r, t$ abhängen:

$$
\begin{aligned}
    R &= |r|^2 \\
    T &= |t|^2
\end{aligned}
$$

### Wahrscheinlichkeitsstromdichte
Initial ist die gesamte Aufenthaltswahrscheinlichkeit der Welle im Bereich um $-l$, später ist die Aufenthaltswahrscheinlichkeit deutlich verteilt. Man es daher von "fließenden" Wahrscheinlichkeiten sprechen, ähnlich wie von fließenden Ladungen.

Die Wahrscheinlichkeitsdichte $|\Psi(x, t)|^2$ ist normiert ($\int_{\mathbb{R}} |\Psi(x, t)|^2=1$).

Die zeitliche Änderung der Wahrscheinlichkeitsdichte ist $\frac{\mathrm d}{\mathrm dt}|\Psi(x, t)|^2=\frac{\mathrm d}{\mathrm dt}(\Psi^*\Psi)^2$. Die Wahrscheinlichkeitsstromdichte $j(x, t)$ wird aus diesem Ausdruck hergeleitet, sodass folgende Gleichung erfüllt ist:

$$
    \frac{\mathrm d}{\mathrm dt}\left|\Psi(x, t)\right|^2 + \frac{\partial}{\partial x} j(x, t) \overset{!}{=} 0
$$

Daraus folgt die Definition der Wahrscheinlichkeitsstromdichte als Imaginärteil von $\Psi^* \partial_ x\Psi$.

$$
    j(x, t) = \frac{\hbar}{m}\Im
        {\Large(}
            \Psi^*(x, t) \frac{\partial}{\partial x} \Psi(x, t)
        {\Large)}
$$

### Kontinuitätsgleichung
Die Kontinuitätsgleichung für die Erhaltungsgröße der Aufenthaltswahrscheinlichkeit sieht folgendermaßen aus. Hierbei ist $\rho(x, t)=|\Psi(x, t)|^2$ die Wahrscheinlichkeitsdichte. Kontinuitätsgleichungen kann ganz allgemein für Erhaltungsgrößen definieren, wenn diese sich im Raum verteilen können.

$$
    \frac{\mathrm d}{\mathrm dt}\rho(x, t) + \frac{\partial}{\partial x} j(x, t) \overset{!}{=} 0
$$

### Kastenförmige Potentialbarriere
Für eine Kastenförmige Potentialbarriere erhält man folgende Tunnelwahrscheinlichkeit:

$$
    T^{-1} = 1 + \left(1 + \frac{1}{4}
        \left( \frac{q}{k} - \frac{k}{q}\right)^2\right) \sinh^2[qa]
$$

Im Grenzfall $qd\gg 1$ folgt $\sinh[qa]\approx \frac{1}{2} exp[qd]$. Damit folgt $T\approx \frac{1}{4(\dots)} \exp[-2qd]\approx  \exp[-2qd]$. Mit $\lambda=\frac{2}{q}=\hbar(\sqrt{8m(V-E)})^{-1}$ folgt $T\approx \exp[-\frac{d}{\lambda}]$.

#### Lösung der Anschlussbedingungen
$$
    \Psi(x) =
        \begin{cases}
            1\exp[ikx] + r\exp[-ikx] & : x<0 \\
            s\exp[qx] + u\exp[-qx] & : x \in [0, d] \\
            t \exp[ikx] & : x>a
        \end{cases}
$$

Die Anschlussbedingungen liefern das folgende lineare Gleichungssystem:

$$
\begin{aligned}
    1+r &= s+u \\
    ik-ikr &= -qs + qu \\
    s\exp[-qd] + u\exp[qd] &= t \\
    -qs\exp[-qd] + qu\exp[-qd] &= ikt
\end{aligned}
$$

Dies kann auch in Matrixform dargestellt werden.

$$
\begin{aligned}
    A &= \begin{pmatrix}1 & 1 \\ ik & - ik\end{pmatrix} \\
    B &= \begin{pmatrix}1 & 1 \\ -q & q\end{pmatrix} \\
    C &= \begin{pmatrix}\exp[-qd] & \exp[qd] \\ -q\exp[-qd] & \exp[qd]\end{pmatrix} \\
    v &= \begin{pmatrix}1 \\ ik\end{pmatrix} \\
    \Rightarrow \frac{1}{t}\cdot \begin{pmatrix}1 \\ r\end{pmatrix}
        &= A^{-1} B C^{-1} v
\end{aligned}
$$

Computerprogramme können folgende Lösung liefern.

$$
    \frac{1}{t} = \cosh[qd] + \frac{i}{2} \left(\frac{q}{\hbar} - \frac{k}{q}\right)\sinh[qd] \\
$$

Aus $T=|t|^2$ folgt der oben genannte Zusammenhang.

### Gamow-Näherung
Nähere eine beliebige Potentialbarriere durch eine Kombination von mehreren rechteckigen Potentialbarrieren an. Barrieren, die geringer als die Energie der einlaufenden Welle sind, können vernachlässigt werden. Die WKB-Methode ist genauer, wird aber hier nicht besprochen.

Sei eine Potentialbarriere im Bereich $[a,b]$ durch $n$ kastenförmige Potentialbarrieren der Breite $d$ darstellbar. Die Höhe der $i$-ten Potentialbarriere sein $V_j$ im Bereich $q_j=\sqrt{2m(U(x_j)-E)}\hbar^{-1}$. Dann ist $T_j=\exp[-2q_jd]$.

Die Wahrscheinlichkeit, dass alle Barrieren durchtunnelt werden, ist $T=\prod_j T_j = \exp\left[\sum_{j=1}{d} 2q_jd\right]$.

Wähle nun $d$ klein, ohne dass $qd\gg 1$ verletzt wird. Dies geht, wenn $U$ hinreichend glatt ist. Damit kann man $T$ im Kontinuumsübergang durch ein Integral bestimmen.

$$
    T \approx \exp\left[\frac{1}{\hbar}\int_a^b \sqrt{8m(U(x)-E)} \mathrm dx \right]
$$

### Streuung an einem Potentialtopf
Sei $U(x)=-V$ im Interval $[0,d]$ und $U(x)=0$ außerhalb dieses Intervals.

$$
    \Psi(x) =
        \begin{cases}
            \exp[ikx] + r\exp[-ikx] & : x<0 \\
            s\exp[i\kappa x] + u\exp[-i\kappa x] & : x \in [0, a] \\
            t \exp[ikx] & : x>a
        \end{cases}
$$

Das Ergebnis der Streuung an einer kastenförmigen Potentialbarriere kann man verwenden, wenn man $q$ durch $i\kappa$ ersetzt. Daraus folgt:

$$
    \frac{1}{t} = \cosh[i\kappa d] + \frac{i}{2} \left(\frac{i\kappa}{\hbar} + \frac{ik}{\kappa}\right)\sinh[i\kappa d] \\
$$
Es gilt $\cosh[i\alpha]=\cos[\alpha]$ und $\sinh[i\alpha]=i\sin[\alpha]$. Daraus folgt die Tunnelwahrscheinlichkeit.

$$
\begin{aligned}
    T^{-1} &= 1 + \left(1 + \frac{1}{4}
        \left( \frac{\kappa}{k} + \frac{k}{\kappa}\right)^2\right) \sinh^2[qa] \\
        &= 1 + \left(\frac{\kappa^2-k^2}{2k\kappa}\right)^2 \sin^2[\kappa d]
\end{aligned}
$$

Für $\kappa d = n\pi$ folgt $T=1$. Für $\kappa d=\frac{\pi}{2}(2n+1)$ ist $T$ minimal.

## Harmonischer Oszillator
Sei ein Teilchen in einem Potential $U(x) = \frac{1}{2}kx^2$, wobei $k=m\omega^2$ eine Art Federkonstante mit der Masse $m$ und der Frequenz $\omega$ beschreibt. Auch viele reelle Potentiale kann man als harmonisch annähern, wenn die Auslenkung bzw die Energie gering sind. Deswegen ist der harmonische Oszillator in vielen Anwendungsgebieten sehr wichtig.

### Plank'sche Strahlungsformel
Die Energie $E_k$ ist gequantelt in Vielfachen von $\hbar\omega_k$, wobei $\omega_k=c|\vec{k}|$ die Frequenz zum Wellenvektor $\vec{k}$ mit der Lichtgeschwindigkeit $c$. Mit $n\in\mathbb N_0$ gilt $E_k = n\cdot \hbar\omega_k$. Dadurch kann der Erwartungswert der Energie bei der Temperatur $T$ bestimmt werden. Hierbei ist $\braket{n}$ der Erwartungswert der Phononenzahl im thermischen Gleichgewicht.

$$
    \braket{E_k}_T = \hbar\omega_k\braket{n}_T = \frac{\hbar\omega_k}{
        \exp\left[\frac{\hbar\omega_k}{k_bT}\right]  - 1
        }
$$

Damit können die Schwingungsmoden abgezählt werden. Damit kann die Intensität $I$ der Strahlung beschrieben werden, wobei $\gamma$ eine beliebige Konstante ist. Dies ist die Plank'sche Strahlungsformel.

$$
    I(\omega) = \gamma \frac{\hbar\omega^3}{\exp\left[\frac{\hbar\omega_k}{k_bT}\right]  - 1}
$$

### Eigenenergien
Seien $E_n$ Eigenenergien zu den Eigenzuständen $\ket{\varphi_n}=\ket{n}$, die mit den Wellenfunktionen $\varphi_n(x)$ beschrieben wird. Hierzu wird $l$ als charakteristische Länge bezeichnet.

$$
\begin{aligned}
    E_n &= \hbar\omega\left(n+\frac{1}{2}\right) \\
    l &= \sqrt{\frac{\hbar}{m\omega}} \\
    \varphi_0(x) &= \frac{1}{\sqrt[4]{\pi l^2}} \exp\left[-\frac{x^2}{2l^2}\right] \\
    \Rightarrow \varphi_{n+1}
        &= \frac{1}{\sqrt{n+1}} \left(
            \frac{x}{l} - l\frac{\partial}{\partial x}
        \right) \varphi_n(x) \\
    \Rightarrow \ket{n} &= \frac{1}{\sqrt{n!}}(a^\dagger)^n \ket{0}
\end{aligned}
$$

$\ket{0}$ hat eine gaußverteilte Wahrscheinlichkeitsdichte mit der Standardabweichung $l$.

#### Beweisidee: Analytische Methode
Gesucht werden normierbare Lösungen zu der stationären Schrödingergleichung. Hieraus folgt die Gleichung für die Eigenenergien $E_n$, $\varphi_n(x)$ sind Hermite-Polynome.

#### Beweis: Algebraische Methode
Die Leiteroperatoren erzeugen Eigenzustände, die um $1$ verschoben sind. Eigenwerte des Hamiltonoperators bzw. des Operators $N=a^\dagger a$ müssen nicht-negativ sein. Damit dies keinen Widerspruch erzeugt, müssen alle Eigenwerte natürliche Zahlen $\nu\in\mathbb N_0$ sein. Daraus folgt, dass $E_\nu=\hbar\omega\left(\nu+\frac{1}{2}\right)=E_n$ die Eigenwerte des Hamiltonoperators sein müssen.

Da $\ket{\nu}$ normierte Eigenzustände sind, muss auch $a^\dagger\ket{\nu}$ ein normierter Eigenzustand sein. Da $||a^\dagger\ket{\nu}||^2=\nu+1$, muss $\ket{\nu+1}=\frac{1}{\sqrt{\nu+1}}a^\dagger\ket{nu}$ ein normierter Eigenzustand zum Eigenwert $\nu+1$ sein. Analog folgt, dass $\ket{\nu-1}=\frac{1}{\sqrt{n}}a\ket{\nu}$ der Eigenzustand zum Eigenwert $\nu-1$ sein muss.

### Die Leiteroperatoren
Der Erzeugeroperator $a^\dagger$ und der Vernichteroperator $a$ können einen Eigenzustand eines harmonischen Oszillators um ein Energieniveau anheben bzw. senken. Der Kommutator ergibt den Einheitsoperator.

$$
\begin{aligned}
    a &= \sqrt{\frac{m\omega}{2\hbar}}
        \left(
            \hat{x} + \frac{i\hat{p}}{m\omega}
        \right) \\
    a^\dagger\ket{n} &= \sqrt{n+1}\ket{n+1} \\
    a\ket{n} &= \sqrt{n}\ket{n-1} \\
    \Rightarrow [a, a^\dagger] &= \mathds 1
\end{aligned}
$$

Sei $\ket{\nu}$ ein Eigenzustand des harmonischen Oszillators. Dann sind $a^\dagger\ket{\nu}$ ein Eigenzustand zum Eigenwert $\nu+1$ und $a\ket{\nu}$ ein Eigenzustand zum Eigenwert $\nu-1$. Deswegen nennt man diese beiden Operatoren auch Leiteroperatoren.

Die Eigenzustände der beiden Leiteroperatoren sind kohärente Zustände.

#### Darstellung des Ortsoperators und des Impulsoperators
Damit lassen sich auch Ortsoperator und Impulsoperator durch Erzeugeroperator und Vernichteroperator darstellen.

$$
\begin{aligned}
    \hat{x} &= \sqrt{\frac{\hbar}{2m\omega}} \left(a^\dagger + a\right) \\
    \hat{p} &= i \sqrt{\frac{m\omega k}{2}} \left(a^\dagger - a\right) \\
\end{aligned}
$$

##### Erwartungswerte
Die Erwartungswerte von $x$ und $p$ sind $0$. Dies bedeutet, dass das Teilchen in der Ruhelage am Wahrscheinlichsten ist, ebenso wie es am Wahrscheinlichsten ist, dass das Teilchen sich in Ruhe befindet. Dies bedeutet jedoch nicht, dass es sich in Ruhe _und_ in der Ruhelage gleichzeitig befindet.

$$
\begin{aligned}
    \braket{x}_{\ket{n}} &= 0\\
    \braket{p}_{\ket{n}} &= 0\\
\end{aligned}
$$

Die zweiten statistischem Momente $x^2$ und $p^2$ sind dagengegen abhängig von der charakteristischen Länge $l$. Dies bedeutet, dass die Standardabweichung von $x$ proportional zu $l$ ist, weshalb der Begriff der charakteristischen Länge sinnvoll ist. Die Standardabweichung von $p$ ist dagegen umgekehrt proportional zu $l$, daher ist sorgt eine kurze charakteristische Länge für hohe Impulsfluktuationen. Dies ist der Heisenberg'schen Unschärferelation ähnlich.

$$
\begin{aligned}
    \braket{x^2}_{\ket{n}} &= l^2\left(n+\frac{1}{2}\right)
        &&\Rightarrow&& \braket{x^2}_{\ket{0}} = \frac{l^2}{2} \\
    \braket{p^2}_{\ket{n}} &= \frac{\hbar^2}{l^2}\left(n+\frac{1}{2}\right)
        &&\Rightarrow&& \braket{p^2}_{\ket{n}} = \frac{\hbar^2}{2l^2}
\end{aligned}
$$

#### Darstellung des Hamiltonoperators
Setzt man diese Darstellungen in den Hamiltonoperator $H$ harmonischen Oszillators ein, erhält man eine Darstellung durch Erzeugeroperator und Vernichteroperator. Dadurch hat der Operator $a^\dagger a$ dasselbe Spektrum wie der Hamiltonoperator.

$$
    H= \hbar\omega\left(a^\dagger a + \frac{1}{2}\right)
$$

Wenn $\nu$ ein Eigenwert von $a^\dagger a$ ist, dann ist $E_\nu=\hbar\omega\left(\nu+\frac{1}{2}\right)$ ein Eigenwert zum Hamiltonoperator.

Daher gilt $a^\dagger a\ket{n}=n\ket{n}$, $a^\dagger a$ hat als dieselben Eigenzustände wie der Hamiltonoperator mit den Eigenwerten $n$. auch $aa^\dagger$ hat dieselben Eigenzustände. Da aus dem Kommutator $aa^\dagger = \mathds 1 + a^\dagger a$ folgt, gilt $aa^\dagger\ket{n} = (1+n)\ket{n}$, der Eigenwert ist also um $1$ erhöht.

#### Eigenschaften von $N=a^\dagger a$
$N$ ist hermitesch, also selbstadungiert, daher hat $N$ reelle Eigenwerte.

Weiterhin ist $N$ positiv-semidefinit. Ähnlich wie beim Skalarprodukt bedeutet dies, dass der Eigenwert von $N$ nicht-negativ ist. Ist der betreffende Eigenzustand $\ket{\nu}=0$, so ist der Eigenwert $\nu>0$. Falls der Eigenwert $\nu=0$ verschwindet, ist der Eigenzustand $\ket{\nu}=0$ ebenfalls verschwunden.

Zudem ist gelten die Kommutatoren $[N, a]=-a$ und $[N, a^\dagger]=a^\dagger$.

# Kohärente Zustände
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

# Störungstheorie
## Zeitunabhängige Störungstheorie
Im Allgemeinen wird ein reales System durch einen Hamiltonoperator $H$ beschrieben. Dieses soll kein ideales System sein, sondern geringfügig von einem idealen System abweichen. Dies kann ein näherungsweise harmonischer Oszillator sein, oft wird auch das Wasserstoffatom als ideales System verwendet.

Der Hamiltonoperator des idealen Systems sei $H_0$, $H_1$ sei eine Korrektur. Sei $|\lambda|\ll 1$ ein dimensionsloser Faktor, der die Störung klein hält. Wird diese Störung zu groß, kann man die Störungstheorie nicht mehr anwenden. <!-- Lagrange-Multiplikator? -->

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

## Zeitabhängige Störungstheorie
### Zeitabhängige Störungen
Im Unterschied zur zeitunabhängigen Störungstheorie wird nun angekommen, dass die Störung in der Zeit variabel ist. Dies wird durch ein zeitabhängiges Potential $V(t)$ beschrieben. Die Dynamik des gestörten Systems soll nun in Bezug auf die ungestörte Dynamik von $H_0$ mit den Energieeigenwerten $E_n$ und Zuständen $\ket{n}$ bestimmt werden.

$$
    H(t) = H_0 + V(t)
$$

### Übergangswahrscheinlichkeit
Beispielsweise sei ein System zum Zeitpunkt $t=0$ im $H_0$-Eigenzustand $\ket{n}$. Dann gibt die Übergangswahrscheinlichkeit $P_{nm}(t)$ die Wahrscheinlichkeit an, dass sich das System zum Zeitpunkt $t$ im Zustand $\ket{m}$ befindet. <!-- m gestörter ZS? -->

Falls $V(t)=0$ verschwindet, ist die Übergangswahrscheinlichkeit $P_{nm}(t)=0$ ebenfalls nichtexistent. Ansonsten muss die folgende Schrödingergleichung gelöst werden, um den Zustand zu bestimmen. Hierbei ist $U_0(t)$ der Zeitentwicklungsoperator des gestörten Systems.<!-- Des gestörten Systems?  -->

$$
\begin{aligned}
    i\hbar\ket{\dot{\Psi}(t)} &= (H_0+V(t))\ket{\Psi(t)} \\
    \Rightarrow \ket{\Psi(t)} &= U_0(t) \ket{\Psi(0)}
\end{aligned}
$$

### Wechselwirkungsbild
Mittels des Wechselwirkungsbildes wird die ungestörte $H_0$-Dynamik von der störenden $V(t)$-Dynamik getrennt.

Hierzu sei $\ket{\Psi(t)}$ ein Zustand im ungestörten Schrödingerbild, das die Schrödingergleichung $i\hbar\ket{\dot{\Psi}(t)} = (H_0+V(t))\ket{\Psi(t)}$ löst. Dann sei $\ket{\Psi(t)}_I$ ein Zustand im Wechselwirkungsbild.

$$
    \ket{\Psi(t)}_I = \exp\left[+i\frac{H_0}{\hbar}t\right] \ket{\Psi(t)}
$$

Ohne Störung $(V(t)=0)$ gilt demnach $\ket{\Psi(t)}_I=\ket{\Psi(0)}$.

Die Störungstheorie kann durch iteratives Lösen der Schrödingergleichung im Wechselwirkungsbild gelöst werden.

### Operatoren im Wechselwirkungsbild
Ein Operator $V(t)$ kann in das Wechselwirkungsbild transformiert werden. Diese Transformation erzeugt $V_I(t)$ und ist folgendermaßen definiert.

$$
    V_I(t) = \exp\left[+i\frac{H_0}{\hbar}t\right] V_0(t) \exp\left[-i\frac{H_0}{\hbar}t\right]
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
        - \frac{i}{\hbar} \int_0^t \mathrm dt^\prime V_I(t^\prime) \ket{\Psi(0)} \\
    \Rightarrow \ket{\Psi(t)}_I^{(2)} &= \ket{\Psi(t)}^{(0)}
        - \frac{i}{\hbar} \int_0^t \mathrm dt^\prime V_I(t^\prime) \ket{\Psi(0)}
        + \left(-\frac{i}{\hbar}\right)^2 \int_0^t \mathrm dt^\prime \int_0^t \mathrm dt^{\prime\prime}  V_I(t^\prime) V_I(t^{\prime\prime}) \ket{\Psi(0)} \\
\end{aligned}
$$

### Harmonische Störung $1.$ Ordnung
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

Man kann auch beweisen, dass auch die Phase der emittierten Photonen gleich ist. Um dies zu erklären benötigt man kohärente Zustände.

# Unbestimmtheitsrelationen
## Heisenbergs Überlegungen
Heisenberg hat deutlich kompliziertere Überlegungen als das, was heutzutage normalerweise als Heisenberg'sche Unbestimmtheitsrelationen bezeichnet wird. Es ging darum, Elektronen zu messen. Dazu würden Gamma-Quanten benötigt, aber eine Messung beeinflusst das gemessene Elektron. Je genauer der Ort $x$ bestimmt werden soll, desto größer ist die Impulsungenauigkeit $\Delta p$ des Elektrons _nach_ der Messung.

$$
    \Delta p\Delta x \ge \frac{\hbar}{2}
$$

## Unbestimmtheit von Messungen
Wird eine Observable $A$ im Zustand $\ket{\Psi}$ gemessen, so kann man den Erwartungswert $\braket{A} _ \Psi=\braket{\Psi|A|\Psi}$ berechnen. Die Standardabweichung $\Delta A_\Psi = (A-\braket{A} _ \Psi)$ ist ebenfalls eine Observable, die die Wurzel der Varianz $(\Delta A_\Psi)^2=\braket{(A-\braket{A} _ \Psi)}_\Psi$ ist.

Nach dem Messpostulat kann man einzelne Zustände mit einer bestimmbaren Wahrscheinlichtkeit messen. Durch wiederholte Messungen kann man den Erwartungswert genauer bestimmen. Allerdings zeigt sich, dass die Varianz nicht beliebig genau gemessen werden kann.

Das Produkt zweier Varianzen $\Delta A_\Psi$ und $\Delta B_\Psi$ von zwei Observablen $A, B$ kann nicht kleiner werden, als der halbe Betrag des Erwartungswertes des Kommutators $[A,B]$ der Operatoren $A$ und $B$.

$$
    \Delta A_\Psi \Delta B_\Psi \ge \frac{1}{2} |\braket{i[A,B]}_\Psi|
$$

### Orts- und Impulsungenauigkeit
In diesem Fall ist $A=\hat{x}$ und $B=\hat{p}$, der Kommutator ist $[x,p]=i\hbar$. Das Ergebnis sieht aus wie Heisenbergs Formulierung, die hiesige Betrachtung hat allerdings nichts mit der Art der Messung zu tun, die ziemlich komplizierte Überlegungen beinhaltet. Der hiesige Weg basiert auf Statistik.

$$
    \Delta x_\Psi \Delta p_\Psi \ge \frac{1}{2} \hbar
$$

# Literatur
1. [@Sakurai2020]

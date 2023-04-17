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

## Postulate & Prinzipien
Wesentliche Merkmale der Quantenmechanik sind das _Superpositionsprinzip_ und der _Indeterminismus_.

### Superpositionsprinzip
Superposition ist ein universell gültiges Prinzip, das besagt, dass sich ein Quantenteilchen [[20230408112055]] zugleich in mehreren Zuständen befinden kann.

Ein berühmtes Beispiel ist das Gedankenexperiment von Schrödingers Katze. [[20230408124103]] Heute verstehen wir, dass Superposition auch hier gilt, aber trotzdem in diesem Fall praktisch nicht beobachtbar ist. Dies ist ein Problem der Dekohärenz.

#### Teilchen im Doppelmuldenpotential
Sei ein Teilchen in einem _Doppelmuldenpotential_ im Grundzustand. Das Potential habe zwei Minima bei $x_1$ und $x_2$, beide auf exakt gleicher Höhe $E(x_1) = E(x_2)$. Somit ist die Wahrscheinlichkeit, dass das Teilchen sich an der Stelle $x_1$ befindet, ebenso groß wie die Wahrscheinlichkeit für die Position $x_2$.

Klassisch würden wir erwarten, dass das Teilchen sich im Grundzustand _entweder_ an $x_1$ _oder_ an $x_2$ befindet.

Quantenmechanisch sagen wir dagegen, das Teilchen befindet sich in _Superposition_, es befindet sich _zugleich_ an beiden Orten!

Ein anderes Beispiel ist der Spin: Beispielsweise kann ein Silberatom gleichzeitig in Zuständen _up_ und _down_ (relativ zu einer z-Achse) sein.

#### Mathematische Darstellung
Bezeichne $\mathscr H_{DMP}$ den Hilbertraum [[20230408121828]] des Doppelmuldenpotentials. Dann gibt es zwei Zustände
$\varphi_1\in\mathscr H_{DMP}$ und $\varphi_2\in\mathscr H_{DMP}$. Die Superposition wird dann als $\mathscr H_{DMP} \ni \Psi = \varphi_1 + \varphi_2$ geschrieben.

### Der Hilbertraum
Der Zustandsraum der Quantenmechanik ist der **Hilbertraum** $\mathcal{H}_S$ des Systems, ein unitärer Vektorraum. Dies bedeutet, es gibt ein hermitesches Skalarprodukt.

Ein quantenmechanischer Zustand ist ein Vektor $\varphi\in\mathscr H_S$. Dieser Vektor hat die Norm $1$: $||\varphi||=1$

#### Eigenschaften des hermiteschen Skalarprodukts
Eigenschaften des Skalarprodukts:
* Vertauschung der Parameter erzeugt das komplex Konjugierte des Skalarprodukts: $\braket{\varphi, \psi} = \braket{\psi, \varphi}^*$
* positiv semi-definit:
    * $\forall \varphi \ne 0: \braket{\varphi, \varphi} > 0$
    * $\varphi = 0 \Leftrightarrow \braket{\varphi, \varphi} = 0$
* Linearität:
    * $\forall \lambda \in \mathbb C: \braket{\varphi, \lambda\psi} = \lambda\braket{\varphi, \psi} = \braket{\lambda^*\varphi, \psi}$
    * $\braket{\varphi, \psi_1 + \psi_2} = \braket{\varphi, \psi_1} + \braket{\varphi, \psi_2}$


### Operatoren
Ein Operator $\widehat{A}$ auf dem Hilbertraum $\mathcal H$ ist eine lineare Abbildung, die einen Zustand $\varphi$ auf einen Zustand $\widehat{A}\varphi$ abbildet.

Ein Operator ist vollständig beschrieben durch die Bilder der Basisvektoren, die er erzeugt. Daher kann er als Matrix dargestellt werden. Er kann einer Observablen zugeordnet werden. Es gilt $\braket{O}_\Psi = \braket{\Psi|\widehat{O}\Psi}$.

#### Adjunktion
Die Adjunktion $A^\dagger$ ist die Verkettung von komplexer Konjugation $A^*$ und Transponation $A^\mathrm T$. Es gilt $A^\dagger = (A^*)^\mathrm T$.

#### hermitesche Operatoren
Ein Operator $\widehat{A}$ ist hermitesch bzw. selbstadjungiert, wenn $\widehat{A}^\dagger=\widehat{A}$. Daraus folgt, dass die Adjungierte $\widehat{A}^\dagger = \widehat{A}^{-1}$ auch die Inverse ist.

* Quantenmechanisch wird die Adjunktion eines Operators durch $\braket{\varphi|A\psi} = \braket{A^\dagger\varphi|\psi}$ definiert.
* Ein hermitescher Operator besitzt eine orthonormale Basis $\{\varphi_i\}$.
* Die Eigenwerte $a_i$ eines hermiteschen Operators sind _reell_: $\widehat{A}\ket{\varphi_i} = a_i \ket{\varphi_i}$

#### Spektraldarstellung hermitescher Operatoren
Die Spektraldarstellung nutzt den Projektionsoperator $P_\chi$.
$$
    \widehat{A} = \sum_i a_i P_{\varphi_i} = \sum_i a_i \ket{\varphi_i}\bra{\varphi_i}
$$

### Messpostulat
Ein fundamentales Problem der Quantenphysik ist, dass direkte Beobachtungen nicht möglich sind.

Dieses Problem wird _operationalistisch_ gelöst. Das Messpostulat besagt, dass die Theorie mit _makroskopischen Messungen_ kompatibel sein muss.

#### Notation
Sei $\varphi$ ein Zustand des Systems. Dann misst die Messung $M_\varphi$, ob der Zustand $\varphi\in\mathscr H$ vorliegt (genannt _positiv_) oder nicht (genannt _negativ_).
$$
    M_\varphi =
        \begin{cases}
            0 \Leftrightarrow \varphi \ \mathrm{negativ} \\
            1 \Leftrightarrow \varphi \ \mathrm{positiv}
        \end{cases}
$$

#### Wahrscheinlichkeiten
Sei das System in einem Zustand $\Psi$. Dann ist Messung $M_\varphi$ mit der Wahrscheinlichkeit $p=|\braket{\varphi, \Psi}|^2$ positiv. 

##### Winkel von Zuständen
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

#### ideale Messung
Eine Messung nennt man ideal, wenn sich das System nach der Messung $M_\Psi$ im Zustand $\Psi$ befindet. Dann spricht man von einem _Kollaps der Wellenfunktion_. Dies ermöglicht eine Präperation des Systems mit dem Zustand $\Psi$.

### Indeterminismus
Es gibt nur zwei Fälle in denen man das Ergebnis vorhersagen kann. Dazu muss ein Zustand $\psi$ gemessen worden sein, nun wird der der Zustand $\varphi$ gemessen. Diese zweite Messung kann man genau dann vorhersagen, wenn $\varphi \bot \psi$ oder $\varphi \parallel \psi$ gelten, ansonsten kann man das Ergebnis nicht vorhersagen.

### Observable
Eine beobachtbare Größe wird in der Quantenmechanik _Observable_ genannt.

Sie hat konkrete Werte, die gemessen werden. Für Messungen einem Systemen im Zustand $\Psi$ wird der Erwartungswert der Observable $O$ als $\braket{O}_\Psi$ geschrieben. Einer Observable $O$ kann ein zugehöriger Operator $\widehat{O}$ zugeordnet werden. Es gilt $\braket{O}_\Psi = \braket{\Psi|\widehat{O}\Psi}$.

Im Fall des Stern-Gerlach-Experimentes ist die Observable die $z$-Komponente $\mu_z$ des magnetischen Moments.

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

### Dualraum
Der Dualraum $\mathcal H^*$ zu dem Hilbertraum $\mathcal H$ ist der Vektorraum der linearen Abbildungen (_Linearformen_) von $\mathcal H \rightarrow \mathbb C$.

Es gibt einen Isomorphismus, der einem Zustand $\psi\in\mathcal H$ den _Dualvektor_ $\psi^\dagger \in\mathcal H^*$ zuordnet. Es gilt $\varphi^\dagger\psi = \braket{\varphi|\psi}$. Hierbei sind $\psi$ als $n$-dimensionaler Vektor und $\varphi^\dagger$ als $1\times n$-dimensionale Matrix darstellbar.

### Dirac-Notation
Zustände im Hilbertraum $\varphi\in\mathcal H$ werden als "Ket" $\ket{\varphi}$ dargestellt, Dualvektoren $\varphi^\dagger\in\mathcal H^*$ als "Bra" $\bra{\varphi}$. Auf diese Weise wird das Skalarprodukt als "Bra-Ket" $\braket{\varphi|\varphi}$ dargestellt.

Zudem werden oft nur Indizes in Ket/Bra eingetragen. So wird aus $\ket{\varphi_{z+}}=\ket{z+}$.

#### Rechenregeln
* Ket
    * $\ket{\varphi + \psi} = \ket{\varphi} + \ket{\psi}
    * $\ket{\lambda\psi} = \lambda\ket{\psi}$
* Bra
    * $\bra{\varphi + \psi} = \bra{\varphi} + \bra{\psi}$
    * $\ket{\lambda\psi} = \lambda^*\ket{\psi}$

## Zweizustandssysteme
### Bohr-Sommerfeldsches Atommodell
Das Bohr-Sommerfeldsche Atommodell ist eine Erweiterung des Bohrschen Atommodells, das klassische Mechanik annimmt, um die Bewegung der Elektronen um den Atomkern zu beschreiben. Es wird um Quantisierungsbedingungen ergänzt.

Durch seine Rotation um den Atomkern hat ein Elektron einen Drehimpuls $\vec{L}$. Dieser Drehimpuls ist durch die Quantenzahl $l=1,2,3,\dots$ quantisiert, es gilt $|\vec{L}| = l\hbar$.

Die Drehimpulskomponente in Richtung der $z$-Achse $L_z=m\hbar$ ist nun durch eine magnetische Quantenzahl $m=-l,-l+1,\dots,l$ zu beschreiben.

Da eine bewegte Ladung ein elektromagnetisches Feld beschreibt, kann man die Quantenzahlen auch nutzen, um ein sogenanntes Magneton $\mu$ zu beschreiben. Es gilt $|\vec{\mu}| = \mu_0 l$ sowie $\mu_z =  \mu_0m$. $\mu_0$ ist das Bohrsche Magneton.

#### Zeemann-Effekt
Durch $L_z$ werden die Energieniveaus der Elektronen verschoben. Diese Verschiebung führt zu einer Verschiebung der Spektrallinien.

Der Zeemann-Effekt wird auch Feinaufspaltung genannt.

### Das Stern-Gerlach-Experiment
Die Quantenphysik erwartet diskrete magnetische Momente, die klassische Physik hätte nach dem Bohr-Modell kontinuierliche magnetische Momente erwartet. Im Stern-Gerlach-Experiment wurde gemessen, was davon zutrifft.

Hierzu wird ein Strahl von Silberatomen durch ein inhomogenes Magnetfeld geschickt. Durch ihr magnetisches Moment werden diese Atome abgelenkt, diese Ablenkung ist proportional zum magnetischen Moment in $z$-Richtung. Klassischerweise würde man eine kontinuierliche Verteilung der abgelenkten Strahlen erwarten, quantenmechanisch eine diskrete Verteilung.

Das Experiment ergab, dass es genau zwei Punkte gab, an denen Silberatome gemessen werden konnten. Dies zeigte, dass das magnetische Moment gequantelt ist.

In weiteren Messungen wurde festgestellt, dass die Zustände $\ket{z\uparrow}$ und $\ket{z\downarrow}$ senkrecht zueinander sind, selbiges gilt jeweils in $x$- und $y$-Richtung. Die Zustände der Achsen $x$, $y$ und $z$ sind unternander jedoch nicht rechtwinklig, sondern in einem Winkel von jeweils $45\degree$.

Deswegen wählt man oft folgende Ortonormalbasis:
$$
\begin{align*}
    \varphi_{z+}
        &\ \ \land\ \ \varphi_{z-} \\
    \varphi_{x+} = \frac{1}{\sqrt{2}} (\varphi_{z+} + \varphi_{z-})
        &\ \ \land\ \ \varphi_{x-}
        = \frac{1}{\sqrt{2}} (\varphi_{z+} - \varphi_{z-})\\
    \varphi_{y+} = \frac{1}{\sqrt{2}} (\varphi_{z+} + \mathcal i\varphi_{z-})
        &\ \ \land\ \ \varphi_{x-}
        = \frac{1}{\sqrt{2}} (\varphi_{z+} - \mathcal i\varphi_{z-})
\end{align*}
$$
 #### Observable
Die Observable ist in diesem Fall $\mu_z$, die $z$-Komponente des magnetischen Moments. Die gemessenen Werte sind $\pm \mu_0$.

Nach dem Messpostulat hat sie die Wahrscheinlichkeiten $p_+=|\braket{\varphi_{z+}, \Psi}|^2$ und $p_-=|\braket{\varphi_{z-}, \Psi}|^2$, wenn vorher der Zustand $\Psi$ vorherrschte. Damit hat $\mu_z$ den Erwartungswert $\braket{\mu_z}_\Psi$ für Messungen an Atomen mit dem Zustand $\Psi$. Es gilt daher $\braket{\mu_z}_{\Psi} = p_{+}\cdot\mu_0+p_{-}\cdot(-\mu_0)$.

### Spin $\frac{1}{2}$

## Quantenmechanik eines Punktteilchens
### Impuls
### Drehimpuls
### Schrödinger-Gleichung

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


# Literatur


[^1]: z.B: elektrische Leitfähigkeit und Wärmekapazität

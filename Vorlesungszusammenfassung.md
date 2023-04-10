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

## Postulate
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

### 1. Postulat der Quantenmechanik
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

## Zweizustandssysteme
### Spin $\frac{1}{2}$
### Stern-Gerlach-Experiment

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

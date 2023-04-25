---
author:
  - Dr. Rochus Klesse
  - Oliver Filla
date: Sommersemester 2023
keywords:
  - Physik
  - Quantenmechanik
---
## Prinzipien
### Operatoren
Ein Operator $\widehat{A}$ auf dem Hilbertraum $\mathcal H$ ist eine lineare Abbildung, die einen Zustand $\varphi$ auf einen Zustand $\widehat{A}\varphi$ abbildet.

Ein Operator ist vollständig beschrieben durch die Bilder der Basisvektoren, die er erzeugt. Daher kann er als Matrix dargestellt werden. Er kann einer Observablen zugeordnet werden. Es gilt $\braket{O}_\Psi = \braket{\Psi|\widehat{O}\Psi}$.

Die meisten quantenmechanischen Operatoren sind _selbstadjungiert_ bzw. _hermitesch_.

#### Hermitesche Operatoren
Ein Operator $\widehat{A}$ ist hermitesch bzw. selbstadjungiert, wenn $\widehat{A}^\dagger=\widehat{A}$. Daraus folgt, dass die Adjungierte $\widehat{A}^\dagger = \widehat{A}^{-1}$ auch die Inverse ist.

* Quantenmechanisch wird die Adjunktion eines Operators durch $\braket{\varphi|A\psi}=\braket{A^\dagger\varphi|\psi}$ definiert.
* Ein hermitescher Operator besitzt eine orthonormale Basis $\{\varphi_i\}$.
* Die Eigenwerte $a_i$ eines hermiteschen Operators sind _reell_: $\widehat{A}\ket{\varphi_i}=a_i\ket{\varphi_i}$
    * Dadurch kann die Matrix $A$ in der Spektraldarstellung diagonalisiert werden.
    * Der Erwartungswert $\braket{\widehat{A}}_\Psi$ ist das Skalarprodukt $\braket{\Psi|A|\Psi}$.

#### Adjunktion
Die Adjunktion $A^\dagger$ ist die Verkettung von komplexer Konjugation $A^*$ und Transponation $A^\mathrm T$. Es gilt $A^\dagger=(A^*)^\mathrm T$.

#### Spektraldarstellung Hermitescher Operatoren
Die Spektraldarstellung nutzt den Projektionsoperator $P_\chi$. $\sum_i \ket{\varphi_i}\bra{\varphi_i}$ ist dabei die Einheitsmatrix, $a_i\in\mathbb R$ sind reelle Eigenwerte. Daher sind $\{\varphi_i\}$ eine orthonormale Eigenbasis.
$$
    \widehat{A} = \sum_i a_i P_{\varphi_i} = \sum_i a_i \ket{\varphi_i}\bra{\varphi_i}
$$

#### Erwartungswert Hermitescher Operatoren
Der Erwartungswert $\braket{\widehat{A}}_\Psi$ eines Hermiteschen Operators $\widehat{A}$ ist für ein System im Zustand $\Psi$ durch das Skalarprodukt $\braket{\Psi|A|\Psi}$ definiert. Durch die Spektraldarstellung kann die Matrix $A$ als reellwertige Diagonalmatrix dargestellt werden, daher spielt es keine Rolle, ob $A$ auf den Ket-Vektor oder den Bra-Vektor angewendet wird.

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

### Observable
Eine beobachtbare Größe wird in der Quantenmechanik _Observable_ genannt.

Sie hat konkrete Werte, die gemessen werden. Für Messungen einem Systemen im Zustand $\Psi$ wird der Erwartungswert der Observable $O$ als $\braket{O}_\Psi$ geschrieben. Einer Observable $O$ kann ein zugehöriger Operator $\widehat{O}$ zugeordnet werden. Es gilt $\braket{O}_\Psi = \braket{\Psi|\widehat{O}\Psi}$.

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

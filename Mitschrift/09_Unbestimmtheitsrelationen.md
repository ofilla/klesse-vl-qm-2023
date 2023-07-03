# 9. Unbestimmtheitsrelationen
## Heisenberg'sche Unbestimmtheit
Heisenberg hat deutlich kompliziertere Überlegungen als das, was heutzutage normalerweise als Heisenberg'sche Unbestimmtheitsrelationen bezeichnet wird. Es ging darum, Elektronen zu messen. Dazu würden Gamma-Quanten benötigt, aber eine Messung beeinflusst das gemessene Elektron durch den Compton-Effekt. Je genauer der Ort $x$ bestimmt werden soll, desto größer ist die Impulsungenauigkeit $\Delta p$ des Elektrons _nach_ der Messung. Hierbei werden $x$ und $p$ nacheinander im selben System gemessen, die Systeme sind demnach nicht unabhängig.

$$
    \Delta x\Delta p \ge \frac{\hbar}{2}
$$

## Unbestimmtheit von Messungen
Wird eine Observable $A$ im Zustand $\ket{\Psi}$ gemessen, so kann man den Erwartungswert $\braket{A} _ \Psi=\braket{\Psi|A|\Psi}$ berechnen. Die Standardabweichung $\Delta A_\Psi = (A-\braket{A} _ \Psi)$ ist ebenfalls eine Observable, die die Wurzel der Varianz $(\Delta A_\Psi)^2=\braket{(A-\braket{A} _ \Psi)}_\Psi$ ist.

Nach dem Messpostulat kann man einzelne Zustände mit einer bestimmbaren Wahrscheinlichtkeit messen. Durch wiederholte Messungen kann man den Erwartungswert genauer bestimmen. Allerdings zeigt sich, dass die Varianz nicht beliebig genau gemessen werden kann.

Das Produkt zweier Varianzen $\Delta A_\Psi$ und $\Delta B_\Psi$ von zwei Observablen $A$ und $B$ kann nicht kleiner werden, als der halbe Betrag des Erwartungswertes des Kommutators $[A,B]$ der Operatoren $A$ und $B$. Dazu müssen die Messungen von $A$ und $B$ an unabhängigen Systemen im gleichen Zustand $\Psi$ gemessen werden.

$$
    \Delta A_\Psi \Delta B_\Psi \ge \frac{1}{2} |\braket{i[A,B]}_\Psi|
$$

### Beweis
Seien $A$ und $B$ Observablen, die durch hermitesche Operatoren dargestellt werden und sei $x\in\mathbb R$. Ohne Beschränkung der Allgemeinheit seien die Erwartungwerte von $A$ und $B$ $\braket{A}_\Psi = \braket{B}_\Psi = 0$.[^91]

$$
\begin{aligned}
    0 &\le ||(A+iBx)\ket{\Psi}||^2 \\
        &= \bra{\Psi} (A-iBx)(A+iBx) \ket{\Psi} \\
        &= \braket{A^2}_\Psi + x^2\braket{B^2}_\Psi + ix\braket{AB - BA}_\psi \\
        &= \Delta A^2_\Psi + \Delta B^2_\Psi + x\braket{i[A,B]} \\
        &=: a^2 + b^2 + x\cdot c \\
\end{aligned}
$$

Da $\braket{A}_\Psi=0$ gilt $\braket{A^2}_\Psi = \Delta A_\Psi^2$. $c\in\mathbb R$ ist genau dann reell, wenn $i[A,B]$ hermitesch ist.

$$
\begin{aligned}
    i[A,B] &= (i[A,B])^\dagger \\
        &= (iAB - iBA)^\dagger \\
        &= -i(AB)^\dagger +i(BA)^\dagger \\
        &= -iBA +iAB \\
        &= i[A,B]
\end{aligned}
$$


Durch quadratische Ergänzung kann die Gleichung $0\le a^2+b^2+xc$ zu $a^2b^2\ge \frac{c^2}{4}$ umgeformt werden, wenn $x=\frac{c}{2b^2}$  gewählt wird. Durch diese Wahl von $x$ kann es aus der Gleichung eliminiert werden. Daraus folgt die Unschärferelation.

[^91]: Falls dies nicht der Fall ist, kann man Wertebereich um den entsprechenden Erwartungswert verschieben, um diesen Zustand zu erreichen.

### Orts- und Impulsungenauigkeit
In diesem Fall ist $A=\hat{x}$ und $B=\hat{p}$, der Kommutator ist $[x,p]=i\hbar$. $A$ und $B$ werden in unabhängigen Systemen im Zustand $\Psi$ gemessen.

$$
    \Delta x_\Psi \Delta p_\Psi \ge \frac{1}{2} \hbar
$$

Das Ergebnis sieht aus wie Heisenbergs Formulierung, in seiner Betrachtung werden jedoch $x$ und $p$ im selben System nacheinander gemessen, die Messungen sind also nicht unabhängig.

## Das Variationsprinzip
Mithilfe der Unabhängigkeitsrelationen kann man beispielsweise die Energie eines Zustands abschätzen.

### Freies Teilchen in einer Dimension
Sei ein Teilchen im Zustand $\ket{\Psi}$ in einer Dimension. Im Ortsraum gilt $\Psi(x) = \braket{\varphi_x|\Psi}$.

$$
\begin{aligned}
    \Psi(x) &= \frac{1}{\sqrt[4]{\pi\sigma^2}} \exp\left[-\frac{x^2}{2\sigma^2}\right] \\
    \Rightarrow \braket{x}_\Psi &= 0 \\
    \Rightarrow \Delta x_\Psi &= \frac{\sigma}{\sqrt{2}}
\end{aligned}
$$

Die Unbestimmtheitsrelation fordert, dass $\Delta p_\Psi \ge \frac{\hbar}{2\Delta x_\Psi} = \frac{\hbar}{\sqrt{2} \sigma}$. Im Impulsraum gilt $\tilde{\Psi}(p) = \braket{\tilde{\varphi}_k|\Psi}$.

$$
\begin{aligned}
    \tilde{\Psi}(k) &\propto \frac{1}{\sqrt[4]{\pi\sigma^{-2}}} \exp\left[- \frac{k^2\sigma^2}{2} \right] \\
    \Rightarrow \Delta p_\Psi &= \frac{1}{\sqrt{2}} \frac{\hbar}{\sigma}
\end{aligned}
$$

Durch die konkrete Rechnung wurde die untere Grenze von $\Delta p_\Psi$ bestimmt, die von der Unbestimmtheitsrelation gefordert ist.

### Abschätzung der Grundzustandsenergie
Sei ein Teilchen in einem Potentialkasten der Länge $L$. Nun soll die Grundzustandsenergie $E_0$ durch die Unbestimmtheitsrelation ermittelt werden.

Die Unbestimmtheit des Ortes ist ist näherungsweise die Länge des Kastens $(\Delta x_{\Psi_0} \overset{!}{\approx} L)$. Die Unbestimmtheitsrelation fordert  $\Delta p_\Psi \ge \frac{\hbar}{2\Delta x_\Psi} = \frac{\hbar}{2L}$. Damit folgt $E_0=\braket{\frac{p^2}{2m}}_{\Psi_0}$, was $E_0=\frac{1}{2m}(\Delta p_{\Psi_0})^2\ge\frac{\hbar^2}{8mL^2}$ ergibt. Die genaure Rechnung ergibt $E_0=\frac{\pi^2}{2}\frac{\hbar^2}{mL^2}$, was einen Faktor $4\pi^2$ größer als die untere Grenze der Abschätzung ist.

Dies ist in der Festkörperphysik relevant. Beispielsweise erklärt dies, warum die Metallbindung energetisch sinnvoll ist.

### Bohr-Radius des Wasserstoffatoms
Der Bohr-Radius $a_0$ eines Wasserstoffatoms im Grundzustand kann ebenfalls mithilfe der Unbestimmtheit abgeschätzt werden.

Hierzu wird das Potential $V(x)=-\frac{e^2}{|x|}$ angenommen, was eine Darstellung des Coulomb-Potentials in Einheiten von $4\pi\varepsilon_0=1$ ist. Die Unbestimmtheit des Ortes wird als $\Delta x = a$ definiert. Dadurch ist der Erwartungswert der potentiellen Energie $-\frac{e^2}{a}$. Der Erwartungswert der kinetischen Energie kann durch $\frac{\Delta p}{2m}$ angenähert werden. Aus der Ungenauigkeitsrelation folgt $\Delta p\le \frac{\hbar^2}{a^2}$, was zu einem Gesamtpotential von $E(a) = \frac{\hbar^2}{2ma} - \frac{e^2}{a}$ führt. Wird dieses nach $a$ hin minimiert, erhält man den Bohr-Radius $a_0 = \frac{\hbar^2}{me^2}$.

### Ideale Messung eines freien Teilchens
Sei der Ort eines freien Teilchens im Zustand $\ket{\Psi}$ in einer idealen Messung festgestellt worden. Nun soll die Impulsunschärfe abgeschätzt werden. Bei einer idealen Ortsmessung gilt $\Delta x= 0$, da das Teilchen danach im Zustand präperiert ist. Durch die Unschärfe folgt, dass $\Delta p=\infty$ divergiert.

Nach der Ortsmessung ist das Teilchen im Eigenzustand $\ket{\Psi^\prime}=\ket{\varphi_{x_0}}$ mit $\varphi_{x_0}(x)=\delta(x-x_0)$. Um die Unschärfe des Impulses zu bestimmen, muss $\tilde{\Psi}^\prime(k)$ als Fouriertransformierte von $\varphi_{x_0}(x)$ ermittelt werden. Die Fouriertransformierte einer Delta-Funktion ist eine konstante Funktion, demnach ist $\Delta p=\infty$.

### Unscharfe Messung eines freien Teilchens
Der Ort eines freien Teilchens im Zustand $\ket{\Psi}$ in einer idealen Messung festgestellt werden, die durch die Unschärfe $\Delta x=L$ beschränkt ist. Dies kann man realisieren, indem man im Abstand $L$ Potentialbarrieren errichtet, zwischen denen das Teilchen gefangen wird. Damit kann gemessen werden, in welchem Interval das Teilchen ist.

Nach der Messung ist der Erwartungswert $\braket{x}_\Psi=x_n+\frac{L}{2}$ mit der Unschärfe $\Delta x_\Psi=L$. Der Erwartungswert des Impulses verschwindet $(\braket{p}_\Psi=0)$, dessen Unschärfe ist $\Delta p_\Psi = \frac{\hbar^2\pi^2}{L^2}$. Daraus folgt $\Delta x_\Psi \Delta p_\Psi = \hbar\pi$, was die Unbestimmtheitsrelation erfüllt

### Kommutierende Observablen
Seien $A$ und $B$ Observablen, deren Operatoren kommutieren $([A,B]=0)$. Daraus folgt aus der Unschärferelation $\Delta A_\Psi \Delta B_\Psi \ge 0$. Dies ist keine sinnvolle Aussage, da die Standardabweichung immer nicht-negativ ist.

Für beliebige Zustände $\ket{\Psi}$ sind die Unschärfen nicht-null. Dennoch gibt es Zustände, die exakt gemessen werden. Sei $\ket{a_n}$ ein Eigenzustand von $A$, dann ist $\braket{A}_{\ket{a_n}}=a_n$ mit $\Delta A_{\ket{a_n}}=0$.

Es gibt auch Zustände $\ket{\Psi}$, die zeitgleich Eigenzustände von $A$ und $B$ sind.

Seien $A$ und $B$ hermitesche Operatoren. Genau dann, wenn sie kommutieren $([A,B]=0)$, dann gibt es eine gemeinsame Eigenbasis $\ket{\varphi_n}$ für beide Operatoren.

#### Beweis
##### $\Leftarrow$
Stelle $A$ und $B$ in der Spektraldarstellung mit denselben Eigenzuständen dar. Dann ist es offensichtlich, dass $A$ und $B$ kommutieren.

##### $\Rightarrow$
Seien $\ket{a_n}$ und $\ket{b_n}$ eine Eigenbasis von $A$ respektive $B$. Seien weiterhin die Zustände von $B$ nicht entartet $(\forall n\neq m: b_n\neq b_m)$.

Da $[A,B]=0$ gilt $BA\ket{b_n}=AB\ket{b_n}=b_nA\ket{b_n}$. Daher ist $A\ket{b_n}$ ein Eigenvektor von $B$ zum Eigenwert $b_n$ von $B$. Da die Zustände nicht entartet sind, gibt es $\lambda\in\mathbb C$ mit $A\ket{b_n}=\lambda\ket{b_n}$. Damit ist $\ket{b_n}$ auch ein Eigenvektor von $A$. Da dies für alle $\ket{b_n}$ gilt und alle $\ket{b_n}$ eine Orthonormalbasis von $B$ bilden, bilden sie auch eine Orthonormalbasis von $A$.

Falls $B$ entartete Zustände besitzt $(\exists n\neq m: b_n=b_m)$, kann $\ket{a_n}$ als Linearkombinationen von Vektoren aus dem Spektrum von $B$ dargestellt werden. Auf diese Weise lässt sich der Satz beweisen.


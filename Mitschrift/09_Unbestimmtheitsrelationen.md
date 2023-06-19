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


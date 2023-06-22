# 4. Zweizustandssysteme

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


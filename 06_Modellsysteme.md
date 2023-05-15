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

### Superposition
Als Basis wählt man den $n$-ten Grundzustand und den $n$-ten angeregten Zustand. $\Psi_+$ beschreibt hier ein Teilchen im rechten Kasten, $\Psi_-$ ein Teilchen im linken Kasten.

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


<!--  -->

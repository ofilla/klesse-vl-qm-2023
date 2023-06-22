# 6. Modellsysteme
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


---
author:
  - Dr. Rochus Klesse
  - Oliver Filla
date: Sommersemester 2023
keywords:
  - Physik
  - Quantenmechanik
---
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

Nach dem Messpostulat hat sie die Wahrscheinlichkeiten $p_+=|\braket{\varphi_{z+}, \Psi}|^2$ und $p_-=|\braket{\varphi_{z-}, \Psi}|^2$, wenn vorher der Zustand $\Psi$ vorherrschte. Damit hat $\mu_z$ den Erwartungswert $\braket{\mu_z}_\Psi$ für Messungen an Atomen mit dem Zustand $\Psi$. Es gilt daher $\braket{\mu_z}_{\Psi} = p_{+}\cdot\mu_0+p_{-}\cdot(-\mu_0)$.

# Helmholtz calculations
The purpose of this file is to describe how the current  required to generate a 2-gauss magnetic field  is obtained.

<p align="center">
    <img src="images/HelmHoltz.png" width="300" height="300">
</p>

Important things to note:

- Coils must be square

- $\gamma$ is defined as 0.5445 (explained below)

- We are defining the strength of the magnetic field at the absolute centre


\
The field at (0,0,0) is defined as:

$$
B=\frac{2\mu_{0}NI}{\pi a}\frac{2}{(1+\gamma^2)\sqrt{2+\gamma^2}}
$$

Where... 

$B$ is the magnetic field (T)

$\mu_{0}$ is the permeability of a vacuum constant: 4 $\pi \times 10^{-7}$ (N/A $^{2}$)


$a$ is $\frac{1}{2}$ of the side length (m)


$\gamma$ is the ratio of the distance between the two coils (2b) and the length of the side of a coil (2a) 


$N$ is the number of loops of wire 

## Finding $N$

We can find $N$ in 2 steps

1. Define diameter of wire and width of U-Channel. 
2. Divide width by diameter, and round down to nearest whole number to find N.

We find the maximum ammount of turns to minimize current required (as shown in the field equation).

## Finding $I$

We can rearrange the equation to look like this

$$
I=\frac{\pi a (1+\gamma^2)(\sqrt{2+\gamma^2})B}{4\mu_0 N}
$$

Recall: Our goal is to achieve 2 gauss  $∴$ $B$ = 2 Gauss= 0.0002 Tesla

Plugging in our values for $a$, $N$, $\gamma$, $\mu_0$ and $B$
we can isolate for current.

## Putting it All Together

Here's an Example: 

-24 AWG wire diameter = 0.51054mm

-1.5 inch u-channel width = 38.1mm

$N$ = 74

$a$= 2.4/2 = 1.2 (assuming side length is 2.4m approx)

$\gamma$ = 0.5445

$B$ = 0.0002 

$\mu_0 = 4\pi \times 10^{-7}$

Therefore $ I = 3.9825$ Amps

# Side length Deduction

Purpose of this section is to deduce the side length required


Note:
- 40 Cm total length (38.5cm in reality), therefore 20cm off origin (assuming centre of field is centre of FINCH). -Considering field is weakest at x = $\sqrt{20^2+20^2}=28.28427125cm=0.2828427125m$
- Less than 0.5% variation required towards the end of the uniform space.

This is the equation that defines the variation along the $x$ distance traveled away from the centre of the $z$ field. 

$$\frac{B_z(x,0,0)}{B_z(0,0,0)}=1 - 0.40017(\frac{x}{a})^4$$

Therefore 

$$0.995=1-0.40017(\frac{0.2828427125}{a})^4$$

Therefore 

$$a= 84.59868731cm $$

Therefore sidelength = 2a = 169.19737cm

Approx 1.7m, With a factor of safety (1.8m)

Note, this is subject to change.

## The Temperature Issue

Problem: Running a current through a wire increases resistance, which increases voltage to maintain the same current, which increases resistance....etc

### Ohm's Law
$$V=IR$$

Writing in differential form we obtain
$$dV = IdR$$ 
Where $I$ is constant (changes depending on wire selected).

### Calculating Reistance from Resistivity
The law is given by:
$$ 
R=P_{T}\frac{L}{A}
$$
Note: This is where $P_T$ is the reistivity of the wire (at a given temperature $T$), $L$ is length of wire (depends on # turns and side length) and $A$ is area (depends on gauge)

Writing in differential form we obtain
$$dR = dP_{T}\frac{L}{A}$$

### Calculating Resistivity from Temperature
The law is given by:

$$P_{T}=P_{0}(1+\alpha(T-T_{0}))$$

Note: This is where $P_{0}$ is the intitial resitativity at $T_0$, $\alpha$ is the temperature coefficent of resistivity (constant), and $T$ is temperature at a given time t.

Writing in differental form we obtain

$$dP_T=\alpha P_0 dT$$

### Calculating Temperature from Joule Heating

Temperature rises within a conductor based on this relation:
$$T=\frac{Q}{cm}$$
Where $Q$ is the amount of heat built up in a conductor after a time t (in joules), $c$ is the specific heat capacity of the conductor and $m$ is the mass of the conductor.

Writing in differential form we obtrain

$$dT=\frac{dQ}{cm}$$

### Calculating Joule heating from Joule's Law
Joule heating is given by 

$$Q=Pt$$
Where P is the power disapated in the conductor which is given by:

$$P=I^2R$$

also (for later) $P=IV$

Therefore:
$$Q=(I^2R)t$$

Where t is time (in seconds)
### Final formula
Considering R as constant (challenge), we can subsititute all the given differential forms to find change of voltage with change of time.

$$dV=\alpha P_0\frac{LI^3R(t)}{Acm}dt$$


Now use R = $dP_T\frac{L}{A}$

Therefore R(T)= $P_T(t)\frac{L}{A}$

Knowing $$P_{T}=P_{0}(1+\alpha(T(t)-T_{0}))$$

$$T(t)= \frac{Q(t)}{cm}$$

$$Q(t) = Pt=V(t)*I*t$$

Finally subsitute back and obtain:

$$R(t)=\frac{L}{A}(P_0(1+ \alpha(\frac{V(t)*I*t}{cm}-T_0)))$$

Then $$dV=\alpha P_0\frac{LI^3\frac{L}{A}(P_0(1+ \alpha(\frac{V(t)*I*t}{cm}-T_0)))}{Acm}dt $$
$$\frac{dV}{dt}=\alpha P_0\frac{LI^3\frac{L}{A}(P_0(1+ \alpha(\frac{V(t)*I*t}{cm}-T_0)))}{Acm} $$

Can use approximation to determine voltage change with time (eulers, Runge-kutta, etc). Should be linear. 
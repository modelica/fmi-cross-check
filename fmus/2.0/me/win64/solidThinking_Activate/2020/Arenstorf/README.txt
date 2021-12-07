Model:
Arenstorf: Simulating the Arenstorf orbits
Arenstorf orbits are closed trajectories of the restricted three-body problem. 
That is, two bodies of masses amu and 1-amu moving in a circular rotation, and a third body of negligible mass moving in the same plane.
The computation of these orbits is very sensible to small errors and are a good test for the accuracy of numerical methods for solving Ordinary Differential Equations.
Reference:
    Richard Arenstorf,
    Periodic solutions of the restricted three body problem representing analytic continuations of Keplerian elliptic motions,
    American Journal of Mathematics,
    Volume 85, Number 1, pages 27-35, January 1963. 

    Ernst Hairer, Syvert Norsett, Gerhard Wanner,
    Solving Ordinary Differential Equations I: Nonstiff Problems,
    Springer, 1987.


FMI Type:
ModelExchange

Generation Tool:
Altair Activate 2020

Available Platforms:
win64, Linux64

Known Errors:

Additional Information:

Contact info: masoud@altair.com
Altair | Nasdaq: ALTR
[https://www.altair.com/activate/]

FMUChecker:
FMUChecker Version 2.0.4 

```bash
fmuCheck.win64.exe -k me -o Arenstorf_ref.csv  -s 20  -h 1e-6 -n 100 -c , Arenstorf.fmu
```
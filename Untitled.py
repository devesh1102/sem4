Python 3.6.1 (v3.6.1:69c0db5050, Mar 21 2017, 01:21:04) 
[GCC 4.2.1 (Apple Inc. build 5666) (dot 3)] on darwin
Type "copyright", "credits" or "license()" for more information.
>>> WARNING: The version of Tcl/Tk (8.5.9) in use may be unstable.
Visit http://www.python.org/download/mac/tcltk/ for current information.

=============================== RESTART: Shell ===============================
>>> import numpy as np
from scipy import signal
from matplotlib import pyplot as plt
 
# Coefficients in numerator of transfer function
num = [1]
# Coefficients in denominator of transfer function
# High order to low order, eg 1*s^2 + 0.1*s + 1
den = [1, 0.1, 1]
 
# Scan over zeta, a parameter for a second-order system
zetaRange = np.arange(0.1,1.1,0.1)
 
f1 = plt.figure()
for i in range(0,9):
    den = [1, 2*zetaRange[i], 1]
    print den
    s1 = signal.lti(num, den)
    % Specify our own frequency range: np.arange(0.1, 5, 0.01)
    w, mag, phase = signal.bode(s1, np.arange(0.1, 5, 0.01).tolist())
    plt.semilogx (w, mag, color="blue", linewidth="1")
plt.xlabel ("Frequency")
plt.ylabel ("Magnitude")
plt.savefig ("c:\\mag.png", dpi=300, format="png")
 
plt.figure()
 
for i in range(0,9):
    den = [1, zetaRange[i], 1]
    s1 = signal.lti(num, den)
    w, mag, phase = signal.bode(s1, np.arange(0.1, 10, 0.02).tolist())
    plt.semilogx (w, phase, color="red", linewidth="1.1")
plt.xlabel ("Frequency")
plt.ylabel ("Amplitude")
plt.savefig ("c:\\phase.png", dpi=300, format="png")
%

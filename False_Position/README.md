# FalsePosition
## Description 
* 
## Inputs
* **func**-the function being evaluated
* **xl**-the lower guess
* **xu**-the upper guess
* **es**-the desired relative error
* **maxiter**-the number of iterations desired 
## Outputs
* **root**-the estimated root location
* **fx**-the function evaluated at the root location
* **ea**-the approximate relative error (%)
* **iter**-how many iterations were performed
## Limitations 
* This algorithm has defaults if you dont input an es then it defaults to 0.0001% and the matrixer will default to 200 iterations.

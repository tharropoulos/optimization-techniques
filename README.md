# Optimization Techniques


School project for the Optimization Techniques course of the Department of Electrical and Computer Engineering of Aristotle University of Thessaloniki using MATLAB. 
You can find the separate parts of the project in their own branches.
#### Each part follows the following directory layout:

    .
    ├── figures                   # The figures generated from each script
    ├── src                       # Source files
    │   ├── methods               # The implementation of the given methods as MATLAB functions
    │   └── exercises             # The MATLAB scripts needed to answer the questions
    ├── report                    # The report that I made for each part (In Greek)
    └── README.md
    
    
    

## Part 1

In this part of the project, students were tasked to minimize a function $f(x)$ when $x \in [a,b]$ using the 
1. Bisection Method
2. Golden Section Method
3. Fibonacci Search Method
4. Differential Bisection Method

Given the starting set $[-4,4]$, the functions to be minimized were:

* $f_1(x) = (x-3)^2 + sin^2(x+3)$
* $f_2(x) = (x-1) cos(\frac{1}{2} x)$
* $f_3(x) = (x+2)^2 + e^{x-2} sin(x+3)$

Using each method, for a constant precision $l$, each algorithm stops on a set $[a_k, b_k]$ for which the inequality $b_k - a_k \leq l$ persists.

### Exercise 1
##### Question 1
Using the Bisection Method, for $l = 0.01$, study the behavior of the objective function $f_i(x), i=1,2,3$ for different values of the constant $\epsilon > 0$ (distance from the bisection).
##### Question 2
For $\epsilon = 0.001$, study the behavior of the objective functions for different values of the precision constant $l$.

### Exercise 2
Using the Golden Section method, study the behavior of the objective function $f_i(x), i=1,2,3$ for different values of the precision constant $l$.

### Exercise 3
Using the Fibonacci Search method, study the behavior of the objective function $f_i(x), i=1,2,3$ for different values of the precision constant $l$.

### Exercise 4
Using the Differential Bisection method, study the behavior of the objective function $f_i(x), i=1,2,3$ for different values of the precision constant $l$.
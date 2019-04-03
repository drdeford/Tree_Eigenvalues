# Eigenvalues of Rooted Homogeneous Trees

This repository contains code and figures related to the paper <a href="https://arxiv.org/abs/1903.07134"> On the Spectrum of Finite Rooted Homogeneous Trees<a/> joint with my Ph.D. advisor Dan Rockmore. The main theorems in the paper show that for trees with regular branching properties the adjacency spectrum can be realized as the roots of a recursively defined sequence of polynomials and the the associated spectral measures converge to singular distributions. 

The current version contains Sage code for three basic tasks: constructing trees, computing their eigenvalues, and displaying the eigenvalue plots. There is also code for generating simplicial versions of these objects and an @interact tool for computing the endpoints of the limiting distribution for regular trees. In order to run the code online you can copy the code directly to my Sage cell here: <a href="https://people.csail.mit.edu/ddeford/sage_cell"> link </a>. 

The original versions of these tools were developed for exploratory purposes - more polished versions are in development. 
***

#### Interact/multi_trees.sage
This is an interact module for constructing regularly branching trees and computing their eigenvalues. The parameters are the number of branches or nodes adjacent to the root and a list representing the branching pattern. Here is an example of the interface and results for the (\alpha\beta) trees discussed in **Theorem 8**: 
![alt text](https://raw.githubusercontent.com/drdeford/Tree_Eigenvalues/master/Tree_Figures/multi_example.png "MultiTrees Interface")



#### Tree_Software/goes_to_1.sage
Numerical verification tool for **Theorem 9**. Notice that when a_n = n this is just the statement that \lim_{n\rightarrow\infty} \frac{n!-(n-1)!}{\sum_{k=1}^n k!} = 1


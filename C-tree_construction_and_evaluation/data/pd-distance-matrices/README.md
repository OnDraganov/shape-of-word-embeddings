This folder contains distance matrices between word embeddings of 81 Indo-European languages, computed using TDA methods.

The name describes the parameters: pddmat.ethnologue_10k_d2.n10000.<metric_on_embeddings>.<distance_between_persistence_diagrams>.d<persistence_dimension/degree>.txt
n10000 signifies that the first 10000 most frequent tokens from the embeddings were used.

Format of the files:
First line contains space-separated list of language codes. This is the order of columns and rows of the matrix presented.
Following lines contain space-separated values of the distance matrix below the diagonal.

Example:
========
en cs de
0.7
0.3 0.5

This represents following distances: d(cs, en) = 0.7, d(de, en) = 0.3, d(de, cs) = 0.5
This folder contains persistent diagrams for word embeddings.

The name describes the parameters: bars.<language>.300.n10000.<metric_on_embeddings>.d<persistence_dimension/degree>.txt
n10000 signifies that the first 10000 most frequent tokens from the embeddings were used.

Format of the files:
There are persistent homology bars for dimension/degree 0, 1, 2.
Each dimension starts with a single number signifying the dimension, and then a list of bars.
There is one bar per line, birth and death value separated by a space.
Separate dimensions are separated by a single empty line.

Example
=======
0
0.00 0.32
0.00 0.91
0.00 1.23
0.00 2.10
0.00 3.13

1
0.12 0.42
1.23 2.12

2
0.92 1.25
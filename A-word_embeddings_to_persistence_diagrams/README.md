# Download the word embeddings and compute persistent homology bars

## 1) Get word embeddings of different languages as point clouds
The script `1-download_word_embeddings.sh` downloads the embeddings, cuts them to the desired length and produces point-clouds.

## 2) Compute the persistent homology features
You need to install the software `ripser` (so that the executable is `./ripser/ripser`):
https://github.com/Ripser/ripser

The script `2-point_clouds_to_persistence_bars.sh` then computes the persistent homology---inside the script, set the desired degree/dimension.
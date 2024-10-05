# Compute language distance matrices from the collection of persistence diagrams / bars

The persistent diagrams / bars are assumed to be in `./data/bars`.

The script `3-compute_language_distances` generates language distance matrices given persistence diagrams.

Alternatively, the matrices can be generated in a more distributed manner---examples of how to call the scripts to do that are in `3B1-run_slurm_distances_distributed` and for subsequent merging in `3B2-merge_pd_distances_to_matrix`.
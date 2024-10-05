#!/bin/bash

# BELOW ARE A FEW EXAMPLES OF DISTRIBUTED DISTANCE MATRIX CALLS

# # array 0-388
# srun python run_compute_pd_distances_distributed.py \
#     --name "ethnologue_10k_d2" \
#     --output_folder "data/pd-distance-matrices/ethnologue_10k_d2/parts_euclidean/" \
#     --number 10000 \
#     --maxdim 2 \
#     --dimensions 0 1 2 \
#     --metrics "euclidean" \
#     --distances "persistence_image" "bars_statistics" "bottleneck" "sliced_wasserstein" \
#     --languages "af" "als" "an" "as" "ast" "bar" "be" "bg" "bn" "bpy" "br" "bs" "ca" "ckb" "co" "cs" "cy" "da" "de" "diq" "dv" "el" "en" "es" "fr" "frr" "fy" "ga" "gd" "gl" "gom" "gu" "gv" "hi" "hif" "hr" "hsb" "hy" "is" "it" "la" "lb" "li" "lmo" "lt" "mai" "mk" "mr" "mwl" "mzn" "nap" "nds" "nl" "no" "oc" "os" "pa" "pfl" "pl" "pms" "pnb" "pt" "rm" "ro" "ru" "sa" "scn" "sco" "sd" "si" "sk" "sl" "sr" "sv" "tg" "uk" "ur" "vec" "vls" "wa" "zea" \
#     --batch_size 100 \
#     --task_id "${SLURM_ARRAY_TASK_ID}"

# array 0-259
# srun python run_compute_pd_distances_distributed.py \
#     --name "ethnologue_10k_d2" \
#     --output_folder "data/pd-distance-matrices/ethnologue_10k_d2/parts_cosine_01/" \
#     --number 10000 \
#     --maxdim 2 \
#     --dimensions 0 1 \
#     --metrics "cosine" \
#     --distances "persistence_image" "bars_statistics" "bottleneck" "sliced_wasserstein" \
#     --languages "af" "als" "an" "as" "ast" "bar" "be" "bg" "bn" "bpy" "br" "bs" "ca" "ckb" "co" "cs" "cy" "da" "de" "diq" "dv" "el" "en" "es" "fr" "frr" "fy" "ga" "gd" "gl" "gom" "gu" "gv" "hi" "hif" "hr" "hsb" "hy" "is" "it" "la" "lb" "li" "lmo" "lt" "mai" "mk" "mr" "mwl" "mzn" "nap" "nds" "nl" "no" "oc" "os" "pa" "pfl" "pl" "pms" "pnb" "pt" "rm" "ro" "ru" "sa" "scn" "sco" "sd" "si" "sk" "sl" "sr" "sv" "tg" "uk" "ur" "vec" "vls" "wa" "zea" \
#     --batch_size 100 \
#     --task_id "${SLURM_ARRAY_TASK_ID}"

# # array 0-64
srun python run_compute_pd_distances_distributed.py \
    --name "ethnologue_10k_d2" \
    --output_folder "data/pd-distance-matrices/ethnologue_10k_d2/parts_cosine_2_fast/" \
    --number 10000 \
    --maxdim 2 \
    --dimensions 2 \
    --metrics "cosine" \
    --distances "persistence_image" "bars_statistics" \
    --languages "af" "als" "an" "as" "ast" "bar" "be" "bg" "bn" "bpy" "br" "bs" "ca" "ckb" "co" "cs" "cy" "da" "de" "diq" "dv" "el" "en" "es" "fr" "frr" "fy" "ga" "gd" "gl" "gom" "gu" "gv" "hi" "hif" "hr" "hsb" "hy" "is" "it" "la" "lb" "li" "lmo" "lt" "mai" "mk" "mr" "mwl" "mzn" "nap" "nds" "nl" "no" "oc" "os" "pa" "pfl" "pl" "pms" "pnb" "pt" "rm" "ro" "ru" "sa" "scn" "sco" "sd" "si" "sk" "sl" "sr" "sv" "tg" "uk" "ur" "vec" "vls" "wa" "zea" \
    --batch_size 100 \
    --task_id "${SLURM_ARRAY_TASK_ID}"

# # array 0-647
# srun python run_compute_pd_distances_distributed.py \
#     --name "ethnologue_10k_d2" \
#     --output_folder "data/pd-distance-matrices/ethnologue_10k_d2/parts_cosine_2_slow/" \
#     --number 10000 \
#     --maxdim 2 \
#     --dimensions 2 \
#     --metrics "cosine" \
#     --distances "bottleneck" "sliced_wasserstein" \
#     --languages "af" "als" "an" "as" "ast" "bar" "be" "bg" "bn" "bpy" "br" "bs" "ca" "ckb" "co" "cs" "cy" "da" "de" "diq" "dv" "el" "en" "es" "fr" "frr" "fy" "ga" "gd" "gl" "gom" "gu" "gv" "hi" "hif" "hr" "hsb" "hy" "is" "it" "la" "lb" "li" "lmo" "lt" "mai" "mk" "mr" "mwl" "mzn" "nap" "nds" "nl" "no" "oc" "os" "pa" "pfl" "pl" "pms" "pnb" "pt" "rm" "ro" "ru" "sa" "scn" "sco" "sd" "si" "sk" "sl" "sr" "sv" "tg" "uk" "ur" "vec" "vls" "wa" "zea" \
#     --batch_size 10 \
#     --task_id "${SLURM_ARRAY_TASK_ID}"
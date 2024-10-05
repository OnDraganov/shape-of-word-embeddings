#!/bin/bash

# python3 merge_pd_distances_to_matrix.py \
#     --name "ethnologue_10k_d2" \
#     --data_folder "data/pd-distance-matrices/ethnologue_10k_d2/parts_euclidean" \
#     --output_folder "data/pd-distance-matrices/ethnologue_10k_d2/" \
#     --number 10000 \
#     --maxdim 2 \
#     --dimensions 0 1 2 \
#     --metrics "euclidean" \
#     --distances "persistence_image" "bars_statistics" "bottleneck" "sliced_wasserstein" \
#     --languages "af" "als" "an" "as" "ast" "bar" "be" "bg" "bn" "bpy" "br" "bs" "ca" "ckb" "co" "cs" "cy" "da" "de" "diq" "dv" "el" "en" "es" "fr" "frr" "fy" "ga" "gd" "gl" "gom" "gu" "gv" "hi" "hif" "hr" "hsb" "hy" "is" "it" "la" "lb" "li" "lmo" "lt" "mai" "mk" "mr" "mwl" "mzn" "nap" "nds" "nl" "no" "oc" "os" "pa" "pfl" "pl" "pms" "pnb" "pt" "rm" "ro" "ru" "sa" "scn" "sco" "sd" "si" "sk" "sl" "sr" "sv" "tg" "uk" "ur" "vec" "vls" "wa" "zea"

# python3 merge_pd_distances_to_matrix.py \
#     --name "ethnologue_10k_d2" \
#     --data_folder "data/pd-distance-matrices/ethnologue_10k_d2/parts_cosine_01" \
#     --output_folder "data/pd-distance-matrices/ethnologue_10k_d2/" \
#     --number 10000 \
#     --maxdim 2 \
#     --dimensions 0 1 \
#     --metrics "cosine" \
#     --distances "persistence_image" "bars_statistics" "bottleneck" "sliced_wasserstein" \
#     --languages "af" "als" "an" "as" "ast" "bar" "be" "bg" "bn" "bpy" "br" "bs" "ca" "ckb" "co" "cs" "cy" "da" "de" "diq" "dv" "el" "en" "es" "fr" "frr" "fy" "ga" "gd" "gl" "gom" "gu" "gv" "hi" "hif" "hr" "hsb" "hy" "is" "it" "la" "lb" "li" "lmo" "lt" "mai" "mk" "mr" "mwl" "mzn" "nap" "nds" "nl" "no" "oc" "os" "pa" "pfl" "pl" "pms" "pnb" "pt" "rm" "ro" "ru" "sa" "scn" "sco" "sd" "si" "sk" "sl" "sr" "sv" "tg" "uk" "ur" "vec" "vls" "wa" "zea"

# python3 merge_pd_distances_to_matrix.py \
#     --name "ethnologue_10k_d2" \
#     --data_folder "data/pd-distance-matrices/ethnologue_10k_d2/parts_cosine_2_fast" \
#     --output_folder "data/pd-distance-matrices/ethnologue_10k_d2/" \
#     --number 10000 \
#     --maxdim 2 \
#     --dimensions 2 \
#     --metrics "cosine" \
#     --distances "persistence_image" "bars_statistics" \
#     --languages "af" "als" "an" "as" "ast" "bar" "be" "bg" "bn" "bpy" "br" "bs" "ca" "ckb" "co" "cs" "cy" "da" "de" "diq" "dv" "el" "en" "es" "fr" "frr" "fy" "ga" "gd" "gl" "gom" "gu" "gv" "hi" "hif" "hr" "hsb" "hy" "is" "it" "la" "lb" "li" "lmo" "lt" "mai" "mk" "mr" "mwl" "mzn" "nap" "nds" "nl" "no" "oc" "os" "pa" "pfl" "pl" "pms" "pnb" "pt" "rm" "ro" "ru" "sa" "scn" "sco" "sd" "si" "sk" "sl" "sr" "sv" "tg" "uk" "ur" "vec" "vls" "wa" "zea"

python3 merge_pd_distances_to_matrix.py \
    --name "ethnologue_10k_d2" \
    --data_folder "data/pd-distance-matrices/ethnologue_10k_d2/parts_cosine_2_slow" \
    --output_folder "data/pd-distance-matrices/ethnologue_10k_d2/" \
    --number 10000 \
    --maxdim 2 \
    --dimensions 2 \
    --metrics "cosine" \
    --distances "bottleneck" "sliced_wasserstein" \
    --languages "af" "als" "an" "as" "ast" "bar" "be" "bg" "bn" "bpy" "br" "bs" "ca" "ckb" "co" "cs" "cy" "da" "de" "diq" "dv" "el" "en" "es" "fr" "frr" "fy" "ga" "gd" "gl" "gom" "gu" "gv" "hi" "hif" "hr" "hsb" "hy" "is" "it" "la" "lb" "li" "lmo" "lt" "mai" "mk" "mr" "mwl" "mzn" "nap" "nds" "nl" "no" "oc" "os" "pa" "pfl" "pl" "pms" "pnb" "pt" "rm" "ro" "ru" "sa" "scn" "sco" "sd" "si" "sk" "sl" "sr" "sv" "tg" "uk" "ur" "vec" "vls" "wa" "zea"
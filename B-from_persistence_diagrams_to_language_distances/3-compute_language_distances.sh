#!/bin/zsh

# note that bottleneck and sliced_wasserstain are slow compared to persistence_image and bars_statistics

python run_compute_pd_distances.py \
    --name "euthnologue_10k_d2" \
    --number 10000 \
    --dimension 2 \
    --metrics "euclidean" "cosine" \
    --distances "bottleneck" "sliced_wasserstein" "persistence_image" "bars_statistics" \
    --languages "af" "als" "an" "as" "ast" "bar" "be" "bg" "bn" "bpy" "br" "bs" "ca" "ckb" "co" "cs" "cy" "da" "de" "diq" "dv" "el" "en" "es" "fr" "frr" "fy" "ga" "gd" "gl" "gom" "gu" "gv" "hi" "hif" "hr" "hsb" "hy" "is" "it" "la" "lb" "li" "lmo" "lt" "mai" "mk" "mr" "mwl" "mzn" "nap" "nds" "nl" "no" "oc" "os" "pa" "pfl" "pl" "pms" "pnb" "pt" "rm" "ro" "ru" "sa" "scn" "sco" "sd" "si" "sk" "sl" "sr" "sv" "tg" "uk" "ur" "vec" "vls" "wa" "zea" \
    --task_id "${SLURM_ARRAY_TASK_ID}"  # if not given, runs everything; for purposes of distributed computation, a number can be given to run a single task (a single triplet (metric, dim, distance))
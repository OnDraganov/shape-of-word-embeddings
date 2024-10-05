#!/bin/zsh

PATH_POINT_CLOUDS="./data/point-clouds"
PATH_DISTANCE_MATRICES="./data/distance-matrices"
PATH_BARS="./data/bars"

MAXDIM=2  # Maximal degree of persistent homology to be computed. Every additional degree significantly increases complexity.
NUMBER_OF_WORDS=10000  # Only the first NUMBER_OF_WORDS tokens will be used from each point cloud.

REMOVE_MATRICES=true  # If true, the token-to-token distance matrices are removed after the bars are computed

echo "Generate barcodes start: $(date)"
TIME_START=`date +%s`  # to measure the time the script takes
for METRIC in "euclidean" "cosine"; do  # token-to-token distance notion to use
    # "af" "als" "an" "as" "ast" "bar" "be" "bg" "bn" "bpy" "br" "bs" "ca" "ckb" "co" "cs" "cy" "da" "de" "diq" "dv" "el" "en" "es" "fr" "frr" "fy" "ga" "gd" "gl" "gom" "gu" "gv" "hi" "hif" "hr" "hsb" "hy" "is" "it" "la" "lb" "li" "lmo" "lt" "mai" "mk" "mr" "mwl" "mzn" "nap" "nds" "nl" "no" "oc" "os" "pa" "pfl" "pl" "pms" "pnb" "pt" "rm" "ro" "ru" "sa" "scn" "sco" "sd" "si" "sk" "sl" "sr" "sv" "tg" "uk" "ur" "vec" "vls" "wa" "zea"
    for LANG in "cs" "en"; do  # pick languages to compute from the list above
        TIME_START_LANG=`date +%s`
        echo "Processing language ${LANG}, the first ${NUMBER_OF_WORDS} words, metric ${METRIC}, maxdim ${MAXDIM}."
        NAME="${LANG}.300.n${NUMBER_OF_WORDS}.${METRIC}"
        FILENAME_DMAT="${PATH_DISTANCE_MATRICES}/dmat.${NAME}.txt"
        FILENAME_BARS="${PATH_BARS}/bars.${NAME}.d${MAXDIM}.txt"
        head -n $NUMBER_OF_WORDS "${PATH_POINT_CLOUDS}/point-cloud.${LANG}.300.cut10k.vec" \
            | python3 compute_point-cloud_distance_matrix.py --metric $METRIC \
            > "${FILENAME_DMAT}"
        echo "    Distance matrix generated. Computing bars."
        ./ripser/ripser --format lower-distance --dim $MAXDIM "${PATH_DISTANCE_MATRICES}/dmat.${NAME}.txt" \
            | python3 ripser_output_to_bars.py \
            > "${FILENAME_BARS}"
        if ${REMOVE_MATRICES}
        then
            rm "${FILENAME_DMAT}"
        fi
        TIME_END_LANG=`date +%s`
        RUNTIME_LANG=$((TIME_END_LANG-TIME_START_LANG))
        echo "    Time taken: ${RUNTIME_LANG} s"
    done
done
TIME_END=`date +%s`
RUNTIME=$((TIME_END-TIME_START))
echo "Generate barcodes end. Time taken: ${RUNTIME} s"

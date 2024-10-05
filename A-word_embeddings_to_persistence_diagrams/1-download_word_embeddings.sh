#!/bin/bash

# Download the word embeddings from FastText

RAW_FOLDER="data/raw"
POINT_CLOUD_FOLDER="data/point-clouds"

for LANG in af als an as ast bar be bg bn bpy br bs ca ckb co cs cy da de diq dv el en es fr frr fy ga gd gl gom gu gv hi hif hr hsb hy is it la lb li lmo lt mai mk mr mwl mzn nap nds nl no oc os pa pfl pl pms pnb pt rm ro ru sa scn sco sd si sk sl sr sv tg uk ur vec vls wa zea; do
    TIME_START=`date +%s`
    echo "[INFO] Getting data for language \"${LANG}\""
    curl "https://dl.fbaipublicfiles.com/fasttext/vectors-crawl/cc.${LANG}.300.vec.gz" \
        --output "${RAW_FOLDER}/cc.${LANG}.300.vec.gz"
    gunzip -v "${RAW_FOLDER}/cc.${LANG}.300.vec.gz"  # by default removes the archive after unzipping
    head -n 10001 "${RAW_FOLDER}/cc.${LANG}.300.vec" > "${RAW_FOLDER}/cc.${LANG}.300.cut10k.vec"  # Keep only the first 10'000 tokens. The first line is metadata, the first token is on the second line.
    rm "${RAW_FOLDER}/cc.${LANG}.300.vec"
    echo "[INFO] Finished getting data for language \"${LANG}\""
    echo "[INFO] Generating point-cloud"
    python3 "raw_to_point_cloud.py" "${RAW_FOLDER}/cc.${LANG}.300.cut10k.vec" "${POINT_CLOUD_FOLDER}/point-cloud.${LANG}.300.cut10k.vec"  # remove the first line and the token labels
    rm "${RAW_FOLDER}/cc.${LANG}.300.cut10k.vec"
    TIME_END=`date +%s`
    RUNTIME=$((TIME_END-TIME_START))
    echo "[INFO] ${LANG} done! (time: ${RUNTIME} s)"
    echo ""
done
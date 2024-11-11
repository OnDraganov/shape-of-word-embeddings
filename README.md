# The Shape of Word Embeddings: Quantifying Non-Isometry With Topological Data Analysis
Scripts used for the analysis in a paper
"[The Shape of Word Embeddings: Quantifying Non-Isometry With Topological Data Analysis](https://aclanthology.org/2024.findings-emnlp.705/)"
by Ondřej Draganov and Steven Skiena.

Most of the code is in Python with shell skripts connecting various Python scripts together.
The final analysis is in a Jupyter Notebook,

The code here is split in three parts:
- A-word_embeddings_to_persistence_diagrams
- B-from_persistence_diagrams_to_language_distances
- C-tree_construction_and_evaluation

Each folder has its own README file with more details.

To run the analysis, follow the numbered files:
- 1-download_word_embeddings.sh
- 2-point_clouds_to_persistence_bars.sh
- 3-compute_language_distances.sh
- 4-construct_and_evaluate_trees.ipynb
- 5-summary_figures.ipynb

The folder structure is set up and empty in the repository.
Contents of the folders with the same names should be copied from one step to the next.
You can also edit the paths in the script to avoid data duplication.

# Questions

In case of any questions, do not hesitate to contact me (see the GitHub profile) or raise an issue at the repository.

# Cite

To cite the code, please cite the paper:

Ondřej Draganov and Steven Skiena. 2024. [The Shape of Word Embeddings: Quantifying Non-Isometry with Topological Data Analysis](https://aclanthology.org/2024.findings-emnlp.705/). In _Findings of the Association for Computational Linguistics: EMNLP 2024_, pages 12080–12099, Miami, Florida, USA. Association for Computational Linguistics.

BibTeX:
```
@inproceedings{draganov-skiena-2024-shape,
    title = {The Shape of Word Embeddings: Quantifying Non-Isometry with Topological Data Analysis},
    author = {Draganov, Ond{\v{r}}ej and Skiena, Steven},
    booktitle = {Findings of the Association for Computational Linguistics: EMNLP 2024},
    month = {11},
    year = {2024},
    address = {Miami, Florida, USA},
    publisher = {Association for Computational Linguistics},
    url = {https://aclanthology.org/2024.findings-emnlp.705},
    pages = {12080--12099}
}
```


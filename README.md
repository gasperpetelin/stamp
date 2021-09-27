# STAMP

![STAMP](docs/pipeline.png)

---

## Data

Results for individual steps of the analysis are available [here](https://portal.ijs.si/nextcloud/s/Fi35sGdwk66fTR9). Results of different pipeline steps are organized into subdirectories:

- 48x48 coverage matrix

    Results of performing hierarchical clustering on 2304 (48x48) codebooks obtained with running SOM clustering. The output is a collection of 2304 instances clustered into 6 distinct clusters.

- Instance level all

    TODO

- Instance level selection

    TODO

- Bootstrapping statistical evaluation

    TODO

- SOM evaluation

    A collection of different quality measures obtained during SOM clustering. Quality measures are reported SOM with different numbers of codebooks.

---

## Code

- `Bootstrapping_statistical_evaluation.R`

    TODO

- `SOM_training.R`

    Train a self-organizing map on feature vectors extracted from time series instances.

- `augumenting_target.ipynb`

    TODO

- `build_descriptive_space.ipynb`

    TODO

- `clustering_som_codebooks.py`

    Perform clustering on 2304 codebooks obtained with SOM. Different clustering approaches (hierarchical clustering, K-means) are tested to discover what approach produces the best coverage matrix.

- `clustering_som_codebooks_viz.ipynb`

    Visualization of clusters and metrics describing the quality of obtained clustering results.

- `coverage_matrix.R`

    Compute a coverage matrix that describes how instances of a particular dataset are distributed over multiple obtained clusters.

- `coverage_matrix_viz.ipynb`

    Visualize a computed coverage matrix.

- `instance_results_analysis.ipynb`

    TODO

- `test_script.ipynb`

    TODO

- `time_series_classification_HIVE_COTE.py`

    TODO

- `training_models.ipynb`

    TODO

- `training_models_run2.ipynb`

    TODO

- `training_models_run3.ipynb`

    TODO

- `util.py`

    Ubility functions

---
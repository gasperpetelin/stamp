# stamp

## Data

### Reproducibility (in progress)

https://portal.ijs.si/nextcloud/s/Fi35sGdwk66fTR9

### Existing

https://portal.ijs.si/nextcloud/s/bYGaCcemSJa3mYk

## Running/Requirements

1. Install [Miniconda](https://conda.io/en/latest/miniconda.html)
2. Clone a specific branch and move into the directory
```bash
git clone  https://github.com/gasperpetelin/stamp stamp
cd stamp
```
3. Create and switch environment
```bash
make env
conda activate ./env
```
4. Running Snakemake
```bash
snakemake -j --snakefile workflow/Snakefile --use-conda
```
# SCARDINI++ Pipeline

## Purpose

This script creates a combined csv of Sparrow, CIDER, and NARDINI+ sequence parameters from a FASTA file. By default, Z_scores from NARDINI+ are calculated using S. Cerevisiae as reference. 

## Installation 
1) Clone the repo (or download all files)
2) Install the conda environment:

```
conda env create -f environment.yml
```
3) Activate the environemnt
```
conda activate scardini
```
3) Install localcider
```
pip install localcider 
```
4) Install sparrow
```
pip install git+https://git@github.com/idptools/sparrow.git
```

5) Open the ipynb file with VSCode or similar, and set the kernel to scardini
6) Update the fasta filename, or use the demo fasta (default)
7) Run all cells

## Output
The script will create a comma separated values file containing sequence name and the sequence (imported from FASTA), together with all the analysis parameters for each

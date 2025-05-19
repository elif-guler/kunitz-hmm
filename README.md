# Hidden Markov Model for Identifying the Kunitz Domain

This project presents a Hidden Markov Model (HMM)-based approach to identify the Kunitz domain in protein sequences across species. 
The model was developed and tested using positive and negative datasets obtained from protein databases. 
Data preprocessing steps, including sequence alignment and clustering, were performed to make sure the quality and diversity of the input data.  

## Project Objectives

- To build a HMM that can detect the Kunitz domain across various protein sequences.
- To validate the model's generalization capacity using multiple evaluation techniques such as ROC curves, confusion matrices, and learning curves.

## Features

- **Data Extraction and Preparation**: Protein sequences containing Kunitz domains were taken from the PDB and UniProt databases. Sequences were filtered by length and resolution criteria to have high quality inputs.
- **Multiple Sequence Alignment**: Sequences were aligned to identify conserved positions within the domain.
- **Model Construction**: The HMM was built by using HMMER and trained on aligned sequences.
- **Evaluation**: Model performance was assessed using a test set and visualized with confusion matrices, ROC curves, and learning curves.

## Requirements

- Python
- HMMER
- Pandas, NumPy, Biopython, Matplotlib

## How to Run

1. Prepare your input FASTA files with protein sequences.
2. Use the scripts to prepare the data for the model
3. Run the HMMER pipeline for training or searching.
4. Use the scripts for data visualization and evaluation.

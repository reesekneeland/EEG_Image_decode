#!/bin/bash
# Commands to setup a new conda environment and install all the necessary packages
# See the environment.yaml file for "conda env export > environment.yaml" after running this.

set -e

mamba create -n dongyang python=3.10.8 -y
mamba activate dongyang

mamba install numpy matplotlib tqdm scikit-image jupyterlab -y
mamba install -c conda-forge accelerate -y

pip install clip-retrieval clip pandas matplotlib ftfy regex kornia umap-learn
pip install dalle2-pytorch

pip install open_clip_torch

pip install transformers==4.28.0
pip install diffusers==0.24.0

pip install braindecode==0.8.1

pip install torchvision==0.15.2 torch==2.0.1

pip install info-nce-pytorch==0.1.0
pip install pytorch-msssim

pip install reformer_pytorch

pip install mne
pip install wandb
pip install einops

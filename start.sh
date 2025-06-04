#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Step 1: Create and activate a virtual environment
python3 -m venv venv
source venv/bin/activate

# Step 2: Create project directory
mkdir -p NALTP-chatbot

# Step 3: Clone the Hugging Face Transformers repository
git clone https://github.com/huggingface/transformers.git
cd transformers

# Step 4: Install Transformers in editable mode
pip install -e .

# Step 5: Copy required files to NALTP-chatbot
cd examples/pytorch/language-modeling
cp run_clm.py requirements.txt ../../../../NALTP-chatbot/

echo "✅ Setup complete. Files copied to ./NALTP-chatbot/"

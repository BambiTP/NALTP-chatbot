# NALTP Chatbot Training

Fine-tune GPT-2 on your own dialogue data using Hugging Face Transformers.

## 🛠 Setup Instructions

```bash
# Run setup script (creates venv, project folder, and clones transformers)
./start.sh

# Download the training file and place it in NALTP-chatbot/
# https://drive.google.com/file/d/13hJNCW2af1Hu6StoM1BjjFVUYj2odtYw/view?usp=sharing

# Activate virtual environment
source venv/bin/activate

# Go to project folder and install dependencies
cd NALTP-chatbot
pip install -r requirements.txt
```

## 🚀 Run Training
# Ask chatgpt for the best options 
# you can change the model to whatever you want
```bash
python run_clm.py \
  --model_name_or_path gpt2 \
  --train_file train.txt \
  --validation_file train.txt \
  --do_train \
  --do_eval \
  --output_dir ./results \
  --per_device_train_batch_size 2 \
  --num_train_epochs 3
```

## ⚙️ Common Options

--model_name_or_path: base model name (e.g. gpt2) or local path  
--train_file / --validation_file: training data in .txt, .json, or .csv  
--do_train / --do_eval: whether to train and evaluate  
--output_dir: where to save checkpoints and model  
--per_device_train_batch_size: batch size per device (adjust to fit RAM/VRAM)  
--num_train_epochs: how many times to go over the training data  

Optional:

--overwrite_output_dir: replace any previous run  
--save_steps 500: save checkpoint every 500 steps  
--logging_steps 100: log metrics every 100 steps  
--fp16: use mixed precision (GPU only)  
--push_to_hub: upload to Hugging Face Hub  

## ✅ After Training

Your model and tokenizer will be saved in:

```
NALTP-chatbot/results/
```

# 🤗 AutoTrain Advanced - Intel NLU fork

AutoTrain Advanced: faster and easier training and deployments of state-of-the-art machine learning models

## Documentation

Documentation is available [here](https://hf.co/docs/autotrain/).

## Installation

You can Install AutoTrain-Advanced python package via PIP. Please note you will need python >= 3.8 for AutoTrain Advanced to work properly.

    git clone https://github.com/danielkorat/autotrain-advanced.git
    cd autotrain-advanced
    pip install . -e

Additionally, add the follwing variables to you ~/.bashrc file:

    export HF_USERNAME="Your HF username"
    export HF_KEY="Your HF API Key"
    export ENV_NAME="project_python_env"
    
Please make sure that you have git lfs installed. Check out the instructions here: https://github.com/git-lfs/git-lfs/wiki/Installation

## LLM Fine-Tuning (SLURM)

Edit and run `preprocess.ipynb` to pre-process your desired dataset by formatting each example with your prompt template, and uploading the new dataset to your HF Hub.

Then, edit the training arguments in `finetune.sh` and run:

    sbatch finetune.sh

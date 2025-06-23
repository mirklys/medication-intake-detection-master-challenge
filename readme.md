# A quick overview of what is inside this repo

## Report folder
Includes a technical description of the project in .pdf format as well as all the required files to build the pdf

## annotations.csv
annotated videos batch I

## combined.csv
annotated videos batch I + batch II

## finetune.ipynb
Notebook used for finetuning, uses frames_annotation.csv as well as [.... insert frame generation notebook name here (still to be added to main)]

## medication-intake-detection.ipynb

**Main notebook** where finetuned model is loaded and model is defined for predicting labels from videos

## extract_frames.bat 
A script that extracts 10 frames from each video's first 10 seconds of the dataset (85 videos, so 850 frames). To run it, ensure the video folder and the script file are in the same directory, and ffmpeg is installed.

## frames_annotations.csv
Annotations for each of the 10 frames per video. Labeled with either "taking_medication" or "not_taking_medication". Used for fine-tuning.

## finetune.ipynb
Notebook in which the fine-tuning process is done. 

## inference.ipynb
Notebook in which inference is demonstrated by loading the fine-tuned model from the HuggingFace repository and ran with some sample images.

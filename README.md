## extract_frames.bat 
A script that extracts 10 frames from each video's first 10 seconds of the dataset (85 videos, so 850 frames). To run it, ensure the video folder and the script file are in the same directory, and ffmpeg is installed.

## frames_annotations.csv
Annotations for each of the 10 frames per video. Labeled with either "taking_medication" or "not_taking_medication". Used for fine-tuning.

## finetune.ipynb
Notebook in which the fine-tuning process is done. 

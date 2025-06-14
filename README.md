README.txt
----------

Project Title:
Fashion MNIST Image Classification using Python and R

Project Description:
This project uses a Convolutional Neural Network (CNN) built with Python and Keras to classify images from the Fashion MNIST dataset. The model predicts the type of clothing for test images. The predictions are analyzed in R to evaluate performance using a confusion matrix and a bar chart.

Contents:
1. Fashion_MNIST.ipynb      - Python script that builds, trains, and evaluates the CNN model.
2. predictions.csv          - Output file with predicted and actual labels for 100 test images.
3. Fashion_MNIST.R          - R script that loads the predictions, calculates evaluation metrics, and creates a plot.
4. README.txt               - Instructions for running the project.

----------------------------------------------------
How to Use This Project (Python + R):
----------------------------------------------------

This project works on:
- Google Colab (no installation needed)
- Local Python and R environments (with setup)

------------------------------
Option 1 – Google Colab Setup:
------------------------------

1. Go to: https://colab.research.google.com
2. Upload or open `Fashion_MNIST.ipynb` from your GitHub repository.
3. Run all cells in order. The script will:
   - Load and preprocess Fashion MNIST data
   - Train a 6-layer CNN
   - Show predictions for 2 images
   - Save 100 predictions to `predictions.csv`

4. Download `predictions.csv` from Colab after it runs.

--------------------------------
Option 2 – Local Python (Optional):
--------------------------------

1. Install Python 3, TensorFlow, and required packages:
   pip install tensorflow matplotlib pandas numpy

2. Run the script:
   Fashion_MNIST.ipynb

3. It will create a file called `predictions.csv`.

--------------------------------
R Script Instructions (Local or Colab):
--------------------------------

1. Open `Fashion_MNIST.R` in RStudio or an R environment.
2. Make sure `predictions.csv` is in the same folder.
3. Run the script. It will:
   - Read predictions
   - Generate a confusion matrix and accuracy stats
   - Create a bar chart comparing predicted vs actual classes

If packages are missing, install them with:

install.packages("caret")
install.packages("ggplot2")
install.packages("readr")
install.packages("dplyr")

----------------------------------------------------
Uses Both Python and R:
----------------------------------------------------

Python is used to create the deep learning model because of its strong support for TensorFlow and Keras. R is used to explore and visualize the model’s predictions using ggplot2 and caret.

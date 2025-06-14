# Load required packages
library(readr)
library(dplyr)
library(ggplot2)
library(caret)

# Read the prediction results from Python
preds <- read_csv("predictions.csv")

# View the first few rows
print(head(preds))

# Generate a confusion matrix
confusion <- confusionMatrix(
  factor(preds$Predicted, levels = unique(preds$Actual)),
  factor(preds$Actual, levels = unique(preds$Actual))
)

# Print the full classification report
print(confusion)

# Plot a bar chart comparing actual vs predicted classes
ggplot(preds, aes(x = Actual, fill = Predicted)) +
  geom_bar(position = "dodge") +
  labs(
    title = "Predicted vs Actual Classes",
    x = "Actual Class",
    y = "Count",
    fill = "Predicted Class"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


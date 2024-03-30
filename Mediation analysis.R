# Load the necessary libraries
library(ggplot2)
library(semPlot)

# Create a bar plot to visualize the path coefficients
bar_plot <- ggplot(path_data, aes(x = path, y = coefficient, fill = path)) +
  geom_bar(stat = "identity", position = position_dodge()) +
  geom_text(aes(label = round(coefficient, 3)), vjust = -0.3, size = 4) +
  theme_minimal() +
  theme(legend.position = "none") +
  ylab("Coefficient") +
  xlab("Path") +
  ggtitle("Mediation Analysis Results")

# Plot the bar plot
print(bar_plot)

# Plot the mediation diagram with path estimates
semPaths(mediation_fit, whatLabels = "est", style = "lisrel", intercepts = FALSE)
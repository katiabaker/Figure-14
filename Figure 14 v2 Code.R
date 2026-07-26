library(ggplot2)
library(readr)

# Load data and clean missing data markers
data <- read_csv("figure14_data.csv", na = c("", "N?A"))

head(data)
colnames (data)
# Convert reporting score into a categorical variable
data$`Total Reporting Score` <- as.factor(data$`Total Reporting Score`)

# Plot 1: Citation Count vs Reporting Score
plot <- ggplot(data, aes(x = `Total Reporting Score`, y = `Scopus Citation Count`)) +
  geom_point(size = 4, color = "#1E90FF", alpha = 0.6) +
  scale_x_discrete(limits = c("1", "2","3")) +
  labs(
    title = "Figure 14: Citation Impact vs. Reporting Quality",
    subtitle = "Comparing Scopus Citation Counts across Total Reporting Scores",
    x = "Total Reporting Score (Sex, Age, Race)",
    y = "Scopus Citation Count",
    caption = "Each point represents an individual article. Reporting quality is the completeness of reporting participant demograhic characteristics (age, sex, race/ethnicity). Higher 
    reporting quality indicates more comprehensive reporting. "
  ) +
theme_minimal() +
theme(
  plot.title = element_text(face = "bold", size = 14),
  text = element_text(),
  plot.caption = element_text(size = 8, hjust = 0.4),
  )

print(plot)


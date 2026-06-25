library(ggplot2)
library(readr)

# 1. Load data and clean missing data markers
data <- read_csv("figure14_data.csv", na = c("", "N?A"))

head(data)
colnames(data)
# Convert reporting score into a categorical variable
data$`Total Reporting Score` <- as.factor(data$`Total Reporting Score`)

# Plot 1: Citation Count vs Reporting Score
plot1 <- ggplot(data, aes(x = `Total Reporting Score`, y = `Scopus Citation Count`)) + 
  geom_point(size = 4, color = "#1E90FF", alpha = 0.6) + 
  scale_x_discrete(limits = c("1", "2", "3")) +
  labs(
    title = "Figure 14: Citation Impact vs. Reporting Quality",
    subtitle = "Comparing Scopus Citation Counts across Total Reporting Scores",
    x = "Total Reporting Score (Sex, Age, Race)",
    y = "Scopus Citation Count"
  ) +
  theme_minimal(base_family = "Helvetica") +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    text = element_text(family = "Helvetica")
    )

print(plot1)

# Plot 2: Citation Density vs. Years Since Publication
plot2 <- ggplot(data, aes(x = `Years Since Publication`, y = `Citation Density`)) + 
  geom_jitter(width = 0.15, size = 3, color = "#1E90FF", alpha = 0.7) + 
  labs(
    title = "Figure 14: Citation Density vs. Years Since Publication",
    subtitle = "Comparing Scopus Citation Counts across Years Since Publication",
    x = "Years Since Publication",
    y = "Citation Density (Scopus Citation Count/Years Since Publication)"
  ) +
  theme_minimal(base_family = "Helvetica") +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    text = element_text(family = "Helvetica")
    )
print(plot2)


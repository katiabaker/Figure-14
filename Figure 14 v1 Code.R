library(ggplot2)

# Citation Density vs Reporting Quality
papers <- data.frame(
  Article = letters[1:11],
  
  Citation_Density = c(6.4, 37.4, 5.38, 7, 6, 1.2, 1.75, 0.2, 0, 5.33, 24.75 ),
  
  Reporting_Quality = c(2, 2, 2, 1, 2, 2, 2, 2, 2, 1, 2)
)

plot1 <- ggplot(papers, aes(x = factor(Reporting_Quality), y = Citation_Density)) +
  geom_point(size = 3, color = "#1E90FF", alpha = 0.4) +
  scale_x_discrete(limits = c("1", "2")) + 
  scale_y_continuous(
    limits = c(0,40),
    breaks = seq(0, 40, by = 4)) +
  labs(
    title = "Figure 14. Citation Density vs Reporting Quality",
    subtitle = "Comparing Scopus citation densities across the total reporting scores in the literature",
    x = "Reporting Quality",
    y = "Citation Density",
    caption = "Each point represents an individual article. Reporting quality is the completeness of reporting participant demograhic characteristics (age, sex, race/ethnicity). Higher 
    reporting quality indicates more comprehensive reporting. "
  ) +
  theme_minimal() +
  theme(
  plot.title = element_text(face = "bold", size = 14),
  axis.title = element_text(),
  axis.text = element_text(),
  plot.caption = element_text(size = 8, hjust = 0.4),
  
  panel.background = element_rect(fill = "white", color = NA),
  plot.background = element_rect(fill = "white", color = NA),

  panel.grid.major = element_line(color = "#b5b7ba"),
  panel.grid.minor = element_line(color = "#b5b7ba")
  )

print(plot1)


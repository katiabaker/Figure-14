library(ggplot2)

# Citation Density vs Reporting Quality
papers <- data.frame(
  Article = letters[1:11],
  
  Citation_Density = c(6.4, 37.4, 5.38, 7, 6, 1.2, 1.75, 0.2, 0, 5.33, 24.75),
  
  Reporting_Quality = c(2, 2, 2, 1, 2, 2, 2, 2, 2, 1, 2)
)

plot1 <- ggplot(papers, aes(x = Reporting_Quality, y = Citation_Density)) +
  geom_point(size = 3, color = "#1E90FF", alpha = 0.4) +
  scale_x_discrete(limits = c("1", "2")) + 
  scale_y_continuous(
    limits = c(0,40),
    breaks = seq(0, 40, by = 4)) +
  labs(
    title = "Figure 14. Citation Density vs Reporting Quality",
    subtitle = "Comparing Scopus citation densities across the total reporting scores in the literature",
    x = "Demographic Reporting Quality",
    y = "Citation Density",
    caption = "Each point represents an individual article. Reporting quality is determined by assigning one point each to the reporting of participant age, sex, or race. 
    Higher points indicate more participant characteristics known. "
  ) +
  theme_minimal() +
  theme(
  plot.title = element_text(face = "bold", size = 12, family = "sans"),
  axis.title = element_text(family = "sans", color = "black"),
  axis.text = element_text(family = "sans", color = "black"),
  plot.caption = element_text(family = "sans", size = 8, hjust = 0.35),
  axis.line.y = element_line(color = "black", linewidth = 0.008), 
  axis.line.x = element_line(color = "black", linewidth = 0.008),
  
  panel.background = element_rect(fill = "white", color = NA),
  plot.background = element_rect(fill = "white", color = NA),

  panel.grid.major = element_line(color = "#b5b7ba"),
  panel.grid.minor = element_line(color = "#b5b7ba")
  )
  ggsave( "plot.png", plot = plot1, width = 24,
        height = 12, units = "in", dpi = 600)
print(plot1)


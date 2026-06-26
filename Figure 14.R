library(ggplot2)

# Citation Density vs Reporting Quality
papers <- data.frame(
  Article = letters[1:15],
  
  Citation_Density = c(5.89, 6.4, 37.4, 5.38, 4, 5.67, 7, 2, 6, 1.2, 1.75, 0.2, 0, 5.33, 24.75 ),
  
  Reporting_Quality = c(2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1, 2)
)

plot1 <- ggplot(papers, aes(x = factor(Reporting_Quality), y = Citation_Density)) +
  geom_point(size = 2, color = "#1E90FF", alpha = 0.6) +
  scale_x_discrete(limits = c("1", "2")) + 
  labs(
    title = "Citation Density vs Reporting Quality",
    x = "Reporting Quality",
    y = "Citation Density"
) +
  theme_minimal() +
  theme(
  plot.title = element_text(face = "bold", size = 14),
  axis.title = element_text(),
  axis.text = element_text(),
  
  panel.background = element_rect(fill = "white", color = NA),
  plot.background = element_rect(fill = "white", color = NA),

  panel.grid.major = element_line(color = "#b5b7ba"),
  panel.grid.minor = element_line(color = "#b5b7ba")
  )

print(plot1)

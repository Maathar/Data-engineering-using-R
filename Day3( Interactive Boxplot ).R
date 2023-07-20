#Day3 Coding

# Creating an Interactive Boxplot
library(plotly)

#reates a boxplot for midwest dataset using percollege variable by the state variable using the plot_ly() function.
#The plot_ly() function creates an interactive visualization that can be embedded in a web page.
fig <- plot_ly(midwest, x = ~percollege, color = ~state, type = "box")

#adds a title to the plot and sets the background color of the plot.
fig = fig %>% layout(title = 'Interactive Boxplots',font=t, plot_bgcolor = "#e5ecf6")
fig

# Saving your plotly
library(htmlwidgets)
saveWidget(fig, "plotly1.html")

#___________________________________________________________________________________________________________

# Trying diffrent Fonts for the Interactive Boxplot.
# Add font=t to the layout function above
t <- list(
  family = "Courier New",
  size = 14,
  color = "blue")

t1 <- list(
  family = "Times New Roman",
  color = "red")

t2 <- list(
  family = "Courier New",
  size = 14,
  color = "green")

t3 <- list(family = 'Arial')

# https://plotly-r.com/index.html
# https://plotly.com/r/box-plots/

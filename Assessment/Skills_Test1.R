library(ggplot2)

ggplot(diamonds, aes(x = carat, y = price, colour = cut, label = )) + 
  geom_point()+ 
  
  #reverse the y axis 
  scale_y_reverse()+
  
  #change the scale to bunch up the data
  xlim(0,100)+
  
  #change the colours to make them nearly all the same
  scale_color_manual(values=c("deeppink", "deeppink2", "deeppink3","deeppink4","hotpink"))+
  
  theme(
    #make the legend background and text colours too hard to read
    #make legend too big and position the it over the graph
    legend.background = element_rect(fill = "black", size = 60, colour = "gray10"),
    legend.justification = c(2, 2),
    legend.position = c(0.5, 1),
    
    #make the chart background white
    panel.background = element_rect(fill = "white"),
    
    #change gridlines to white
    panel.grid.major = element_line(colour = "white"),
    
    #or just remove the gridlines completely
    panel.grid.minor = element_blank(),
    
    #remove axis labels
    axis.title.x = element_blank(), 
    axis.title.y = element_blank(),
    
    #make the axis ticks so wide they are useless
    axis.ticks = element_line(size = 40),
    
    #make the font TNR, italic, really big and upsidedown
    axis.text = element_text(colour = "azure2",
                             angle = -180,
                             face = "italic",
                             family = "Times",
                             size = 50 )
)
  
 



library(htmlwidgets)




## @knitr leaflet1
library(leaflet)
m = leaflet() %>% 
addTiles() %>%
setView(-110.950282, 32.232402, zoom = 17) %>%
addPopups(-110.950282, 32.232906, 'Here is the <b>Department of Spanish and Portuguese</b>, UofA')

saveWidget(m, 'leaflet1.html')









## @knitr dygraphs1
library(dygraphs)
lungDeaths <- cbind(mdeaths, fdeaths)
dyex1 <- dygraph(lungDeaths)

saveWidget(dyex1, 'dygraphs1.html')

## @knitr dygraphs2
dyex2 <- dygraph(nhtemp, main = "New Haven Temperatures") %>% 
  dyRangeSelector(dateWindow = c("1920-01-01", "1960-01-01"))

saveWidget(dyex2, 'dygraphs2.html')


## @knitr dygraphs3
dyex3 <- dygraph(lungDeaths) %>%
  dySeries("mdeaths", label = "Male") %>%
  dySeries("fdeaths", label = "Female") %>%
  dyOptions(stackedGraph = TRUE) %>%
  dyRangeSelector(height = 20)

saveWidget(dyex3, 'dygraphs3.html')


## @knitr dygraphs4
hw <- HoltWinters(ldeaths)
predicted <- predict(hw, n.ahead = 72, prediction.interval = TRUE)

dyex4 <- dygraph(predicted, main = "Predicted Lung Deaths (UK)") %>%
  dyAxis("x", drawGrid = FALSE) %>%
  dySeries(c("lwr", "fit", "upr"), label = "Deaths") %>%
  dyOptions(colors = RColorBrewer::brewer.pal(3, "Set1")) %>%
  dyRoller(rollPeriod = 5)

saveWidget(dyex4, 'dygraphs4.html')







## @knitr metricsgraphics1
library(htmltools)
library(htmlwidgets)
library(metricsgraphics)
library(RColorBrewer)

tmp <- data.frame(year=seq(1790, 1970, 10), uspop=as.numeric(uspop))

mg1 <- tmp %>%
  mjs_plot(x=year, y=uspop, height = 450, width = 650) %>%
  mjs_line() %>%
  mjs_add_marker(1850, "Something Wonderful") %>%
  mjs_add_baseline(150, "Something Awful")

saveWidget(mg1, 'metricsgraphics1.html')


## @knitr metricsgraphics2
mg2 <- tmp %>%
  mjs_plot(x=uspop, y=year, width=500, height=400) %>%
  mjs_bar() %>%
  mjs_axis_x(xax_format = 'plain')

saveWidget(mg2, 'metricsgraphics2.html')


## @knitr metricsgraphics3
mg3 <- mtcars %>%
  mjs_plot(x=wt, y=mpg, width=750, height=450) %>%
  mjs_point(color_accessor=carb, size_accessor=carb) %>%
  mjs_labs(x="Weight of Car", y="Miles per Gallon")

saveWidget(mg3, 'metricsgraphics3.html')



## @knitr metricsgraphics4
mg4 <- mtcars %>%
  mjs_plot(x=wt, y=mpg, width=750, height=450) %>%
  mjs_point(color_accessor=cyl,
            x_rug=TRUE, y_rug=TRUE,
            size_accessor=carb,
            size_range=c(5, 10),
            color_type="category",
            color_range=brewer.pal(n=11, name="RdBu")[c(1, 5, 11)]) %>%
  mjs_labs(x="Weight of Car", y="Miles per Gallon") %>%
  mjs_add_legend(legend="X")

saveWidget(mg4, 'metricsgraphics4.html')


## @knitr metricsgraphics5
mg5 <- mtcars %>%
  mjs_plot(x=wt, y=mpg, width=700, height=450) %>%
  mjs_point(least_squares=TRUE) %>%
  mjs_labs(x="Weight of Car", y="Miles per Gallon")

saveWidget(mg5, 'metricsgraphics5.html')


## @knitr metricsgraphics6
set.seed(1492)
stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4))

mg6 <- stocks %>%
  mjs_plot(x=time, y=X, height = 400, width = 750) %>%
  mjs_line() %>%
  mjs_add_line(Y) %>%
  mjs_add_line(Z) %>%
  mjs_axis_x(xax_format="date") %>%
  mjs_add_legend(legend=c("X", "Y", "Z"))

saveWidget(mg6, 'metricsgraphics6.html')


## @knitr metricsgraphics7
stocks2 <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4))

s1 <- stocks %>%
  mjs_plot(x=time, y=X, linked=TRUE, width=350, height=275) %>%
  mjs_line() %>%
  mjs_add_line(Y) %>%
  mjs_add_line(Z) %>%
  mjs_axis_x(xax_format="date") %>%
  mjs_add_legend(legend=c("X", "Y", "Z"))

s2 <- stocks2 %>%
  mjs_plot(x=time, y=X, linked=TRUE, width=350, height=275) %>%
  mjs_line() %>%
  mjs_add_line(Y) %>%
  mjs_add_line(Z) %>%
  mjs_axis_x(xax_format="date") %>%
  mjs_add_legend(legend=c("X", "Y", "Z"))

mjs_grid(s1, s2, ncol=2)






## @knitr networkD31
library(networkD3)
src <- c("A", "A", "A", "A",
        "B", "B", "C", "C", "D")
target <- c("B", "C", "D", "J",
            "E", "F", "G", "H", "I")
networkData <- data.frame(src, target)
nw1 <- simpleNetwork(networkData)
saveWidget(nw1, 'networkD31.html')

## @knitr networkD32
data(MisLinks, MisNodes)
nw2 <- forceNetwork(Links = MisLinks, Nodes = MisNodes, Source = "source",
             Target = "target", Value = "value", NodeID = "name",
             Group = "group", opacity = 0.4)
saveWidget(nw2, 'networkD32.html')






## @knitr datatable1
library(DT)
dt1 <- datatable(iris)
saveWidget(dt1, 'dt1.html')






## @knitr threejs1
library(threejs)
z <- seq(-10, 10, 0.01)
x <- cos(z)
y <- sin(z)
threejs1 <- scatterplot3js(x,y,z, color=rainbow(length(z)))
saveWidget(threejs1, 'threejs1.html')


## @knitr threejs2
N <- 100
i <- sample(3, N, replace=TRUE)
x <- matrix(rnorm(N*3),ncol=3)
lab <- c("small", "bigger", "biggest")
threejs2 <- scatterplot3js(x, color=rainbow(N), labels=lab[i], size=i, renderer="canvas")
saveWidget(threejs2, 'threejs2.html')





## @knitr diagrammer1
library(DiagrammeR)
dg1 <- grViz("
  digraph {
    layout = twopi
    node [shape = circle]
    A -> {B C D} 
  }", height = 400, width = 700)
saveWidget(dg1, 'diagrammer1.html')

## @knitr diagrammer2
boxes_and_circles <- "
digraph boxes_and_circles {

  # several 'node' statements
  node [shape = box,
        fontname = Helvetica]
    A; B; C; D; E; F

  node [shape = circle,
        fixedsize = true,
        width = 0.9] // sets as circles
    1; 2; 3; 4; 5; 6; 7; 8

  # several 'edge' statements
    A->1; B->2; B->3; B->4; C->A
    1->D; E->A; 2->4; 1->5; 1->F
    E->6; 4->6; 5->7; 6->7; 3->8

  # a 'graph' statement
  graph [overlap = true, fontsize = 10]
}
"
dg2 <- grViz(boxes_and_circles, engine = "circo", height = 400, width = 700)
saveWidget(dg2, 'diagrammer2.html', selfcontained = TRUE)


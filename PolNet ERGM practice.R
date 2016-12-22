set.seed(12345)

library(statnet)
library(xergm)


mat <- matrix(rbinom(100,1,0.2), nrow = 10)
rownames(mat) <- letters[1:10]
colnames(mat) <- letters[1:10]
mat

nw <- network(mat, directed = TRUE, bipartite = FALSE)
list.vertex.attributes(nw)
color <- rep(c("orange", "lightblue"),5)
set.vertex.attribute(nw, "color", color)
nw[1, 9] <- 0
nw["j", "h"] <- 1
plot(nw, displaylabels = TRUE, label.cex = 1.5, edge.col = "gray", edge.lwd = 3, 
     vertex.col = get.vertex.attribute(nw, "color"), vertex.cex = get.vertex.attribute(nw, "size"))

##WHY IS THE PLOT COMING OUT BLANK??


#ERGM
data("chemnet")
?chemnet

sci <- scito*t(scifrom)
prefsim <- dist(intpos, method= "euclidean")
prefsim <- max(prefsim) - prefsim
prefsim <- as.matrix(prefsim)
committee <- committee %*% t(committee)
diag(committee) <- 0
types <- types[,1]
nw.pol <- network(pol)

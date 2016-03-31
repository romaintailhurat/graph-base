####
# graph base
####

library(igraph)

# Le célèbre club de Karate, voir bit.ly/1MWKkDW
karate <- make_graph("Zachary")

plot(karate)

# Centralité de degré
kcd = degree(karate)
V(karate)$label <- paste(sep = "\n", V(karate)$name, kcd)

plot(karate)
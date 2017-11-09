## file to generate homepage background

setwd('~/homepage/resources/images/')

dat = array(rnorm(10000), dim=c(100,100))
cols = colorRampPalette(c('darkblue','darkgreen','black','orange'))(15)

svg('drawing.svg')
heatmap(dat, col=cols, Colv=NA,Rowv=NA, labRow=NA, labCol=NA)
dev.off()


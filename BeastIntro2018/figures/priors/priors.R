rm(list=ls())
library(bdskytools)

NewFig('gamma.pdf', width=2)
par(mar=c(3,4,1,1))
plotPrior('gamma',list(shape=0.001, scale=1000), ylim=c(0,1E7), xlim=c(0,0.1E-7), plotquantile=FALSE,ylab="",xlab="")
dev.off()

NewFig('norm.pdf', width=2)
par(mar=c(3,4,1,1))
plotPrior('norm',list(mean=6, sd=0.5),xlim=c(4,8),ylab="",xlab="")
dev.off()

NewFig('exp.pdf', width=2)
par(mar=c(3,4,1,1))
plotPrior('exp',list(rate=1),xlim=c(0,6),ylab="",xlab="")
dev.off()

NewFig('lognorm.pdf', width=2)
par(mar=c(3,4,1,1))
plotPrior('lnorm',list(mean=1,sd=1.25),ylab="",xlab="")
dev.off()

#plotPrior('unif',c(0,1))

# Uniform(0,Inf)
NewFig('uniform.pdf', width=2)
par(mar=c(3,4,1,1))
plot(1,type='n',xlim=c(0,1), ylim=c(0,1.25), las=1, xaxt='n',yaxt='n',ylab="",xlab="",bty='o')
rect(0,0,1,1, col=pal.dark(cblue,0.25), border = NA)
lines(c(0,0,1,1),c(0,1,1,0), col=pal.dark(cblue))
axis(1,at = c(0,1), labels=c("0",expression(infinity)))
axis(2,at = c(0,1), labels=c("0",expression(1/infinity)))
dev.off()

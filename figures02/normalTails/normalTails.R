library(openintro)
data(COL)

#===> plot <===#
myPDF("normalTails.pdf", 4.7, 1.1, mar=c(0.81,1,0.3,1), mgp=c(3,-0.2,0), mfrow=c(1,2))
X <- seq(-4,4,0.01)
Y <- dnorm(X)

plot(X, Y, type='l', axes=F, xlim=c(-3.4,3.4))
axis(1, at=c(-5,0,5), label=c(-5,'negative Z',5), cex.axis=0.7, tick=FALSE)
these <- which(X <= -0.8)
polygon(c(X[these[1]], X[these],X[rev(these)[1]]), c(0,Y[these],0), col=COL[1])
lines(c(0,0), dnorm(0)*c(0.01,0.99), col=COL[6], lty=3, lwd=1.5)
lines(X, Y)
abline(h=0)

plot(X, Y, type='l', axes=F, xlim=c(-3.4,3.4))
axis(1, at=c(-5,0,5), label=c(-5,'positive Z',5), cex.axis=0.7, tick=FALSE)
these <- which(X <= 0.8)
polygon(c(X[these[1]], X[these],X[rev(these)[1]]), c(0,Y[these],0), col=COL[1])
lines(c(0,0), dnorm(0)*c(0.01,0.99), col=COL[6], lty=3, lwd=1.5)
lines(X, Y)
abline(h=0)

dev.off()
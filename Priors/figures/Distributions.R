# plotting beta distributions
plot(seq(0,1,0.001),dbeta(seq(0,1,0.001), 0.5, 0.5, ncp = 0, log = FALSE),type="l",col="red",ylim=c(0,5),lwd=2.5,ylab="PDF",xlab="")
lines(seq(0,1,0.001),dbeta(seq(0,1,0.001), 2, 2, ncp = 0, log = FALSE),type="l",col="orchid1",lwd=2.5)
lines(seq(0,1,0.001),dbeta(seq(0,1,0.001), 2, 5, ncp = 0, log = FALSE),type="l",col="blue",lwd=2.5)
lines(seq(0,1,0.001),dbeta(seq(0,1,0.001), 5, 1, ncp = 0, log = FALSE),type="l",col="green",lwd=2.5)
legend(0.63,5,lwd=2.5,legend=c(expression(paste(alpha,"=0.5, ",beta,"=0.5",sep="")),expression(paste(alpha,"=2, ",beta,"=2",sep="")),expression(paste(alpha,"=2, ",beta,"=5",sep="")),expression(paste(alpha,"=5, ",beta,"=1",sep=""))),col=c("red","orchid1","blue","green"))

# plotting normal distributions
plot(seq(-0.5,0.5,0.001),dnorm(seq(-0.5,0.5,0.001), 0, 0.5),type="l",col="red",ylim=c(0,5),lwd=2.5,ylab="PDF",xlab="")
lines(seq(-0.5,0.5,0.001),dnorm(seq(-0.5,0.5,0.001), 0.2, 0.2),type="l",col="orchid1",lwd=2.5)
lines(seq(-0.5,0.5,0.001),dnorm(seq(-0.5,0.5,0.001), 0, 0.1),type="l",col="blue",lwd=2.5)
lines(seq(-0.5,0.5,0.001),dnorm(seq(-0.5,0.5,0.001), 0, 0.2),type="l",col="green",lwd=2.5)
legend(0.17,5,lwd=2.5,legend=c(expression(paste(mu,"=0, ",sigma,"=0.5",sep="")),expression(paste(mu,"=0.2, ",sigma,"=0.2",sep="")),expression(paste(mu,"=0, ",sigma,"=0.1",sep="")),expression(paste(mu,"=0, ",sigma,"=0.2",sep=""))),col=c("red","orchid1","blue","green"))

# plotting lognormal distributions
lognorm<-function(x) 1/x*dnorm(log(x), 0, 1)
plot(seq(0,3,0.001),lognorm(seq(0,3,0.001)),type="l",col="red",lwd=2.5,ylim=c(0,1),ylab="PDF",xlab="")
lognorm<-function(x) 1/x*dnorm(log(x), 0, 0.5)
lines(seq(0,3,0.001),lognorm(seq(0,3,0.001)),type="l",col="orchid1",lwd=2.5)
lognorm<-function(x) 1/x*dnorm(log(x), 2, 1)
lines(seq(0,3,0.001),lognorm(seq(0,3,0.001)),type="l",col="green",lwd=2.5)
lognorm<-function(x) 1/x*dnorm(log(x), 1, 0.75)
lines(seq(0,3,0.001),lognorm(seq(0,3,0.001)),type="l",col="blue",lwd=2.5)
legend(2,1,lwd=2.5,legend=c(expression(paste(M,"=0, ",S,"=1",sep="")),expression(paste(M,"=0, ",S,"=0.5",sep="")),expression(paste(M,"=2, ",S,"=1",sep="")),expression(paste(M,"=1, ",S,"=0.75",sep=""))),col=c("red","orchid1","blue","green"))

# plotting uniform distributions
plot(seq(-0.501,0.501,0.001),dunif(seq(-0.501,0.501,0.001),-0.5,0.5),type="l",col="red",lwd=2.5,ylim=c(0,1),xlim=c(-2,2),ylab="PDF",xlab="")
lines(seq(-0.001,1.701,0.001),dunif(seq(-0.001,1.701,0.001),0,1.7),type="l",col="orchid1",lwd=2.5)
lines(seq(-1.001,1.001,0.001),dunif(seq(-1.001,1.001,0.001),-1,1),type="l",col="green",lwd=2.5)
lines(seq(-1.501,1.501,0.001),dunif(seq(-1.501,1.501,0.001),-1.5,1.5),type="l",col="blue",lwd=2.5)
legend(0.7,1,lwd=2.5,legend=c("l=-0.5, u=0.5","l=0, u=1.7","l=-1, u=1","l=-1.5, u=1.5"),col=c("red","orchid1","blue","green"))

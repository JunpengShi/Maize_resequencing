##########3  modified in 2019/05/07 to merge the CULs and TEMs into CULs

pdf("./LD_decay_3_subpopulation.pdf");
aa<-read.table("./LD_decay_TILs.100bp",header=T);
bb<-read.table("./LD_decay_LANs.100bp",header=T);
#cc<-read.table("./LD_decay_CULs.100bp",header=T);
dd<-read.table("./LD_decay_TEMs.100bp",header=T);
plot(aa[,1]/1000,aa[,2],bty="l",xlab="kilobases",ylab="R2",cex.lab=1.3,cex.axis=1.2,type="l",lwd=2,col="green3",ylim=c(0,0.5));
points(bb[,1]/1000,bb[,2],col="purple",type="l",lwd=2);
#points(cc[,1]/1000,cc[,2],col="red",type="l",lwd=2);
points(dd[,1]/1000,dd[,2],col="blue",type="l",lwd=2);
legend("topright",fill=c("green3","purple","blue"),c("TEOs","LANs","CULs"),cex=1.2);
dev.off();

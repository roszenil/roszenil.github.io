setwd("~/Dropbox/Teaching/Workshops/SSB 2020/output/")
library("ggplot2")
library("wesanderson")
source("multiplot.R")
# Install the library for colors
#library("devtools")
#install_github("karthik/wesanderson")

### Rosana is really picky with her colors
cols<-c(wes_palette("Darjeeling1"),wes_palette("Darjeeling2"))
cols2<- c("#7b3294","#c2a5cf","#a6dba0","#008837","#ffffbf")
cols3<-c("#ece2f0", "#67a9cf","#e31a1c","#fd8d3c","#02818a","#014636")
cols4<-c(cols[4],"#fdb863","#542788","#b2abd2","#f7f7f7",cols[2])

### Plots for diversification rates BiSSE
# Read output
output.sse<-read.table("BiSSE_pole.log", header=TRUE)
# see what's inside
head(output.sse)

# Extinction
sse.extinction<-data.frame(dens=c(output.sse$extinction.1,output.sse$extinction.2),Type=rep(c("mu_0","mu_1"),each=length(output.sse$extinction.1)))
s

# Speciation 
sse.speciation<-data.frame(dens=c(output.sse$speciation.1,output.sse$speciation.2),Type=rep(c("lambda_0","lambda_1"),each=length(output.sse$speciation.1)))


# Net diversification
sse.netdiv<-data.frame(dens=c(output.sse$speciation.1-output.sse$extinction.1,output.sse$speciation.2-output.sse$extinction.2),Type=rep(c("r_0","r_1"),each=length(output.sse$speciation.1)))

# Relative extinction
sse.reldiv<-data.frame(dens=c(output.sse$extinction.1/output.sse$speciation.1,output.sse$extinction.2/output.sse$speciation.2),Type=rep(c("e_0","e_1"),each=length(output.sse$speciation.1)))

# Transition rates
trait.rates<-data.frame(dens=c(output.sse$q_01,output.sse$q_10),Type=rep(c("q_01","q_10"),each=length(output.sse$q_01)))



# Plots

p1<-ggplot(sse.speciation, aes(x=dens, fill=Type))+labs(title="Speciation",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values = c(cols[7],cols[1]))+xlim(0,1)

p2<-ggplot(sse.extinction, aes(x=dens, fill=Type))+labs(title="Extinction",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values =c(cols[7],cols[1]))+xlim(0,1)

p3<-ggplot(sse.netdiv, aes(x=dens, fill=Type))+labs(title="Net Diversification",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values = c(cols[7],cols[1]))+xlim(-1,0.5)

p4<-ggplot(sse.reldiv, aes(x=dens, fill=Type))+labs(title="Relative Extinction",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values = c(cols[7],cols[1]))+xlim(0,3)


p5<-ggplot(trait.rates, aes(x=dens, fill=Type))+labs(title="Trait change",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values = c(cols[2],cols[4]))+xlim(0,1.5)
multiplot(p1,p3,p5,p2,p4, cols=2)

############################################################################################
############################################################################################
### Plots for diversification rates Hisse 
output.sse<-read.table("HiSSE_pole.log", header=TRUE)
head(output.sse)
sse.extinction<-data.frame(dens=c(output.sse$extinction.1,output.sse$extinction.2,output.sse$extinction.3,output.sse$extinction.4),Type=rep(c("mu_0A","mu_1A", "mu_0B", "mu_1B"),each=length(output.sse$extinction.1)))

sse.speciation<-data.frame(dens=c(output.sse$speciation.1,output.sse$speciation.2,output.sse$speciation.3,output.sse$speciation.4),Type=rep(c("lambda_0A","lambda_1A", "lambda_0B", "lambda_1B"),each=length(output.sse$speciation.1)))

sse.netdiv<-data.frame(dens=c(output.sse$speciation.1-output.sse$extinction.1,output.sse$speciation.2-output.sse$extinction.2, output.sse$speciation.3-output.sse$extinction.3,output.sse$speciation.4-output.sse$extinction.4),Type=rep(c("r_0A","r_1A", "r_0B", "r_1B"),each=length(output.sse$speciation.1)))

sse.reldiv<-data.frame(dens=c(output.sse$extinction.1/output.sse$speciation.1,output.sse$extinction.2/output.sse$speciation.2,output.sse$extinction.3/output.sse$speciation.3,output.sse$extinction.4/output.sse$speciation.4),Type=rep(c("e_0A","e_1A", "e_0B", "e_1B"),each=length(output.sse$speciation.1)))

trait.rates<-data.frame(dens=c(output.sse$q_01,output.sse$q_10) ,Type=rep(c("q_01","q_10"),each=length(output.sse$q_01)))

hidden.rate<-data.frame(dens=c(output.sse$hidden_rate1,output.sse$hidden_rate2) ,Type=rep(c("alpha","beta"),each=length(output.sse$hidden_rate1)))



p1<-ggplot(sse.speciation, aes(x=dens, fill=Type))+labs(title="Speciation",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values = c(cols[7],cols[9],cols[1],cols[6]))

p2<-ggplot(sse.extinction, aes(x=dens, fill=Type))+labs(title="Extinction",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values =c(cols[7],cols[9],cols[1],cols[6]))

p3.2<-ggplot(sse.netdiv, aes(x=dens, fill=Type))+labs(title="Net Diversification",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values = c(cols[7],cols[9],cols[1],cols[6]))

p4<-ggplot(sse.reldiv, aes(x=dens, fill=Type))+labs(title="Relative Extinction",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values = c(cols[7],cols[9],cols[1],cols[6]))

p5<-ggplot(trait.rates, aes(x=dens, fill=Type))+labs(title="Trait change",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values = c(cols[2],cols[4]))

p6<-ggplot(hidden.rate, aes(x=dens, fill=Type))+labs(title="Hidden trait change",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values = c("mediumseagreen","deeppink"))
multiplot(p1,p3.2,p5,p2,p4,p6, cols=2)
##########
##############################################################################

##### Character independent models

# Character independent DP 
output.sse<-read.table("CID_pole.log", header=TRUE)

sse.extinction<-data.frame(dens=c(output.sse$extinction.1,output.sse$extinction.3),Type=rep(c("mu_A","mu_B"),each=length(output.sse$extinction.1)))

sse.speciation<-data.frame(dens=c(output.sse$speciation.1,output.sse$speciation.3),Type=rep(c("lambda_A", "lambda_B"),each=length(output.sse$speciation.1)))

sse.netdiv<-data.frame(dens=c(output.sse$speciation.1-output.sse$extinction.1, output.sse$speciation.3-output.sse$extinction.3),Type=rep(c(" r_A","r_B"),each=length(output.sse$speciation.1)))

sse.reldiv<-data.frame(dens=c(output.sse$extinction.1/output.sse$speciation.1,output.sse$extinction.3/output.sse$speciation.3),Type=rep(c("e_A","e_B"),each=length(output.sse$speciation.1)))

trait.rates<-data.frame(dens=c(output.sse$q_01, output.sse$q_10) ,Type=rep(c("q_01", "q_10"),each=length(output.sse$q_01)))

hidden.rate<-data.frame(dens=c(output.sse$Rhidden_rate1, output.sse$hidden_rate2) ,Type=rep(c("alpha","beta"),each=length(output.sse$hidden_rate1)))

p1<-ggplot(sse.speciation, aes(x=dens, fill=Type))+labs(title="Speciation",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values = c("yellow","gray"))

p2<-ggplot(sse.extinction, aes(x=dens, fill=Type))+labs(title="Extinction",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values = c("yellow","gray"))

p3.3<-ggplot(sse.netdiv, aes(x=dens, fill=Type))+labs(title="Net Diversification",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values =  c("yellow","gray"))

p4<-ggplot(sse.reldiv, aes(x=dens, fill=Type))+labs(title="Relative Extinction",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values = c("yellow","gray"))

p5<-ggplot(trait.rates, aes(x=dens, fill=Type))+labs(title="Trait change",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values = c(cols[4], cols[2]))

p6<-ggplot(hidden.rate, aes(x=dens, fill=Type))+labs(title="Hidden trait change",x="Rate", y="Posterior Density")+geom_density(alpha=0.5)+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
panel.background = element_blank(), axis.line = element_line(colour = "black"))+scale_fill_manual( values = c("mediumseagreen","deeppink"))
multiplot(p1,p3.3,p5,p2,p4,p6, cols=2)

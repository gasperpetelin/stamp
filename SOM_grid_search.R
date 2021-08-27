library(aweSOM)

data<-read.table("/Users/tomeeftimov/Nextcloud/NeurIPS/all_data_ts_clean_v2.txt",sep="\t",header=TRUE)

data_temp<-scale(data.matrix(data))

### RNG Seed (for reproducibility)
init <- somInit(data_temp, 45, 45)
som.model <- kohonen::som(data_temp, grid = kohonen::somgrid(45, 45, "hexagonal"), 
+                          rlen = 100, alpha = c(0.05, 0.01), radius = c(2.65,-2.65), 
+                          dist.fcts = "sumofsquares", init = init)


somQuality(som.model,data_temp)



set.seed(1465)
m<-5
n<-50
qunat_err<-c()
expl_var<-c()
topp_err<-c()
kaski_lagus_err<-c()
cellpop<-list()
for (i in seq(m,n)){
    
        init<-somInit(data_temp,i,i)
        som.model <- kohonen::som(data_temp, grid = kohonen::somgrid(i, i, "hexagonal"), 
                         rlen = 100, alpha = c(0.05, 0.01), radius = c(2.65,-2.65), 
                         dist.fcts = "sumofsquares", init = init)
        x<-somQuality(som.model, data_temp) 
        qunat_err[i]<-x$err.quant
        expl_var[i]<-x$err.varratio
        topp_err[i]<-x$err.topo
        kaski_lagus_err[i]<-x$err.kaski
        cellpop[[i]]<-x$cellpop
       }

# Example how to generate the 48x48
set.seed(1465)
i<-48
init<-somInit(data_temp,i,i)
        som.model <- kohonen::som(data_temp, grid = kohonen::somgrid(i, i, "hexagonal"), 
                         rlen = 100, alpha = c(0.05, 0.01), radius = c(2.65,-2.65), 
                         dist.fcts = "sumofsquares", init = init)
x<-somQuality(som.model, data_temp) 

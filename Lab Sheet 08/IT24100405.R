setwd("A:\\Lab8\\Lab 08-20250923")

lw <- read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(lw)
attach(lw)

#Q1
population_mean <- mean(Weight.kg.)
print(population_mean)

population_var <- var(Weight.kg.)
print(population_var)

Sd <- sd(Weight.kg.)
print(Sd)



#Q2
samples<-c()
w<-c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  w<-c(w,paste('S',i))
}

colnames(samples)=w

s.means<-apply(samples,2,mean)
s.Sd<-apply(samples,2,sd)

print(s.means)
print(s.Sd)



#Q3
# Calculate mean of sample means
mean_sample_means <- mean(s.means)
print(paste(mean_sample_means))

# Calculate standard deviation of sample means
sd_sample_means <- sd(s.means)
print(paste(sd_sample_means))

# Compare with population mean and standard deviation
print(paste("Population Mean:", population_mean))
print(paste("Population Standard Deviation:", Sd))

# Calculate theoretical standard error
standard_error <- Sd / sqrt(6)
print(paste("Theoretical Standard Error:", standard_error))

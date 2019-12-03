#Class5 Data visualization 
x <- rnorm(1000)

#some summary stats
mean(x)
sd(x)

#IQR vaules
summary(x)

#showing boxplot with IQR values 
boxplot(x)
#histogram of given data
hist(x)
#1-D plot of the data plot
rug(x)

#Section 2 scaterplots
#lets read our input file first 

baby <- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)
baby

#plotting baby 
plot(baby$Age,baby$Weight,typ ="o",pch = 20, cex =1.5, lwd =2, lty = 1, 
     col = heat.colors(10), ylim=c(2,10), xlab= "Age (months)", 
     ylab= "Weight (kg)", main = "Baby Weight with Age")

#Section 2B barplot 
#reading input file first 

mouse <- read.delim("bimm143_05_rstats/feature_counts.txt", 
                    header = TRUE)
mouse   

#plotting mouse
barplot(mouse$Count, horiz = TRUE, ylab = "", names.arg = mouse$Feature, 
        main= "Number of features in the mouse GRCm38 genome", las =1,
        xlim = c(0,80000), col = heat.colors(12))

#Section 2C histogram
#defining the dataset, 1000 rnorm and 1000 from same distribution but with an offset of 4
x <- c(rnorm(1000), rnorm(1000)+4)
hist(x)

#Section 3A using color vectors 
#reading input file first 

gender <- read.delim("bimm143_05_rstats/male_female_counts.txt", 
                     header = TRUE)
gender

#plotting gender in rainbow color
barplot(gender$Count, names.arg = gender$Sample, las =2,
       ylab = "Counts", col = rainbow(nrow(gender)))

#plotting gender in gender specific color
barplot(gender$Count, names.arg = gender$Sample, las =2,
        ylab = "Counts", col = c("green2", "yellow2"))

#Section 3B coloring by value
#reading input file first

genes <- read.delim("bimm143_05_rstats/up_down_expression.txt", 
                    header = TRUE)
genes

#finding number of rows
nrow(genes)
#finding number of columns 
dim(genes)
#finding which gene is up/down/unchanging 
table(genes$State)

#plotting genes
plot(genes$Condition1, genes$Condition2, col=genes$State, xlab= "Expression Condition 1"
     , ylab = "Expression Condition 2")

palette()







































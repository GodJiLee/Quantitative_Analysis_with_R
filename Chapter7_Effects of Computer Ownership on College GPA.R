#############################################################################
##### Example 7.2 ###########################################################

GPA1<-read.table("D:\\smchoi\\Teaching\\UnderEconometricsII\\2018Sem2\\RCode\\TextDataFiles\\GPA1.raw", header=FALSE)
View(GPA1)
summary(GPA1)

colGPA<-GPA1[,10] #college grade point average (GPA): 4 point scale
PC<-GPA1[,19] #one if a student owns a personal computer and zero otherwise
hsGPA<-GPA1[,11] #high school GPA: 4 point scale
ACT<-GPA1[,12] #achievement test score (university entrance exam)

reg1.GPA1<-lm(colGPA~PC+hsGPA+ACT)
summary(reg1.GPA1)

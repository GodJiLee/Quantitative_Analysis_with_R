#############################################################################
##### Example 7.2 Effects of Computer Ownership on College GPA##############
##### Model: colGPA = b0 + d0*PC + b1*hsGPA + b2*ACT + u ######
#############################################################################

#stronger students, as measured by high school GPA and ACT scores, are more likely to own computers.

#d0>0
#A student¡¯s schoolwork might be of higher quality if it is done on a computer.
#Time can be saved by not having to wait at a computer lab. 
#d0<0
#A student might be more inclined to play computer games or surf the Internet.

#setwd("F:\\Metrics\\2015_2ndSem Univ of Seoul\\Rcode")    

#Nobs 141

GPA1<-read.table("D:\\smchoi\\Teaching\\UnderEconometricsII\\2018Sem2\\RCode\\TextDataFiles\\GPA1.raw", header=FALSE)
View(GPA1)
summary(GPA1)


#################Assign variables#######################################

colGPA<-GPA1[,10] #college grade point average (GPA): 4 point scale
PC<-GPA1[,19] #one if a student owns a personal computer and zero otherwise
hsGPA<-GPA1[,11] #high school GPA: 4 point scale
ACT<-GPA1[,12] #achievement test score (university entrance exam)

#############Run the linear regression ########################################

reg1.GPA1<-lm(colGPA~PC+hsGPA+ACT)
summary(reg1.GPA1)

####################### Estimation Results ################################

#A student who owns a PC has a predicted GPA about 0.16 points higher than a comparable student without a PC.
#The effect is also very statistically significant


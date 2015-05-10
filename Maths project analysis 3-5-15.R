# import csv files of result grades for all students from Git Hub
# getwd()

# GroupA CA1 Results
urlfile1<-'https://raw.githubusercontent.com/eustacej/maths_project_test/master/GroupA_CA1.csv'
GroupA_CA1<-read.csv(urlfile1)
View(GroupA_CA1)

# GroupB CA1 Results
urlfile2<-'https://raw.githubusercontent.com/eustacej/maths_project_test/master/GroupB_CA1.csv'
GroupB_CA1<-read.csv(urlfile2)
View(GroupB_CA1)

# GroupA CA2 Results
urlfile3<-'https://raw.githubusercontent.com/eustacej/maths_project_test/master/GroupA_CA2.csv'
GroupA_CA2<-read.csv(urlfile3)
View(GroupA_CA2)

# GroupB CA2 Results
urlfile4<-'https://raw.githubusercontent.com/eustacej/maths_project_test/master/GroupB_CA2.csv'
GroupB_CA2<-read.csv(urlfile4)
View(GroupB_CA2)

# GroupA Final test
urlfile5<-'https://raw.githubusercontent.com/eustacej/maths_project_test/master/GroupA_Final_Test.csv'
GroupA_Final_Test <-read.csv(urlfile5)
View(GroupA_Final_Test)

# GroupB Final test
urlfile6<-'https://raw.githubusercontent.com/eustacej/maths_project_test/master/GroupB_Final_Test.csv'
GroupB_Final_Test <-read.csv(urlfile6)
View(GroupB_Final_Test)

# Practice Test A1A data
urlfile7<-'https://raw.githubusercontent.com/eustacej/maths_project_test/master/PT_A1A.csv'
PT_A1A <-read.csv(urlfile7)
View(PT_A1A)

# Practice test A1B data completed attempts only
urlfile8 <- 'https://raw.githubusercontent.com/eustacej/maths_project_test/master/PT_A1B.csv'
PT_A1B <-read.csv(urlfile8)
View(PT_A1B)
# Maths project data import complete ###############################################################

# boxplots of CA1 TP1 and TP2.
# Group A had practice tests for sets and operations
# Group B had practice tests for Relations and Functions

par(mfrow=c(1,4)) # Set up a graph with 1 row and 4 columns
boxplot(GroupA_CA1$CA1_TP1,col="green",main ="Sets & Operations",
        ylab ="Group A with Practice Tests",
        ylim=c(0,55), las=1)
boxplot(GroupB_CA1$CA1_TP1,col="grey", main ="Sets & Operations",
        ylab ="Group B without Practice Tests",
        ylim=c(0,55), las=1)
boxplot(GroupA_CA1$CA1_TP2,col="green", main ="Relations & Functions",
        ylab ="Group A without Practice Tests",
        ylim=c(0,45), las=1)
boxplot(GroupB_CA1$CA1_TP2,col="grey", main ="Relations & Functions",
        ylab ="Group B with Practice Tests",
        ylim=c(0,45), las=1)
# Describe the Data from Tp1 and Tp2 CA1

library("Hmisc", lib.loc="~/R/win-library/3.2") # loading packages

describe(GroupA_CA1$CA1_TP1)
describe(GroupB_CA1$CA1_TP1)
describe(GroupA_CA1$CA1_TP2)
describe(GroupB_CA1$CA1_TP2)
summary(GroupA_CA1$CA1_TP1)
summary(GroupB_CA1$CA1_TP1)
summary(GroupA_CA1$CA1_TP2)
summary(GroupB_CA1$CA1_TP2)

par(mfrow=c(1,4)) # Set up a graph with 1 row and 4 columns
# Barplot of attempts by students on PTA1A
PTA1A_Students <-c(21,5,3,3,1,1)
PTA1A_Attempts <-c(1,2,3,4,5,6)
barplot (PTA1A_Students,width=1,space=FALSE,
         main ="Practice Test A1A",ylab = "Students",col="green",
         xlab="No. of Attempts", names.arg =(PTA1A_Attempts))

PTA1B_Students <-c(18,2,0,1,0,0)
PTA1B_Attempts <-c(1,2,3,4,5,6)
# Barplot of attempts by students on PTA1A
barplot (PTA1B_Students,width=1,space=FALSE,col="green",
         main ="Practice Test A1B",ylab = "Students",
         xlab="No. of Attempts", names.arg =(PTA1B_Attempts))

# group B attempts on PT B2A
PTB2A_Students <-c(22,8,1,1,0,0)
PTB2A_Attempts <-c(1,2,3,4,5,6)
# Barplot of attempts by students on PTB2A
barplot (PTB2A_Students,width=1,space=FALSE,col="grey",
         main ="Practice Test B2A",ylab = "Students",
         xlab="No. of Attempts", names.arg =(PTB2A_Attempts))

# group B attempts on PT B2B
PTB2B_Students <-c(21,4,3,0,0,0)
PTB2B_Attempts <-c(1,2,3,4,5,6)
# Barplot of attempts by students on PTB2B
barplot (PTB2B_Students,width=1,space=FALSE,col="grey",
         main ="Practice Test B2B",ylab = "Students",
         xlab="No. of Attempts", names.arg =(PTB2B_Attempts))

# CA2 results boxplot

# box plots of CA1, CA2 and Final test results for both Groups
par(mfrow=c(1,4)) # Set up a graph with 1 row and 4 columns

# group A attempts on PT A3A
PTA3A_Students <-c(15,3,0,2,1,1)
PTA3A_Attempts <-c(1,2,3,4,5,6)
# Barplot of attempts by students on PTA3A
barplot (PTA3A_Students,width=1,space=FALSE,col="green",
         main ="Practice Test A3A",ylab = "Students",
         xlab="No. of Attempts", names.arg =(PTA3A_Attempts))

# group A attempts on PT A3B
PTA3B_Students <-c(16,6,2,0,0,0)
PTA3B_Attempts <-c(1,2,3,4,5,6)
# Barplot of attempts by students on PTA3B
barplot (PTA3B_Students,width=1,space=FALSE,col="green",
         main ="Practice Test A3B",ylab = "Students",
         xlab="No. of Attempts", names.arg =(PTA3B_Attempts))

boxplot(GroupA_CA2$CA2_Result,col="green", main ="Group A",
        ylab ="CA2 Result with Practice Tests",
        ylim=c(0,100), las=1)
boxplot(GroupB_CA2$CA2_Result,col="grey", main ="Group B",
        ylab ="CA2 Result without Practice Tests",
        ylim=c(0,100), las=1)

#################################################################
#################################################################


# box plots of CA1, CA2 and Final test results for both Groups
par(mfrow=c(1,6)) # Set up a graph with 1 row and 6 columns
boxplot(GroupA_CA1$CA1_Result,col="green",main ="CA1 Results",
        ylab ="Group A",
        ylim=c(0,100), las=1)
boxplot(GroupB_CA1$CA1_Result,col="grey", main ="CA1 Results",
        ylab ="Group B",
        ylim=c(0,100), las=1)
boxplot(GroupA_CA2$CA2_Result,col="green", main ="CA2 Results",
        ylab ="Group A",
        ylim=c(0,100), las=1)
boxplot(GroupB_CA2$CA2_Result,col="grey", main ="CA2 Results",
        ylab ="Group B",
        ylim=c(0,100), las=1)
# Final test was a paper based test with optional questions
boxplot(GroupA_Final_Test$Final_Test,col="green", main ="Final Test",
        ylab ="Group A",
        ylim=c(0,100), las=1)
boxplot(GroupB_Final_Test$Final_Test,col="grey", main ="Final Test",
        ylab ="Group B",
        ylim=c(0,100), las=1)

# using describe form the Hmisc package ##########################################################
library("Hmisc", lib.loc="~/R/win-library/3.2") # loading packages

describe(GroupA_CA1$CA1_Result)
describe(GroupB_CA1$CA1_Result)
describe(GroupA_CA2$CA2_Result)
describe(GroupB_CA2$CA2_Result)
describe(GroupA_Final_Test$Final_Test)
describe(GroupB_Final_Test$Final_Test)


summary(GroupA_CA1$CA1_Result)
summary(GroupB_CA1$CA1_Result)
summary(GroupA_CA2$CA2_Result)
summary(GroupB_CA2$CA2_Result)
summary(GroupA_Final_Test$Final_Test)
summary(GroupB_Final_Test$Final_Test)



################################################################################
#survey Results
par(mfrow=c(1,3)) # Set up a graph with 1 row and 6 columns
# Q1 What is your gender?
Q1_responses <-c(41,7)
Q1_choices <-c("Male","Female")

barplot (Q1_responses,width=1,space=TRUE,col="light blue",
         main ="Gender",ylab = "Students",
         xlab="", names.arg =(Q1_choices))

Q2_responses <-c(4,32,7,4,0,1)
Q2_choices <-c("<17","18-24","25-34","35-44","45-54",">55")

barplot (Q2_responses,width=1,space=TRUE,col="light blue",
         main ="Age",ylab = "Students",
         xlab="", names.arg =(Q2_choices))

Q3_responses <-c(22,26)
Q3_choices <-c("A","B")

barplot (Q3_responses,width=1,space=TRUE,col="light blue",
         main ="Group",ylab = "Students",
         xlab="", names.arg =(Q3_choices))
#Response on practice testing
Q4_responses <-c(2,3,7,19,6)
Q4_choices <-c("Never","Rarely","sometimes","Regularly","Always")
barplot (Q4_responses,width=1,space=TRUE,col="light blue",
         main ="Practice Testing",ylab = "Students",
         xlab="", names.arg =(Q4_choices))


# How helpful did you find the online practice tests
Q5_responses <-c(9,20,7,1,1)
Q5_choices <-c("Extremely","Very","Somewhat","Slightly","Not at all")
# Barplot of attempts by students on PTA3B
barplot (Q5_responses,width=1,space=TRUE,col="light blue",
         main ="How helpful did you find the online practice tests?",ylab = "Students",
         xlab="", names.arg =(Q5_choices))

# ranked 1 learning techniques
Q8_responses <-c(12,5,4,3,3,3,2,2,1,0)
Q8_choices <-c("Readreading","Practice Testing","Keyword","Highlighting","Elaboration","Self-Explaining",
               "Summarisation","Imagery for Text","Interleaved Practice","Distributed Practice")
barplot (Q8_responses,width=1,space=F,col="light blue",beside=FALSE,
         main ="Ranked No 1 Learning Technique",ylab = "",horiz=TRUE,
         xlab="No. Of Students", names.arg =(Q8_choices),las=1,cex.names=0.8,
         par(mar=c(5.1, 13 ,4.1 ,2.1)))


#################################################################################################
# margin of error ME
# ME for GroupA_CA1
ME_GroupA_CA1 = 1/sqrt(30)*100
ME_GroupB_CA1 = 1/sqrt(34)*100

#################################################################################################
#run a t-test of both groups looking at the CA1 Results, two-sided, unpaired
t.test(GroupA_CA1$CA1_Result,GroupB_CA1$CA1_Result,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)

#run a t-test of both groups looking at the CA2 Results, two-sided, unpaired
t.test(GroupA_CA2$CA2_Result,GroupB_CA2$CA2_Result,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)


#run a t-test of both groups looking at the CA2 Results,Question by question, two-sided, unpaired
t.test(GroupA_CA2$CA2_Q1_12,GroupB_CA2$CA2_Q1_12,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)
t.test(GroupA_CA2$CA2_Q.2_16,GroupB_CA2$CA2_Q.2_16,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)
t.test(GroupA_CA2$CA2_Q3_16,GroupB_CA2$CA2_Q3_16,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)
t.test(GroupA_CA2$CA2_Q4_12,GroupB_CA2$CA2_Q4_12,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)
t.test(GroupA_CA2$CA2_Q5_8,GroupB_CA2$CA2_Q5_8,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)

# Test test on Final tests
t.test(GroupA_Final_Test$Final_Test,GroupB_Final_Test$Final_Test,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)


#box plot of the first three questions in CA2 for bothe groups
# only Group A completed practice tests for logic

par(mfrow=c(1,6)) # Set up a graph with 1 row and 6 columns
boxplot(GroupA_CA2$CA2_Q1_12,col="green",main ="CA2 Q1 Results",
        ylab ="Group A",
        ylim=c(0,16), las=1)
boxplot(GroupB_CA2$CA2_Q1_12,col="yellow", main ="CA2 Q1 Results",
        ylab ="Group B",
        ylim=c(0,16), las=1)
boxplot(GroupA_CA2$CA2_Q.2_16,col="green",main ="CA2 Q2 Results",
        ylab ="Group A",
        ylim=c(0,16), las=1)
boxplot(GroupB_CA2$CA2_Q.2_16,col="yellow", main ="CA2 Q2 Results",
        ylab ="Group B",
        ylim=c(0,16), las=1)
boxplot(GroupA_CA2$CA2_Q3_16,col="green",main ="CA2 Q3 Results",
        ylab ="Group A",
        ylim=c(0,16), las=1)
boxplot(GroupB_CA2$CA2_Q3_16,col="yellow", main ="CA2 Q3 Results",
        ylab ="Group B",
        ylim=c(0,16), las=1)

# look at question 1 CA2 both groups

summary(GroupA_CA2$CA2_Q1_12)
summary(GroupB_CA2$CA2_Q1_12)
describe(GroupA_CA2$CA2_Q1_12)
describe(GroupB_CA2$CA2_Q1_12)
sd(GroupA_CA2$CA2_Q1_12)
sd(GroupB_CA2$CA2_Q1_12)
var(GroupA_CA2$CA2_Q1_12)
var(GroupB_CA2$CA2_Q1_12)

# look at question 2 CA2 both groups

summary(GroupA_CA2$CA2_Q.2_16)
summary(GroupB_CA2$CA2_Q.2_16)
describe(GroupA_CA2$CA2_Q.2_16)
describe(GroupB_CA2$CA2_Q.2_16)
sd(GroupA_CA2$CA2_Q.2_16)
sd(GroupB_CA2$CA2_Q.2_16)
var(GroupA_CA2$CA2_Q.2_16)
var(GroupB_CA2$CA2_Q.2_16)

# look at question 3 CA2 both groups

summary(GroupA_CA2$CA2_Q3_16)
summary(GroupB_CA2$CA2_Q3_16)
describe(GroupA_CA2$CA2_Q3_16)
describe(GroupB_CA2$CA2_Q3_16)
sd(GroupA_CA2$CA2_Q3_16)
sd(GroupB_CA2$CA2_Q3_16)
var(GroupA_CA2$CA2_Q3_16)
var(GroupB_CA2$CA2_Q3_16)

#box plot of the next three questions in CA2 for both groups


par(mfrow=c(1,6)) # Set up a graph with 1 row and 6 columns
boxplot(GroupA_CA2$CA2_Q5_8,col="green",main ="CA2 Q5 Results",
        ylab ="Group A",
        ylim=c(0,12), las=1)
boxplot(GroupB_CA2$CA2_Q5_8,col="yellow", main ="CA2 Q5 Results",
        ylab ="Group B",
        ylim=c(0,12), las=1)
boxplot(GroupA_CA2$CA2_Q6_8,col="green",main ="CA2 Q6 Results",
        ylab ="Group A",
        ylim=c(0,12), las=1)
boxplot(GroupB_CA2$CA2_Q6_8,col="yellow", main ="CA2 Q6 Results",
        ylab ="Group B",
        ylim=c(0,12), las=1)
boxplot(GroupA_CA2$CA2_Q7_12,col="yellow", main ="CA2 Q7 Results",
        ylab ="Group A",
        ylim=c(0,12), las=1)
boxplot(GroupB_CA2$CA2_Q7_12,col="yellow", main ="CA2 Q7 Results",
        ylab ="Group B",
        ylim=c(0,12), las=1)

# look at question 5 CA2 both groups

summary(GroupA_CA2$CA2_Q5_8)
summary(GroupB_CA2$CA2_Q5_8)
describe(GroupA_CA2$CA2_Q5_8)
describe(GroupB_CA2$CA2_Q5_8)
sd(GroupA_CA2$CA2_Q5_8)
sd(GroupB_CA2$CA2_Q5_8)
var(GroupA_CA2$CA2_Q5_8)
var(GroupB_CA2$CA2_Q5_8)


###########################################################################

par(mfrow=c(1,2)) # Set up a graph with 1 row and 2 columns

boxplot(GroupA_CA2$CA2_Q8_16,col="green",main ="CA2 Q8 Results",
        ylab ="Group A",
        ylim=c(0,16), las=1)
boxplot(GroupB_CA2$CA2_Q8_16,col="yellow", main ="CA2 Q8 Results",
        ylab ="Group B",
        ylim=c(0,16), las=1)


summary(GroupA_CA2$CA2_Q8_16)
summary(GroupB_CA2$CA2_Q8_16)
describe(GroupA_CA2$CA2_Q8_16)
describe(GroupB_CA2$CA2_Q8_16)
sd(GroupA_CA2$CA2_Q8_16)
sd(GroupB_CA2$CA2_Q8_16)
var(GroupA_CA2$CA2_Q8_16)
var(GroupB_CA2$CA2_Q8_16)

# Test test on CA2 Q8
t.test(GroupA_CA2$CA2_Q8_16,GroupB_CA2$CA2_Q8_16,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)


hist(GroupA_CA2$CA2_Result,freq=TRUE)
hist(GroupA_CA2$CA2_Result,prob=T,ylim=c(0,1),
     breaks=seq(from=0,to=100, by=5),
     xlim=c(0,100),main="Sets & Operations",xlab="Result",las=1)
lines(density(TP1),col="red",lwd=3)



#run a t-test of both groups looking at the Final scores, two-sided, unpaired
t.test(GroupA_Final_Test$Final_Test,GroupB_Final_Test$Final_Test,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)


# Final test
# group A

summary(GroupA_Final_Test$Final_Test)
describe(GroupA_Final_Test$Final_Test)
sd(GroupA_Final_Test$Final_Test)
mean(GroupA_Final_Test$Final_Test)
var(GroupA_Final_Test$Final_Test)

# Group B

summary(GroupB_Final_Test$Final_Test)
describe(GroupB_Final_Test$Final_Test)
sd(GroupB_Final_Test$Final_Test)
mean(GroupB_Final_Test$Final_Test)
var(GroupB_Final_Test$Final_Test)
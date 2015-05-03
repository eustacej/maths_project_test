# import csv files of result grades for all students from Git Hub

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

# Maths project dat import complete ###############################################################

# box plots of CA1, CA2 and Final test results for both Groups
par(mfrow=c(1,6)) # Set up a graph with 1 row and 3 columns
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
boxplot(GroupA_Final_Test$Final_Test,col="green", main ="Final Test",
        ylab ="Group A",
        ylim=c(0,100), las=1)
boxplot(GroupB_Final_Test$Final_Test,col="grey", main ="Final Test",
        ylab ="Group B",
        ylim=c(0,100), las=1)

describe(GroupA_CA1$CA1_Result)
describe(GroupB_CA1$CA1_Result)
describe(GroupA_CA2$CA2_Result)
describe(GroupB_CA2$CA2_Result)
describe(GroupA_Final_Test$Final_Test)
describe(GroupB_Final_Test$Final_Test)


#run a t-test of both groups looking at the CA2 Results,Question by question, two-sided, unpaired
t.test(GroupA_CA2$CA2_Q1_12,GroupB_CA2$CA2_Q1_12,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)
t.test(GroupA_CA2$CA2_Q.2_16,GroupB_CA2$CA2_Q.2_16,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)
t.test(GroupA_CA2$CA2_Q3_16,GroupB_CA2$CA2_Q3_16,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)
t.test(GroupA_CA2$CA2_Q4_12,GroupB_CA2$CA2_Q4_12,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)
t.test(GroupA_CA2$CA2_Q5_8,GroupB_CA2$CA2_Q5_8,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)

# Test test on Final tests
t.test(GroupA_Final_Test$Final_Test,GroupB_Final_Test$Final_Test,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)
#box plot
par(mfrow=c(1,6)) # Set up a graph with 1 row and 3 columns
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

summary(GroupA_CA2$CA2_Q1_12)
summary(GroupB_CA2$CA2_Q1_12)
describe(GroupA_CA2$CA2_Q1_12)
describe(GroupB_CA2$CA2_Q1_12)

sd(GroupA_CA2$CA2_Q1_12)
sd(GroupB_CA2$CA2_Q1_12)

var(GroupA_CA2$CA2_Q1_12)
var(GroupB_CA2$CA2_Q1_12)


par(mfrow=c(1,4)) # Set up a graph with 1 row and 2 columns
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



summary(GroupA_CA2$CA2_Q5_8)
summary(GroupB_CA2$CA2_Q5_8)
describe(GroupA_CA2$CA2_Q5_8)
describe(GroupB_CA2$CA2_Q5_8)

sd(GroupA_CA2$CA2_Q5_8)
sd(GroupB_CA2$CA2_Q5_8)

var(GroupA_CA2$CA2_Q5_8)
var(GroupB_CA2$CA2_Q5_8)


summary(GroupA_CA2$CA2_Q6_8)
summary(GroupB_CA2$CA2_Q6_8)
describe(GroupA_CA2$CA2_Q6_8)
describe(GroupB_CA2$CA2_Q6_8)

sd(GroupA_CA2$CA2_Q6_8)
sd(GroupB_CA2$CA2_Q6_8)

var(GroupA_CA2$CA2_Q6_8)
var(GroupB_CA2$CA2_Q6_8)

par(mfrow=c(1,4)) # Set up a graph with 1 row and 2 columns
boxplot(GroupA_CA2$CA2_Q7_12,col="green",main ="CA2 Q7 Results",
        ylab ="Group A",
        ylim=c(0,12), las=1)
boxplot(GroupB_CA2$CA2_Q7_12,col="yellow", main ="CA2 Q7 Results",
        ylab ="Group B",
        ylim=c(0,12), las=1)
boxplot(GroupA_CA2$CA2_Q8_16,col="green",main ="CA2 Q8 Results",
        ylab ="Group A",
        ylim=c(0,12), las=1)
boxplot(GroupB_CA2$CA2_Q8_16,col="yellow", main ="CA2 Q8 Results",
        ylab ="Group B",
        ylim=c(0,12), las=1)



summary(GroupA_CA2$CA2_Q8_16)
summary(GroupB_CA2$CA2_Q8_16)
describe(GroupA_CA2$CA2_Q8_16)
describe(GroupB_CA2$CA2_Q8_16)





#run a t-test of both groups looking at the CA1 Results, two-sided, unpaired
t.test(GroupA_CA1$CA1_Result,GroupB_CA1$CA1_Result,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)

#run a t-test of both groups looking at the CA2 Results, two-sided, unpaired
t.test(GroupA_CA2$CA2_Result,GroupB_CA2$CA2_Result,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)


# box plots of final test results all groups
par(mfrow=c(1,2)) # Set up a graph with 1 row and 3 columns
boxplot(GroupA_Final_Test$Final_Test,col="green", main ="Group A (Practice Test)",
        ylab ="Final Test",
        ylim=c(0,100), las=1)
boxplot(GroupB_Final_Test$Final_Test,col="grey", main ="Group B (No Practice Test)",
        ylab ="",
        ylim=c(0,100), las=1)


# box plots of CA2 test results all groups
par(mfrow=c(1,2)) # Set up a graph with 1 row and 2 columns
boxplot(GroupA_CA2$CA2_Result,col="green", main ="Group A (Practice Test)",
        ylab ="CA2 Results",
        ylim=c(0,100), las=1)
boxplot(GroupB_CA2$CA2_Result,col="grey", main ="Group B (No Practice Test)",
        ylab ="",
        ylim=c(0,100), las=1)

hist(GroupA_CA2$CA2_Result,freq=TRUE)
hist(GroupA_CA2$CA2_Result,prob=T,ylim=c(0,1),
     breaks=seq(from=0,to=100, by=5),
     xlim=c(0,100),main="Sets & Operations",xlab="Result",las=1)
lines(density(TP1),col="red",lwd=3)



#run a t-test of both groups looking at the Final scores, two-sided, unpaired
t.test(GroupA_Final_Test$Final_Test,GroupB_Final_Test$Final_Test,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)

# look at item difficulty in CA1
# there are 8 items in this test
sum(GroupA_CA1$CA1_Q1_10)/300
sum(GroupA_CA1$CA1_Q2_20)/600


#run a t-test of group A and Group B CA2 results looking at the CA2 Q1 Results, two-sided, unpaired
t.test(GroupA_CA2$CA2_Result,GroupB_CA2$CA2_Result,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)

t.test(GroupA_CA2$CA2_Q1_12,GroupB_CA2$CA2_Q1_12,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)
sd(GroupA_CA2$CA2_Result)
sd(GroupB_CA2$CA2_Result)


summary(GroupA_CA2$CA2_Result)
describe(GroupA_CA2$CA2_Result)


hist(Grade,ylab="Students",xlab="Score",las=1,main="Practice Test A1A")

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
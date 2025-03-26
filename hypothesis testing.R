#1 way t_tet
examscore<-c(70, 80, 85, 90, 77, 82, 88)
t_test<-t.test(examscore, mu=75)
print(t_test)


#2 way t_test
A<-c(70, 80, 85, 90, 75)
B<-c(60, 65, 70, 68, 72)
t_test<-t.test(A, B)
print(t_test)


#paired t_test
A<-c(70, 80, 85, 90, 75)
B<-c(60, 65, 70, 68, 72)
t_test<-t.test(A, B, paired = TRUE)
print(t_test)



#chisquar
observed <- matrix(c(30, 20, 10, 40), nrow = 2, byrow = TRUE)
chisq_test <- chisq.test(observed)
print(chisq_test)


#chisquare godness fit
observed <- c(32, 40, 28)
total_observations <- sum(observed)
expected <- c(0.30 * total_observations, 
              0.40 * total_observations, 
              0.30 * total_observations)
chisq_test_result <- chisq.test(observed, 
                                p = expected / total_observations, 
                                rescale.p = TRUE)
print(chisq_test_result)
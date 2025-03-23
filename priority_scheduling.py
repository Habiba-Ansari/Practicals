def ps(pro, bt, pr):
    n=len(pro)
    pro, bt, pri=zip(*sorted(zip(pro, bt, pr), key=lambda x:x[2]))

    wt=[0]*n
    tat=[0]*n
    for i in range(1, n):
        wt[i]=wt[i-1]+bt[i-1]

    for i in range(n):
        tat[i]=wt[i]+bt[i]

    print("Process\tPri\tBT\tWT\tTAT")
    for i in range(n):
        print(f"P{pro[i]}\t{pr[i]}\t{bt[i]}\t{wt[i]}\t{tat[i]}")

pro=[1,2,3,4,5]
bt=[1,7,3,8,2]
pr=[1,4,5,2,3]
ps(pro, bt, pr)

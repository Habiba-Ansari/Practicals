def fcfs(pro, bt):
    n=len(pro)
    wt=[0]*n
    tat=[0]*n

    for i in range(1, n):
        wt[i]=wt[i-1]+bt[i-1]

    for i in range(0, n):
        tat[i]=bt[i]+wt[i]
        
    print("Process\tBT\tWT\tTAT")
    for i in range(n):
        print(f"P{pro[i]}\t{bt[i]}\t{wt[i]}\t{tat[i]}")

pro=[1,2,3,4,5]
bt=[2,4,6,8,10]

fcfs(pro, bt)

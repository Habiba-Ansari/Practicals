def roundrobin(pro, bt, qntm):
    n=len(pro)
    rt=bt[:]
    time=0
    wt=[0]*n
    tat=[0]*n

    while True:
        done=True
        for i in range(n):
            if rt[i]>0:
                done=False
                if rt[i]>qntm:
                    time=time+qntm
                    rt[i]=rt[i]-qntm
                else:
                    time=time+rt[i]
                    wt[i]=time-bt[i]
                    rt[i]=0
        if done:
            break
            

    for i in range(n):
        tat[i]=wt[i]+bt[i]

    print("Process\tBT\tWT\tTAT")
    for i in range(n):
        print(f"P{pro[i]}\t{bt[i]}\t{wt[i]}\t{tat[i]}")


pro=[1,2,3,4]
bt=[10, 5,8,3]
qntm=3

roundrobin(pro, bt, qntm)

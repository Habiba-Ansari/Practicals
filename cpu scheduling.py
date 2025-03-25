data=[(1, 1, 7), (2, 2, 5), (3, 3, 1), (4, 4, 2), (5, 5, 8)]
data.sort(key=lambda x:x[2])
ct=[0]*5
tat=[0]*5
wt=[0]*5


ct[0]=data[0][2]
for i in range(5):
    ct[i]=ct[i-1]+data[i][2]
    
for i in range (5):
    tat[i]=ct[i]-data[i][1]
    
for i in range (5):
    wt[i]=tat[i]-data[i][2]

    
atat= sum(tat)/len(tat)
awt= sum(wt)/len(wt)

print("Program\t AT\t BT\t CT\t TAT\t WT\t")
for i in range(s5):
    print(data[i][0],"\t", data[i][1],"\t", data[i][2],"\t", ct[i],"\t", tat[i],"\t", wt[i])

print("Avg WT: ", awt)
print("Avg TAT:", atat)






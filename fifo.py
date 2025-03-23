def fifo(pages, cp):
    mmr=[]
    pagefault=0

    for i  in pages:
        if i not in mmr:
            if len(mmr)<cp:
                mmr.append(i)
            else:
                mmr.pop(0)
                mmr.append(i)
                pagefault+=1

    print("Page faoult is:", pagefault)

pages=[1,2,3,4,5]
cp=3
fifo(pages, cp)

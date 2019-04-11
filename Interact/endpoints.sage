@interact
def l_end(k=input_box(default=3),j=input_box(default=3),upper=input_box(default=1000),auto_update=False):
    temp=0.0
    tlist=[]
    #tlist2=[]
    for z in range(1,(j/2)+1):
        if gcd(z,j)==1:
            temp=0.0

            m=z
            
            for n in range(2,upper+1):
                for l in range(1,n/2+3):
                    if l< (m*n/j):
                        if gcd(l,n)==1:
                            temp=temp+((k-2)^2)/((k-1)^n-1)
            ans= temp.n().nearby_rational(max_denominator=k^(j+2))           
            print(ans)               
            tlist.append(ans) 
            #tlist2.append(temp.n()*(2^j-1
    tlist2=tlist[:]
    for q in range(len(tlist)):
        tlist2.append((1-1/(2^j-1))-tlist[q])
    #print(tlist) 
    tlist2.sort()
    print(tlist2)
    return tlist2

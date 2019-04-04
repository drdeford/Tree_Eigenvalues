##########################################################################
#for paper plots
d0={0:[1,2,3,4]}
d1={0:[1,2,3,4],1:[5,6,7],2:[8,9,10],3:[11,12,13],4:[14,15,16]}
G0=Graph(d0)
G1=Graph(d1)
Gs=[G0,G1]
d={0:[1,2,3,4],1:[5,6,7],2:[8,9,10],3:[11,12,13],4:[14,15,16]}
for l in range(2,7):
    for k in range(4*3^(l-1)):
        p=4*sum(3^i for i in range(l-1))+k+1
        d[p]=[3*p+2,3*p+3,3*p+4]
        
    Gs.append(Graph(d))
    #print(d)
for i in range(len(Gs)):
    #Gs[i].show(layout='tree')
    Gs[i].show(vertex_labels=False)
    #print(Gs[i].spectrum())
    list_plot([(x+4)/8 for x in Gs[i].spectrum()][::-1],ymin=0,ymax=1,ticks=[[0],.5]).show()
#a=Gs[-1].adjacency_matrix()
#(a.charpoly()).factor()
#list_plot( Gs[-1].spectrum())


##########################################################################


d0={0:[1,2,3]}
d1={0:[1,2,3],1:[4,5],2:[6,7],3:[8,9]}
G0=Graph(d0)
G1=Graph(d1)
Gs=[G0,G1]
d={0:[1,2,3],1:[4,5],2:[6,7],3:[8,9]}
for l in range(2,12):
    for k in range(3*2^(l-1)):
        p=2^(l-2)*6-2+k
        d[p]=[2*p+2,2*p+3]
    Gs.append(Graph(d))
    
for i in range(len(Gs)):
    #Gs[i].show(layout='tree')
    Gs[i].show()
    #print(Gs[i].spectrum())
    list_plot( Gs[i].spectrum()).show()
#a=Gs[-1].adjacency_matrix()
#(a.charpoly()).factor()
#list_plot( Gs[-1].spectrum())



##########################################################################
d0={0:[1,2,3,4]}
d1={0:[1,2,3,4],1:[5,6,7],2:[8,9,10],3:[11,12,13],4:[14,15,16]}
G0=Graph(d0)
G1=Graph(d1)
Gs=[G0,G1]
d={0:[1,2,3,4],1:[5,6,7],2:[8,9,10],3:[11,12,13],4:[14,15,16]}
for l in range(2,6):
    for k in range(4*3^(l-1)):
        p=4*sum(3^i for i in range(l-1))+k+1
        d[p]=[3*p+2,3*p+3,3*p+4]
        
    Gs.append(Graph(d))
    #print(d)
for i in range(len(Gs)):
    #Gs[i].show(layout='tree')
    Gs[i].show()
    #print(Gs[i].spectrum())
    list_plot( Gs[i].spectrum()).show()
#a=Gs[-1].adjacency_matrix()
#(a.charpoly()).factor()
#list_plot( Gs[-1].spectrum())

#################################################################

d0={0:[1,2,3,4,5]}
d1={0:[1,2,3,4,5],1:[6,7,8,9],2:[10,11,12,13],3:[14,15,16,17],4:[18,19,20,21],5:[22,23,24,25]}
G0=Graph(d0)
G1=Graph(d1)
Gs=[G0,G1]
d={0:[1,2,3,4,5],1:[6,7,8,9],2:[10,11,12,13],3:[14,15,16,17],4:[18,19,20,21],5:[22,23,24,25]}
for l in range(2,10):
    for k in range(5*4^(l-1)):
        p=5*sum(4^i for i in range(l-1))+k+1
        d[p]=[4*p+2,4*p+3,4*p+4,4*p+5]
        
    Gs.append(Graph(d))
    #print(d)
for i in range(len(Gs)):
    #Gs[i].show(layout='tree')
    Gs[i].show()
    #print(Gs[i].spectrum())
    list_plot( Gs[i].spectrum()).show()
#a=Gs[-1].adjacency_matrix()
#(a.charpoly()).factor()
#list_plot( Gs[-1].spectrum())
##################################################################
d0={0:[1,2,3]}
d1={0:[1,2,3],1:[4,5],2:[6,7],3:[8,9]}
G0=Graph(d0)
G1=Graph(d1)
Gs=[G0,G1]
d={0:[1,2,3],1:[4,5],2:[6,7],3:[8,9]}
for l in range(2,6):
    for k in range(3*2^(l-1)):
        p=2^(l-2)*6-2+k
        d[p]=[2*p+2,2*p+3]
    Gs.append(Graph(d))
    
for i in range(len(Gs)):
    #Gs[i].show(layout='tree')
    Gs[i].show()
    #print(Gs[i].spectrum())
    #list_plot( Gs[i].spectrum()).show()
#a=Gs[-1].adjacency_matrix()
#(a.charpoly()).factor()
#list_plot( Gs[-1].spectrum())


matlab.sage2matlab_matrix_string(Gs[-1].adjacency_matrix())


#####################################################################
x^2 * (x^2 - 3)
x^4 * (x^2 - 5) * (x^2 - 2)^2
(x - 1) * (x + 1) * (x - 2)^2 * (x + 2)^2 * x^8 * (x^2 - 6) * (x^2 - 2)^3
(x - 2)^3 * (x + 2)^3 * x^16 * (x^2 - x - 4) * (x^2 + x - 4) * (x^2 - 2)^6 * (x^4 - 6*x^2 + 4)^2
(x - 2)^6 * (x + 2)^6 * x^32 * (x^2 - 6)^2 * (x^2 - 2)^14 * (x^4 - 6*x^2 + 4)^3 * (x^6 - 11*x^4 + 30*x^2 - 12)
(x - 2)^12 * (x + 2)^12 * x^64 * (x^2 - 6)^3 * (x^2 - 2)^27 * (x^4 - 6*x^2 + 4)^6 * (x^6 - 13*x^4 + 48*x^2 - 44) * (x^6 - 10*x^4 + 24*x^2 - 8)^2
(x - 2)^26 * (x + 2)^26 * x^128 * (x^2 - 6)^6 * (x^2 - 2)^54 * (x^4 - 8*x^2 + 8)^2 * (x^4 - 6*x^2 + 4)^12 * (x^6 - 10*x^4 + 24*x^2 - 8)^3 * (x^8 - 15*x^6 + 70*x^4 - 104*x^2 + 24)
(x - 2)^51 * (x + 2)^51 * x^256 * (x^2 - 6)^12 * (x^2 - 2)^110 * (x^4 - 8*x^2 + 8)^3 * (x^4 - 6*x^2 + 4)^24 * (x^6 - 12*x^4 + 36*x^2 - 8)^2 * (x^6 - 10*x^4 + 24*x^2 - 8)^6 * (x^8 - 17*x^6 + 96*x^4 - 200*x^2 + 112)

######################################################################

var('x')
p=[1,x]
for i in range(20):
    p.append((x*p[-1]-2*p[-2]).factor())
p

##############################################################
[1,
 x,
 x^2 - 2,
 (x + 2)*(x - 2)*x,
 x^4 - 6*x^2 + 4,
 (x^2 - 2)*(x^2 - 6)*x,
 x^6 - 10*x^4 + 24*x^2 - 8,
 (x^4 - 8*x^2 + 8)*(x + 2)*(x - 2)*x,
 (x^6 - 12*x^4 + 36*x^2 - 8)*(x^2 - 2),
 (x^4 - 6*x^2 + 4)*(x^4 - 10*x^2 + 20)*x,
 x^10 - 18*x^8 + 112*x^6 - 280*x^4 + 240*x^2 - 32,
 (x^2 + 2*x - 2)*(x^2 - 2*x - 2)*(x^2 - 2)*(x^2 - 6)*(x + 2)*(x - 2)*x,
 x^12 - 22*x^10 + 180*x^8 - 672*x^6 + 1120*x^4 - 672*x^2 + 64,
 (x^6 - 10*x^4 + 24*x^2 - 8)*(x^6 - 14*x^4 + 56*x^2 - 56)*x,
 (x^8 - 18*x^6 + 104*x^4 - 192*x^2 + 16)*(x^4 - 6*x^2 + 4)*(x^2 - 2),
 (x^8 - 16*x^6 + 80*x^4 - 128*x^2 + 32)*(x^4 - 8*x^2 + 8)*(x + 2)*(x - 2)*x,
 x^16 - 30*x^14 + 364*x^12 - 2288*x^10 + 7920*x^8 - 14784*x^6 + 13440*x^4 - 4608*x^2 + 256,
 (x^6 - 12*x^4 + 36*x^2 - 8)*(x^6 - 12*x^4 + 36*x^2 - 24)*(x^2 - 2)*(x^2 - 6)*x,
 x^18 - 34*x^16 + 480*x^14 - 3640*x^12 + 16016*x^10 - 41184*x^8 + 59136*x^6 - 42240*x^4 + 11520*x^2 - 512,
 (x^4 + 2*x^3 - 6*x^2 - 12*x - 4)*(x^4 - 2*x^3 - 6*x^2 + 12*x - 4)*(x^4 - 6*x^2 + 4)*(x^4 - 10*x^2 + 20)*(x + 2)*(x - 2)*x,
 (x^12 - 26*x^10 + 256*x^8 - 1168*x^6 + 2368*x^4 - 1536*x^2 + 64)*(x^6 - 10*x^4 + 24*x^2 - 8)*(x^2 - 2),
 (x^10 - 18*x^8 + 112*x^6 - 280*x^4 + 240*x^2 - 32)*(x^10 - 22*x^8 + 176*x^6 - 616*x^4 + 880*x^2 - 352)*x]

################################################################
d0={0:[1,2,3]}
d1={0:[1,2,3],1:[4,5],2:[6,7],3:[8,9]}
G0=Graph(d0)
G1=Graph(d1)
Gs=[G0,G1]
d={0:[1,2,3],1:[4,5],2:[6,7],3:[8,9]}
for l in range(2,15):
    for k in range(3*2^(l-1)):
        p=2^(l-2)*6-2+k
        d[p]=[2*p+2,2*p+3]
    Gs.append(Graph(d))
    
for i in range(len(Gs)):
    #Gs[i].show(layout='tree')
    #Gs[i].show()
    #print((Gs[i].kirchhoff_matrix()).eigenvalues())
    print((((Gs[i].kirchhoff_matrix()).charpoly()).factor()))
    #list_plot((Gs[i].kirchhoff_matrix()).eigenvalues()).show()
#a=Gs[-1].adjacency_matrix()
#(a.charpoly()).factor()
#list_plot( Gs[-1].spectrum())

####################################################################

f=x^3

p=plot(f)

x0=.5

y0=f(x0)

q=point((x0,y0),color='red',size=50)

g=f.derivative()

r=line([(0,y0-g(x0)*.5),(1,y0+g(x0)*.5)] ,color='green')

(p+q+r).show()

####################################################################
def funplot(f,x0):
    p=plot(f)
    y0=f(x0)
    q=point((x0,y0),color='red',size=50)

    g=f.derivative()

    r=line([(x0-.5,y0-g(x0)*.5),(x0+.5,y0+g(x0)*.5)] ,color='green')

    (p+q+r).show()

####################################################################

#d0={0:[1,2,3]}
#d1={0:[1,2,3],1:[4,5],2:[6,7],3:[8,9],4:[5],6:[7],8:[9]}
#G0=Graph(d0)
#G1=Graph(d1)
#Gs=[G0,G1]
d={0:[1,2,3,4,5,6],1:[2],3:[4],5:[6]}
G0=Graph(d)

d={0:[1,2,3,4,5,6],1:[2,7,8],2:[9,10],3:[4,11,12],4:[13,14],5:[6,15,16],6:[17,18],7:[8],9:[10],11:[12],13:[14],15:[16],17:[18]}
G1=Graph(d)

Gs=[G0,G1]

for l in range(2,10):
    for k in range(3*2^(l)):
        p=2^(l-1)*6-5+k
        if p%2==1:
            d[p]=[2*p+5,2*p+6,p+1]
            d[2*p+5]=[2*p+6]
        if p%2==0:
            d[p]=[2*p+5,2*p+6]
            d[2*p+5]=[2*p+6]
    Gs.append(Graph(d))
    
for i in range(len(Gs)):
    #Gs[i].show(layout='tree')
    Gs[i].show(vertex_size=10)
    #print(Gs[i].spectrum())
    list_plot( Gs[i].spectrum()).show()
#a=Gs[-1].adjacency_matrix()
#(a.charpoly()).factor()
#list_plot( Gs[-1].spectrum())
######################################################################
#d0={0:[1,2,3]}
#d1={0:[1,2,3],1:[4,5],2:[6,7],3:[8,9],4:[5],6:[7],8:[9]}
#G0=Graph(d0)
#G1=Graph(d1)
#Gs=[G0,G1]
d={0:[1,2,3,4,5,6],1:[2],3:[4],5:[6]}
G0=Graph(d)

d={0:[1,2,3,4,5,6],1:[2,7,8],2:[9,10],3:[4,11,12],4:[13,14],5:[6,15,16],6:[17,18],7:[8],9:[10],11:[12],13:[14],15:[16],17:[18]}
G1=Graph(d)

Gs=[G0,G1]

for l in range(2,10):
    for k in range(3*2^(l)):
        p=2^(l-1)*6-5+k
        if p%2==1:
            d[p]=[2*p+5,2*p+6,p+1]
            d[2*p+5]=[2*p+6]
        if p%2==0:
            d[p]=[2*p+5,2*p+6]
            d[2*p+5]=[2*p+6]
    Gs.append(Graph(d))
    
for i in range(len(Gs)):
    #Gs[i].show(layout='tree')
    Gs[i].show(vertex_size=10)
    #print(Gs[i].spectrum())
    #list_plot( Gs[i].spectrum()).show()
    a=Gs[i].adjacency_matrix()
    pretty_print((a.charpoly()).factor())
#list_plot( Gs[-1].spectrum())

################################################################################
z=[]
for i in range(100):
    z.append(3*(2^(i))-2)

a=[2,3,6,12,24,48,96,192]
for i in range(100):
    a.append(a[-1]*2)



b=[]
k=2

for l in range(k-1):
    b.append(0)
    
    
for j in range(50):
    temp=a[j]
    for l in range(j-1):
        if l%k==j%k:
            temp=temp+a[l]
            
    b.append(temp)

for h in range(40):
    #print((z[h+1]/b[h+1]).n())
    print((b[h+1]/z[h+1]).n())

b
####################################################################################


d={'0':['a','b','0'],'1':['a','b','1'],'2':['a','b','2']}
g={'00':'aa','01':'aa','10':'aa','11':'aa','20':'aa','21':'aa','02':'bb','03':'bb','12':'bb','13':'bb','22':'bb','23':'bb'}

def younger(s):
    n=len(s)
    if n<3:
        return g[s]
    if n>2:
        if int(s[-1])>1:
            return s[:-1]
        if int(s[-1])<2:
            y=younger(s[:-1])
            return y

#younger('0110230010')
#younger('01102300103')

#w=['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']
w=[['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']]
v=['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']

for k in range(2):
    w.append(w[k][:])
    for l in w[k]:
        for i in range(4):
            w[k+1].append(l+str(i))

            
def boundary(s):
    return [s,s[:-1],younger(s)[:-1]]

for h in w[-1]:
    d[h]=boundary(h)
    
d['001']
    

###########################################################################################






d={'0':['a','b','0'],'1':['a','b','1'],'2':['a','b','2']}
g={'00':'aa','01':'aa','10':'aa','11':'aa','20':'aa','21':'aa','02':'bb','03':'bb','12':'bb','13':'bb','22':'bb','23':'bb'}

def younger(s):
    n=len(s)
    if n<3:
        return g[s]
    if n>2:
        if int(s[-1])>1:
            return s[:-1]
        if int(s[-1])<2:
            y=younger(s[:-1])
            return y

#younger('0110230010')
#younger('01102300103')

#w=['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']
w=[['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']]
v=['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']

for k in range(1):
    w.append(w[k][:])
    for l in w[k]:
        for i in range(4):
            w[k+1].append(l+str(i))

            
def boundary(s):
    return [s,s[:-1],younger(s)[:-1]]

for h in w[-1]:
    d[h]=boundary(h)
    
#d['012110']
f=w[-1][:]
f.insert(0,'2')
f.insert(0,'1')
f.insert(0,'0')
v=f[:]
v.insert(0,'b')
v.insert(0,'a')

D=matrix(binomial(len(v),2),binomial(len(v),2))
A=matrix(binomial(len(v),2),binomial(len(v),2))
K=matrix(binomial(len(v),2),binomial(len(v),2))


        
tempx=0
tempy=0

for i in range(len(v)):
    for j in range(len(v)):
        x1=v[i]
        x2=v[j]
        if i<j:
            degree=0
            for z in f:
                if x1 in d[z] and x2 in d[z]:
                    degree=degree+1
            D[tempx,tempx]=degree
            #print(tempx)
            tempx=tempx+1
            
            
avg_deg=0

for i in range(binomial(len(v),2)):
    avg_deg=avg_deg+D[i,i]

avg_deg=avg_deg/binomial(len(v),2)

rho=avg_deg/len(v)

tempx=0
tempy=0

for i in range(len(v)):
    for j in range(len(v)):
        x1=v[i]
        x2=v[j]
        if i<j:
            tempy=0
            for g in range(len(v)):
                for h in range(len(v)):
                    y1=v[g]
                    y2=v[h]
                    if g<h:
                        pos_f=set([x1,x2,y1,y2])
                        
                        if len(pos_f)==3:
                            K[tempx,tempy]=1
                            K[tempy,tempx]=1
                            for vertex in pos_f:
                                if vertex in f:
                                    if set(d[vertex])==pos_f:
                                        A[tempx,tempy]=1
                                        A[tempy,tempx]=1
                            
                            
                        
                        
                        tempy=tempy+1
            tempx=tempx+1  
            
L=D-A+rho*(K+2* identity_matrix(binomial(len(v),2)))






########################################################################################################


d={'0':['a','b','0'],'1':['a','b','1'],'2':['a','b','2']}
g={'00':'aa','01':'aa','10':'aa','11':'aa','20':'aa','21':'aa','02':'bb','03':'bb','12':'bb','13':'bb','22':'bb','23':'bb'}

def younger(s):
    n=len(s)
    if n<3:
        return g[s]
    if n>2:
        if int(s[-1])>1:
            return s[:-1]
        if int(s[-1])<2:
            y=younger(s[:-1])
            return y

#younger('0110230010')
#younger('01102300103')

#w=['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']
w=[['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']]
v=['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']

for k in range(1):
    w.append(w[k][:])
    for l in w[k]:
        for i in range(4):
            w[k+1].append(l+str(i))

            
def boundary(s):
    return [s,s[:-1],younger(s)[:-1]]



    
#d['012110']
f=w[-1][:]
f.insert(0,'2')
f.insert(0,'1')
f.insert(0,'0')
v=f[:]
v.insert(0,'b')
v.insert(0,'a')

D=matrix(2*binomial(len(v),2),2*binomial(len(v),2))
A=matrix(2*binomial(len(v),2),2*binomial(len(v),2))
K=matrix(2*binomial(len(v),2),2*binomial(len(v),2))


        
tempx=0
tempy=0

for i in range(len(v)):
    for j in range(len(v)):
        x1=v[i]
        x2=v[j]
        if i!=j:
            degree=0
            for z in f:
                if x1 in d[z] and x2 in d[z]:
                    degree=degree+1
            D[tempx,tempx]=degree
            #print(tempx)
            tempx=tempx+1
            
            
avg_deg=0

for i in range(2*binomial(len(v),2)):
    avg_deg=avg_deg+D[i,i]

avg_deg=avg_deg/(2*binomial(len(v),2))

rho=avg_deg/len(v)

tempx=0
tempy=0

for i in range(len(v)):
    for j in range(len(v)):
        x1=v[i]
        x2=v[j]
        if i!=j:
            tempy=0
            for g in range(len(v)):
                for h in range(len(v)):
                    y1=v[g]
                    y2=v[h]
                    if g!=h:
                        pos_f=set([x1,x2,y1,y2])
                        
                        if x2==y2:
                            if x1!=y1:
                                K[tempx,tempy]=1
                                K[tempy,tempx]=1
                            for vertex in pos_f:
                                if vertex in f:
                                    if set(d[vertex])==pos_f:
                                        A[tempx,tempy]=1
                                        A[tempy,tempx]=1
                            
                            
                        
                        
                        tempy=tempy+1
            tempx=tempx+1  
            
L=D-A+rho*(K+2* identity_matrix(2*binomial(len(v),2)))

###############################################################################################

d={'0':['a','b','0'],'1':['a','b','1'],'2':['a','b','2']}
g={'00':'aa','01':'aa','10':'aa','11':'aa','20':'aa','21':'aa','02':'bb','03':'bb','12':'bb','13':'bb','22':'bb','23':'bb'}

def younger(s):
    n=len(s)
    if n<3:
        return g[s]
    if n>2:
        if int(s[-1])>1:
            return s[:-1]
        if int(s[-1])<2:
            y=younger(s[:-1])
            return y

#younger('0110230010')
#younger('01102300103')

#w=['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']
w=[['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']]
v=['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']

for k in range(1):
    w.append(w[k][:])
    for l in w[k]:
        for i in range(4):
            w[k+1].append(l+str(i))

            
def boundary(s):
    return [s,s[:-1],younger(s)[:-1]]

for h in w[-1]:
    d[h]=boundary(h)
    
#d['012110']
f=w[-1][:]
f.insert(0,'2')
f.insert(0,'1')
f.insert(0,'0')
v=f[:]
v.insert(0,'b')
v.insert(0,'a')

e=[]

for i in range(len(v)):
    for j in range(len(v)):
        if i<j:
            temp=0
            for z in f:
                if v[i] in d[z]:
                    if v[j] in d[z]:
                        temp=temp+1
            if temp>0:
                e.append([v[i],v[j]])





#################################################################          

d={'0':['a','b','0'],'1':['a','b','1'],'2':['a','b','2']}
g={'00':'aa','01':'aa','10':'aa','11':'aa','20':'aa','21':'aa','02':'bb','03':'bb','12':'bb','13':'bb','22':'bb','23':'bb'}

def younger(s):
    n=len(s)
    if n<3:
        return g[s]
    if n>2:
        if int(s[-1])>1:
            return s[:-1]
        if int(s[-1])<2:
            y=younger(s[:-1])
            return y

#younger('0110230010')
#younger('01102300103')

#w=['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']
w=[['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']]
v=['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']

for k in range(2):
    w.append(w[k][:])
    for l in w[k]:
        if len(l)==2+k:
            for i in range(4):
                w[k+1].append(l+str(i))

            
def boundary(s):
    return [s,s[:-1],younger(s)[:-1]]

for h in w[-1]:
    d[h]=boundary(h)
    
#d['012110']
f=w[-1][:]
f.insert(0,'2')
f.insert(0,'1')
f.insert(0,'0')
v=f[:]
v.insert(0,'b')
v.insert(0,'a')

e=[]

for i in range(len(v)):
    for j in range(len(v)):
        if i<j:
            temp=0
            for z in f:
                if v[i] in d[z]:
                    if v[j] in d[z]:
                        temp=temp+1
            if temp>0:
                
                e.append([v[i],v[j]])
###############################################################################
fdown={}

for z in f:
    fdown[z]=[]
    for y in f:
        if z!=y:
            for x in e:
                if x[0] in d[z] and x[1] in d[z] and x[0] in d[y] and x[1] in d[y]:
                    fdown[z].append(y)
                    
G=Graph(fdown)
G.plot(vertex_size=10)#,figsize=50)
list_plot( G.spectrum()).show()
###############################################################################

eup={}


etup=[]
for i in e:
    etup.append(tuple(i))
for z in etup:
    eup[z]=[]
    for y in etup:
        if z!=y:
            for x in f:
                if z[0] in d[x] and z[1] in d[x] and y[0] in d[x] and y[1] in d[x]:
                    eup[z].append(y)
                    
                    

G=Graph(eup)
G.plot(vertex_size=10)#,figsize=50)
list_plot( G.spectrum()).show()
############################################################################################

d={'0':['a','b','0'],'1':['a','b','1'],'2':['a','b','2']}
g={'00':'aa','01':'aa','10':'aa','11':'aa','20':'aa','21':'aa','02':'bb','03':'bb','12':'bb','13':'bb','22':'bb','23':'bb'}

def younger(s):
    n=len(s)
    if n<3:
        return g[s]
    if n>2:
        if int(s[-1])>1:
            return s[:-1]
        if int(s[-1])<2:
            y=younger(s[:-1])
            return y

#younger('0110230010')
#younger('01102300103')

#w=['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']
w=[['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']]
v=['00' ,'01' ,'10' ,'11' ,'20' ,'21' ,'02' ,'03' ,'12' ,'13' ,'22' ,'23']

for k in range(1):
    w.append(w[k][:])
    for l in w[k]:
        if len(l)==2+k:
            for i in range(4):
                w[k+1].append(l+str(i))

            
def boundary(s):
    return [s,s[:-1],younger(s)[:-1]]

for h in w[-1]:
    d[h]=boundary(h)
    
G=Graph(d)
G.remove_loops()
G.add_edge(['a','b'])
G.plot(vertex_size=10,figsize=5)

##############################################################################################
#temp=0.0
#for n in range(6,2000):
#    for l in range(1,n/2+3):
#        if l< (n/5):
#            if gcd(l,n)==1:
#                temp=temp+1/(2^n-1)
temp=0.0
for n in range(8,2000):
    for l in range(1,n/2+3):
        if l< (3*n/7):
            if gcd(l,n)==1:
                temp=temp+1/(2^n-1)
            
#temp=temp+1/63+1/15+2/31+2/127+1/7
temp.n()
#############################################################################################


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
     

#############################################################################################


def phiam(a,m,n):
    temp=0
    for l in range(1,n):
        if gcd(l,n)==1:
            if l<((a*n)/m):
                temp=temp+1
    return temp
                
    
#print(('i','phi_am(i)','varphi(i)'))
#for i in range(20):
#    print((i,phiam(1,4,i),euler_phi(i)))
    
 
def overd(a,m,x):
    temp2=0
    divs=x.divisors()
    for d in divs:
        temp2=temp2+phiam(a,m,d)
    return temp2

overd(6,10,14)

#################################################################################################

var('x','a','b','c','d','e','f','g','E')

M=matrix([[E,-E*x,E*c,0,0,0,0],[0,E,-E*x,E*d,0,0,0],[0,0,E,-E*x,E*e,0,0],[0,0,0,E,-E*x,E*f,0],[0,0,0,0,E,-E*x,E*g],[a,0,0,0,0,E,-E*x],[-x,b,0,0,0,0,E]])
M.determinant()
    
####################################################################################################
d0={'0':['00','01','02']}
d1={'0':['00','01','02'],'00':['000','001','002'],'01':['010','011','012'],'02':['020','021','022']}
G0=Graph(d0)
G1=Graph(d1)
Gs=[G0,G1]
d={'0':['00','01','02'],'00':['000','001','002'],'01':['010','011','012'],'02':['020','021','022']}
olds=['00','01','02']
for l in range(2,10):
    news=[]
    for p in olds:
        news.append(p+'0')
        news.append(p+'1')
        news.append(p+'2')
    for p in news:
        d[p]=[p+'0',p+'1',p+'2']
    olds=news[:]
        
    Gs.append(Graph(d))
    #print(d)
for i in range(len(Gs)):
    #Gs[i].show(layout='tree')
    #Gs[i].show()
    #print(Gs[i].spectrum())
    list_plot( Gs[i].spectrum()).show()
    a=Gs[i].adjacency_matrix()
    print((a.charpoly()).factor())
#list_plot( Gs[-1].spectrum())
#########################################################################################################
d={'a':['b','c','d','e'],'b':['c'],'d':['e']}

G=Graph(d)

G.show()

a=G.adjacency_matrix()
print((a.charpoly()).factor())
d2={'a':['b','c','d','e'],'b':['c','b2','b3','b4','b5'],'b2':['b3'],'b4':['b5'],'c':['c2','c3','c4','c5'],'c2':['c3'],'c4':['c5'],'d':['e','d2','d3','d4','d5'],'d2':['d3'],'d4':['d5'],'e':['e2','e3','e4','e5'],'e2':['e3'],'e4':['e5']}

G2=Graph(d2)
G2.show()
a=G2.adjacency_matrix()
print((a.charpoly()).factor())


############################################################################################
d={'a':['b']}

g=Graph(d)
g.plot(vertex_labels=False,vertex_size=30)
#d={'a':['b','x','y'],'b':['x','y']}
#g=Graph(d)
#g.plot(vertex_labels=False,vertex_size=30)

#d={'a':['b','x','y','h','i','n','o'],'b':['x','y','j','k','l','m'],'x':['h','i','j','k'],'y':['l','m','n','o']}
#g=Graph(d)
#g.plot(vertex_labels=False,vertex_size=30)


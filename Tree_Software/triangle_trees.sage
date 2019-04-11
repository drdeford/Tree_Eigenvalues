#Triangle trees
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

###################################3
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

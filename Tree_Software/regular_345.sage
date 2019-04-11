#################################
#3 Regular Trees
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

#################################
#4 Regular Trees
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
#################################
#5 Regular Trees
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

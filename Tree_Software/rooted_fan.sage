
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

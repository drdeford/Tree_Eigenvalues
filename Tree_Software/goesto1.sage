a=range(2,1200)
verts=[1]
leaves=[1]
for i in range(len(a)):
    verts.append(verts[i]+leaves[i]*a[i])
    leaves.append(leaves[i]*a[i])
               
#print(leaves)
#print(verts)

#for i in range(len(a)):
#    print(i,leaves[i+1]/verts[i+1],(leaves[i+1]/verts[i+1]).n())


for i in range(len(a)-1):
    print(i,((a[i+1]-1)*leaves[i])/verts[i+1],(((a[i+1]-1)*leaves[i])/verts[i+1]).n())
    

    
    

def build_trees(branches,b_lists):
    
    d_list=[]
    for i in range(branches):
        d_list.append(make_branch(i,b_lists[i]))
    
    final_d = {}
    for dictionary in d_list:
        final_d.update(dictionary)
        
    root_n=[]
    for i in range(branches):
        root_n.append((i,0))
                      
    
    final_d[0]=root_n
    
    return(Graph(final_d))
    
    
                      
def make_branch(b,sigma):
    
    d={}
    old_list=[(b,0)]
    
    for i in range(len(sigma)):
        new_list=[]
        for j in range(len(old_list)):
            d[old_list[j]]=[]
            for k in range(sigma[i]):
                new_list.append((b,i+1,j*sigma[i]+k))
                d[old_list[j]].append((b,i+1,j*sigma[i]+k))
        old_list=new_list[:]
                
    return d
                
@interact
def multi_tree(b = input_box(default=3, label='Number of branches: '), a = input_box(default = [2,3,2,3], label ='Branching pattern: '), pg = checkbox(default=True, label='Plot Graph? '),  ps = checkbox(default=True, label='Plot Spectrum? '), pc = checkbox(default=True, 
label='Display characteristic polynomial? '), auto_update= False):
    
    g=build_trees(b, [a for i in range(b)])   
    
    if pg == True:
        (g.plot(vertex_labels=False,vertex_size=20)  ).show()
    if ps ==True:
        list_plot(g.spectrum()).show()
        
    if pc == True:
        a=g.adjacency_matrix()
        f=(a.charpoly())
        #pretty_print(f)
        pretty_print('CharPoly= ',f.factor())
        
    
    
    
    
    
#a=[]
#for i in range(4):       
#    a.append(2)
#        
#    g=build_trees(3,[a,a,a])   
#    list_plot(g.spectrum()).show()
#    (g.plot(vertex_labels=False,vertex_size=10,figsize=20,layout='tree')  ).show()
#    
#    a.append(3)
#    g=build_trees(3,[a,a,a])   
#    list_plot(g.spectrum()).show()
#    (g.plot(vertex_labels=False,vertex_size=10,figsize=20,layout='tree')).show() 


    
        

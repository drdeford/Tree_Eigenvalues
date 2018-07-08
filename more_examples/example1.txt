@interact
def _(s=input_box(default=1/(n^2),label='Summand:'),l=input_box(default=1,label='Lower Bound:'),u=input_box(default=infinity,label='Upper Bound:'),terms=input_box(default=100,label='Terms to plot:')):
 

  a= sum(s,n,l,u)
  pretty_print(html('$$\sum_{n=%s}^{%s}%s=%s$$'%(l,latex(u),latex(s),latex(a))))
  pretty_print(html('$$\sum_{n=%s}^{%s}%s=%s$$'%(l,latex(u),latex(s),N(a))))


  #pretty_print(html('$f(x)\;=\;%s$'%latex(f)))
  #show(dot + p + pt, ymin=c,ymax=d)
    
  x=[]
  y=[]
  for i in range(l,l+terms):
	x.append(i)
	y.append(sum(s,n,l,i))
  p=list_plot([[x[i],y[i]] for i in range(len(x))])
  p.show()

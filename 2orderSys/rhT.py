from decimal import*
R=xrange
def s(p):
    d=len(p)
    if 0 in p:return 0
    elif sum(1 for c in p if c>0) not in (0,d):return 0
    p=p+[0] if d%2 else p[:]
    r=[[0 for j in R(len(p)//2)] for i in R(d)]
    r[:2]=[[v for v in p[i::2]] for i in (0,1)]
    for i in R(2,len(r)):
        a,h,b = 1,0,0
        for k in R(len(r[i])-1):
            v=(r[i-1][0]*r[i-2][k+1]-r[i-2][0]*r[i-1][k+1])/r[i-1][0]
            r[i][k],a,h,b=v,a and v==0,h or v==0,b or (h and v!=0)
    if a:r[i]=[v*max(0,d-i-2*k) for k,v in enumerate(r[i-1])]
    elif b:return False
    return sum(1 for v in r if v[0]>0) in (0,d)

while 1:
    r=raw_input()
    if not r:break
    print 1 if s([Decimal(x) for x in r.split()]) else 0

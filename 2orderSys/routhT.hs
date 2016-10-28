p(a:b:s)=(a,b):p s
p[a]=[(a,0)]
p[]=[]
s((a:w),m@(b:v))=a:s(m,m%zipWith(\c d->(b*c-a*d)/b)w v)
s((a:_),_)=[a]
m%(0:v)|all(==0)v=fst$foldr(\b(d,p)->(b*p:d,2+p))([],0)m
m%v=v
q(a:s)|all((>0).(a*))s="1\n"
q _="0\n"
main=interact$(>>=q.s.unzip.p.map read.words).lines

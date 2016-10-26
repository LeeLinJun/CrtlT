import math
import sys
import sympy

def CalcZeta(sigma):
	f=(math.log(sigma)/3.14)**2
	return math.sqrt(f/(1+f))
def CalcWn(zeta,Tp):
    return math.pi/(Tp*math.sqrt(1-zeta**2))
def FeedBack(G,H):
    return sympy.cancel(G/(1+G*H))
if __name__=="__main__":
    s,G,H=sympy.symbols('s G H ')
    print(FeedBack(G,H))
    zeta=CalcZeta(float(sys.argv[1]))
    wn=CalcWn(zeta,float(sys.argv[2]))
    print (zeta)
    print (wn)

num=20;den=[0.5 1 0];
G=tf(num,den);
w=logspace(-2,2,200);
[wpos,ypos]=bd_asymp(G,w);
semilogx(wpos,ypos)
grid

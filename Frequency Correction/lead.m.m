%lead

dsin=@(x)sin(x/180*pi);
lg=@(x) log(x)/log(10);
alpha=(1-dsin(52.96))/(1+dsin(52.96));
-20*lg(1/sqrt(alpha))
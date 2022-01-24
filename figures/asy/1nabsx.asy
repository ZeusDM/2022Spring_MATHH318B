import graph;
size(10cm);

for (int n=1; n<10; ++n){
  real t0(real x) {return 0 - 0*n*abs(x);}
  real t1(real x) {return 1 - 1*n*abs(x - 1);}
  real t2(real x) {return 2 - 2*n*abs(x - 2);}
  real t3(real x) {return 3 - 3*n*abs(x - 3);}
  real s1(real x) {return (-1) - (-1)*n*abs(x + 1);}
  draw(graph(s1,-1-1/n,-1+1/n,n=101)--graph(t0,-1/n,1/n,n=101), rgb(1-n/10, 1-n/10, 1-n/10)+linewidth(0));
}

axes("$x$", "$y$",  red);

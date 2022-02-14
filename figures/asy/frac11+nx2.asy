import graph;
size(10cm);

filldraw((-.1, -.1)--(-.1, .1)--(1.1, .1)--(1.1, -.1)--cycle, blue+opacity(.2), blue);

for (int i=0; i<20; ++i){
  int k=2^i;
  real t(real x) {return 1/(1+k*x^2);}
  draw(graph(t,0,1.1, n=1000), rgb(0, .5, .5)+opacity(1/2-i/200)+linewidth(0));
  if (i < 5){
    label(format("$f_{%d}$", k), (1.15, t(1.1)), rgb(0, .5, .5));
  }
}

axes("$x$", "$y$", red);

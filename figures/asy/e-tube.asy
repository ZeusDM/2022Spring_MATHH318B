import graph;
size(13cm);

real f(real x) {return .35*x + .05*sin(10*x);}
real g(real x) {return f(x) + .03;}
real h(real x) {return f(x) - .03;}

filldraw(graph(g,.1,.9)--graph(h,.9,.1)--cycle, blue+opacity(.2), blue);

for (int i=1; i<100; ++i){
  real t(real x) {return f(x) + (1/i)*.04*sin(7*x+10*i) + (1/i)*0.1*sin(13*x-0.6);}
  draw(graph(t,.1,.9), rgb(0, .5, 1)+opacity(1/3+i/200)+linewidth(0));
  if (i < 4){
    label(format("$f_%d$", i), (.93, t(.9)), rgb(0, .5, 1));
  }
}

draw(graph(f,.1,.9), linewidth(1));
label("$f$", (.93, f(.9)));

draw("$\epsilon$", (.09, g(.1))--(.09, f(.1)), blue, Arrows, PenMargins);
draw("$\epsilon$", (.09, f(.1))--(.09, h(.1)), blue, Arrows, PenMargins);

xaxis("$x$", 0, 1, red);

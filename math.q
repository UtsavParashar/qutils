//**
 / Mathematical Functions
 / Author - Utsav Parashar
//**

/- Factorial
fact:{*/[1+til x]};

/- Factorial using recursion
fact:{if[x<=1;:1]; x*.z.s[x-1]}

/- Fibonacci Series with iterating condition - do
fib:{{x,sum -2#x}/[x;0 1]};

fib:{{x,sum -2#x}/[x;y]} 
/- Test - q)fib[5; 1 1]  / 1 1 2 3 5 8 13

/ - Fibonacci with limiting condition - while
q)fib:{{x,sum -2#x}/[{last[y]<x}y;x]}
/- Test q)fib[0 1; 200] / 0 1 1 2 3 5 8 13 21 34 55 89 144 233

/- Fibonacci with limiting condition - while
/- inner function is replaced by composition
q)fib:{{x,sum -2#x}/[y>last@;x]}
/- q)fib[1 1; 200] / 1 1 2 3 5 8 13 21 34 55 89 144 233


/- Permutation
per:{{raze x{x,/:y except x}\:y}[;y]/[x-1;y]};
/Test - per[2;1+til 3]

/- Combination
com:{{raze x{x,/:y where y>max x}\:y}[;y]/[x-1;y]}
/Test - com[2;1+til 3]

/- Power -- xexp
pow:{if[x=0;:0];res:prd y#x; $[y>0;res;1%res]}
/Test - pow[2;3] / 8
/ pow[2;-3] / 0.125
/ pow[5;0]  / 1f


/- Moving Pencentage Change
mpct:{100*(1_deltas x)%-1_x}


/- Pascals Triangle
q)parscalsTriange:{{(+)prior x,0}\[x;1]}
/ Test - q)parscalsTriange 3
/ 1
/ 1 1
/ 1 2 1
/ 1 3 3 1
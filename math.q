//**
 / Mathematical Functions
 / Author - Utsav Parashar
//**

/- Factorial
fact:{*/[1+til x]};

/- Fibonacci Series
fib:{{x,sum -2#x}/[x;0 1]};

/- Permutation
per:{{raze x{x,/:y except x}\:y}[;y]/[x-1;y]};
/Test - per[2;1+til 3]

/- Combination
com:{{raze x{x,/:y where y>max x}\:y}[;y]/[x-1;y]}
/Test - com[2;1+til 3]


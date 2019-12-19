/************************
/ Temporal Utilities
/************************

/***** gbd - get business day
/- input - atom or list of dates
/- output - list of business days
gbd:{if[0>type x;x:enlist x]; x where 1<x mod 7};
/- test1 gdb[2019.12.19]
/- test2 gbd[2019.12.01 + til 14]
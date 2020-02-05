/****************************
/ Generic Utilities
/ Author - Utsav Parashar
/****************************

/- Count number of distinct elements in a list
/- input - list
/- output - dictionary with key as unique elements and values as count
f:{g:group x; :(key g)!count each value g};
/- Test l:`GOOG`AMZN`GOOG`AMZN`IBM`GOOG; f[l]


/- q)l:-2 -1 2 -3 -1 11 -11 5
/- q)f:{tv::mv::0; {$[x<0;tv+:x;(mtv:tv+x)>mv;[mv::mtv; tv::x];`]}@'x;mv}

/**************************************/
/*Convert a csv text string to a table*/
/**************************************/
f:{("SJF";(,)",")0: vs[`;x]}
/- Test f a
/- where a:"sym,px,vol\nGG,10.2,100\nAA,11.2,1000"
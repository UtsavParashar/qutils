//- Solution to technical problems

//- GS Problem
 /- Career cup - https://www.careercup.com/question?id=5764235733237760
 / Given an array A[] consisting 0s, 1s and 2s, write a function that
 / sorts A[]. The functions should put all 0s first,
 / then all 1s and all 2s in last.
//- Solution

f:{ / function to sort the elements of the array
    c0::c1::c2::0; / counter variables
    {$[0=x;c0+:1;1=x;c1+:1;2=x;c2+:1;::]}@'x; / inner function to count occurrence of each element
    :raze [[(c0;c1;c2)]{#[x;y]}'til 3]; / returning the occurrence of 0,1,2 based on count
    };
/Test - f 0 1 1 0 2 1 2 /- output 0 0 1 1 1 2 2


//- Secret Santa Problem
/ Participants and gifts are numbered from 1..n. Write Secret Santa helper function - s[n] taking number of participants as input and producing vector Gi(i=1..n) where value of Gi tells gifts from which person i-persons gets.
/ Restriction - If only one Person he cannot gift himself
/ Gift distribution must be random
/ n=5; 31452 -- Person 1 gets gift from person 3
/ 52341 - Invalid result, person 2 3 4 gets gift for themselves

s:{if[2>x;'"You cannot gift yourself"]; $[max(til x)=o:{neg[x]?x}x;.z.s[x];o]};
/Test - s'[10#5]
/Unit Test - any any (til 5)=/:s'[10#5]
/- Performance Test - \t s'[100#500]

//- Largest Sum Contiguous Subarray - Kedane
/- Write an efficient program to find the sum of contiguous subarray within a one-dimensional array of numbers which has the largest sum.
/- Input - list of elements
/- Output - Largest sum contiguous subarray
f:{msf::meh::0;last{meh::meh+x;$[meh<0;meh::0;msf<meh;msf::meh;::];msf}'[x]};
/- Test - f[-2, -3, 4, -1, -2, 1, 5, -3]

/- Create a function that accepts even number of parameters of arbitrary length and returns a dictionary. The first parameter is a key, the second parameter is the value of that key, the third is another key that has a value stored in the fourth parameter, etc.
'[{(!) . flip 2 cut x}; enlist][1;2;3;4]

/- Create a function to get the sum of null count of each column
/- simple easy sol
{t::([] a:10?10; b:10?10.; c:10?`4; d:string 10?`4; e:10?(01b));
update b:0nf from `t where a>5;
update c:` from `t where a>7;
update d:(" ") from  `t where a>4;
    }[]
sum null t; /- easy solution
flip `columnName`nullCount!(key;value)@\:flip flip enlist each (key a)!last each value a:sum null t;

/- We have two tables
/- One table with unique elements in a column
/- second table with duplicate elements for same column
/- Required output is to join both tables where all duplicate rows are present and also unique rows of first table are present.
https://stackoverflow.com/questions/60173431/utility-like-except-in-case-of-tables-in-kdb
l:([]c1:`a`b`c`d;c2:10 20 30 40); /- table 1
r:([]c1:`a`a`a`b`b;c3:100 200 300 400 50); /- table 2
(select from l where c1 in l[`c1] except r`c1) uj (r lj 1!l)
Problem:    lab4lp1
Rows:       9
Columns:    18
Non-zeros:  51
Status:     OPTIMAL
Objective:  v = 3662.115556 (MINimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 v            B        3662.12                             
     2 a[1]         NU             0                          -0      -10.8152 
     3 a[2]         NU             0                          -0      -3.40444 
     4 a[3]         NU             0                          -0      -4.81522 
     5 b[1]         NS            92            92             =       12.4044 
     6 b[2]         NS            82            82             =       15.8152 
     7 b[3]         NS            83            83             =       16.8152 
     8 b[4]         NS            69            69             =       8.40444 
     9 b[5]         NS            74            74             =       16.8152 

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 y[1]         NU             1                           1      -1995.84 
     2 y[2]         B       0.715556                           1 
     3 y[3]         B              0                           1 
     4 x[1,1]       NL             0             0                     12.4108 
     5 x[1,2]       B             82             0               
     6 x[1,3]       B             83             0               
     7 x[1,4]       NL             0             0                     26.4108 
     8 x[1,5]       B             74             0               
     9 x[2,1]       B             92             0               
    10 x[2,2]       NL             0             0                     9.58923 
    11 x[2,3]       NL             0             0                     12.5892 
    12 x[2,4]       B             69             0               
    13 x[2,5]       NL             0             0                     7.58923 
    14 x[3,1]       NL             0             0                     8.41077 
    15 x[3,2]       B              0             0               
    16 x[3,3]       NL             0             0                          11 
    17 x[3,4]       NL             0             0                     24.4108 
    18 x[3,5]       NL             0             0                          12 

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.DE: max.abs.err = 3.55e-15 on column 6
        max.rel.err = 1.57e-16 on column 7
        High quality

KKT.DB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output

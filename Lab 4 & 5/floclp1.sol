Problem:    lab4lp2
Rows:       24
Columns:    18
Non-zeros:  81
Status:     OPTIMAL
Objective:  v = 3880 (MINimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 v            B           3880                             
     2 cond1[1]     NU             0                          -0     -0.617834 
     3 cond1[2]     B            -64                          -0 
     4 cond1[3]     B              0                          -0 
     5 cond2[1]     NS            92            92             =       14.6178 
     6 cond2[2]     NS            82            82             =            11 
     7 cond2[3]     NS            83            83             =       6.61783 
     8 cond2[4]     NS            69            69             =         8.611 
     9 cond2[5]     NS            74            74             =       6.61783 
    10 cond3[1,1]   B            -92                          -0 
    11 cond3[1,2]   NU             0                          -0      -5.38217 
    12 cond3[1,3]   B              0                          -0 
    13 cond3[1,4]   B            -69                          -0 
    14 cond3[1,5]   B              0                          -0 
    15 cond3[2,1]   NU             0                          -0      -5.61783 
    16 cond3[2,2]   B            -82                          -0 
    17 cond3[2,3]   B            -83                          -0 
    18 cond3[2,4]   NU             0                          -0        -3.611 
    19 cond3[2,5]   B            -74                          -0 
    20 cond3[3,1]   NU             0                          -0      -9.63043 
    21 cond3[3,2]   B              0                          -0 
    22 cond3[3,3]   B              0                          -0 
    23 cond3[3,4]   B              0                          -0 
    24 cond3[3,5]   B              0                          -0 

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 y[1]         B              1                           1 
     2 y[2]         B              1                           1 
     3 y[3]         B              0                           1 
     4 x[1,1]       B              0             0               
     5 x[1,2]       B             82             0               
     6 x[1,3]       B             83             0               
     7 x[1,4]       NL             0             0                     16.0068 
     8 x[1,5]       B             74             0               
     9 x[2,1]       B             92             0               
    10 x[2,2]       NL             0             0                          11 
    11 x[2,3]       NL             0             0                     19.3822 
    12 x[2,4]       B             69             0               
    13 x[2,5]       NL             0             0                     14.3822 
    14 x[3,1]       NL             0             0                     11.0126 
    15 x[3,2]       B              0             0               
    16 x[3,3]       NL             0             0                     16.3822 
    17 x[3,4]       NL             0             0                      19.389 
    18 x[3,5]       NL             0             0                     17.3822 

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 2.84e-14 on row 3
        max.rel.err = 1.02e-16 on row 18
        High quality

KKT.PB: max.abs.err = 2.47e-14 on column 15
        max.rel.err = 2.47e-14 on column 15
        High quality

KKT.DE: max.abs.err = 1.14e-13 on column 2
        max.rel.err = 1.25e-16 on column 18
        High quality

KKT.DB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output

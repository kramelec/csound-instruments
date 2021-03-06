; ************************************************************************
; ACCCI:     80-01-1B.SCO
; note:      plays instrument 1 only
; coded:     jpg 8/93


; GEN functions **********************************************************
; waveforms: instrument 1
f1  0 2048  10    1                     ; fundamental
f2  0 2048  10    1     .2    .08   .07 ; four harmonics
f3  0 2048  10    1     .4    .2    .1    .1    .05 ; six harmonics

; amplitude envelope functions: instrument 1 & 2
f4  0 512   7     0     1     0     49    .2    90    .6    40    .99   25    .9    45    .5    50    .25   50    .12 50 .06
      50    .02   62    0  
f5  0 512   7     0     1     0     49    .2    100   .6    50    .99   150   .2    162   0 
f6  0 512   7     0     1     0     49    .2    200   .5    100   .2    162   0 
f7  0 512   7     0     1     0     79    .5    60    .5    20    .99   120   .4    140   .6    92    0  
f8  0 512   7     0     1     0     149   .4    200   .99   50    .5    50    .24   62    0  

; pitch envelope functions: instrument 2
f9  0 512   7     0     1     .895  511   .99 ; gen07 line segments    10% rise
f10 0 512   7     0     1     .99   511   .99 ;                         0% rise

; DC bias functions
f12 0 512   9     1     .26   0         ; fundamental at .26
f13 0 512   9     1     .3    0         ; fundamental at .3


; score ******************************************************************

; instr 1  idur  iamp1 if1 ifq1   if2   ifq3 if3
;                                 ifqr
i1  1  2      800    2      1109   5      4.16   12
i1  3  .9     300    2      784    4      4.16   13
i1  5.01      2      1200   2      1109   6      4.16   13
i1  7  .2     400    2      784    7      4.16   13
i1  7.2       .3     300    2      698    5      4.16   13
i1  7.51      1      300    3      370    6      4.16   13
i1  8.5       .5     400    3      415    5      4.16   13
i1  9  .12    900    2      1396   4      4.16   13
i1  9.1       1.2    900    2      1568   4      4.16   13
i1  10.25     1      900    3      277    7      3.23   13
i1  11.35     .36    500    2      329    5      3.57   13
i1  11.72     .36    800    2      528    5      3.57   13
i1  12.10     .15    700    1      1975   5      3.57   13
i1  12.25     2.5    999    1      2217   4      3.57   13
e



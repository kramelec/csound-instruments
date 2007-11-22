;============================================================================
; NYLON GUITAR - ALGORITHM #15 
;============================================================================
; SIMPLE SINE FUNCTION
f01 0 4096  10    1  
; OPERATOR OUTPUT LEVEL TO AMP SCALE FUNCTION (DATA FROM CHOWNING/BRISTOW)
f02 0 128   7     0     10    .003  10    .013
      10    .031  10    .079  10    .188  10    .446
      5     .690  5     1.068 5     1.639 5     2.512
      5     3.894 5     6.029 5     9.263 4     13.119
      29    13.119
; RATE SCALING FUNCTION
f03 0 128   7     0     128   1 
; EG RATE RISE FUNCTION FOR LVL CHANGE BETWEEN 0 AND 99 (DATA FROM OPCODE)
f04 0 128   -7    38    5     22.8  5     12    5  
      7.5   5     4.8   5     2.7   5     1.8   5     1.3 
      8     .737  3     .615  3     .505  3     .409  3       
                        .321    6       .080    6       .055    2       .032    3       .024  
                        3       .018    3       .014    3       .011    3       .008    3       
                        .008    3       .007    3       .005    3       .003    32      .003 
; EG RATE RISE PERCENTAGE FUNCTION
f05 0 128   -7    .00001      31    .00001      4     .02   5 
                        .06     10      .14     10      .24     10      .35     10      .50  
                        10      .70     5       .86     4       1.0     29      1.0  
; EG RATE DECAY FUNCTION FOR LVL CHANGE BETWEEN 0 AND 99
f06 0 128   -7    318   4     181   5     115   5 
      63    5     39.7  5     20    5     11.2  5     7       
      8     5.66  3     3.98  6     1.99  3     1.34  3       
                        .99     3       .71     5       .41     3       .15     3       .081  
                        3       .068    3       .047    3       .037    3       .025    3  
                        .02     3       .013    3       .008    36      .008 
; EG RATE DECAY PERCENTAGE FUNCTION
f07 0 128   -7    .00001      10    .25   10    .35   10
                        .43     10      .52     10      .59     10      .70     10      .77  
                        10      .84     10      .92     9       1.0     29      1.0  
; EG LEVEL TO AMP FACTOR MAPPING FUNCTION (INDEX IN RADIANS = INDEX / 2PI)
;f08     0       128     6       .001    96      .5      32      1
;f08   0   128   -6    0   64   .0318   0   .0318   64   2.08795
f08 0 128   -7    0     10    .000477     10    .002
      10    .00493      10    .01257      10    .02992      10    .07098
      5     .10981      5     .16997      5     .260855     5     .39979
      5     .61974      5     .95954      5     1.47425     4     2.08795
      29    2.08795
; VELOCITY TO AMP FACTOR MAPPING FUNCTION (ROUGH GUESS)
f09 0 129   9     .25   1     0   
; VELOCITY SENSITIVITY SCALING FUNCTION
f10 0 8     -7    0     8     1   
; FEEDBACK SCALING FUNCTION
f11 0 8     -6    0     8     6            
;============================================================================
; OPERATOR 1 PARAMETERS:    
f12 0 32    -2    
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        92      7       53      99      89      87      80      99      0       0     
;AMS      FIXED?   FREQ   DET    RSC
                        3       1       3388    0       3     

; OPERATOR 2 PARAMETERS
f13 0 32    -2             
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        96      7       53      99      89      87      80      99      0       0     
;AMS      FIXED?   FREQ   DET    RSC
                        0       1       2692    0       3     

; OPERATOR 3 PARAMETERS
f14 0 32    -2 
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        99      3       80      14      13      40      99      91      0       0     
;AMS      FIXED?   FREQ   DET    RSC
                        0       0       1       0       7     

; OPERATOR 4 PARAMETERS
f15 0 32    -2         
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        86      1       55      69      10      47      99      97      0       0     
;AMS      FIXED?   FREQ   DET    RSC
                        0       0       1       +1      4    

; OPERATOR 5 PARAMETERS
f16 0 32    -2 
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        65      4       53      34      27      39      99      81      0       0     
;AMS      FIXED?   FREQ   DET    RSC
                        0       0       7       +2      4    

; OPERATOR 6 PARAMETERS
f17 0 32    -2 
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        66      1       92      48      38      33      99      85      0       0     
;AMS      FIXED?   FREQ   DET    RSC
                        0       0       9       +3      7    

;====================================================================;
;                       Yamaha DX7 Algorithm 15                      ;
;                                                                    ;
;p02 = start       p03 = dur     p04 = pch            p05 = vel      ;
;p06 = panfac      p07 = vibdel  p08 = vibwth         p09 = vibhz    ;
;p10 = op1fn       p11 = op2fn   p12 = op3fn          p13 = op4fn    ;
;p14 = op5fn       p15 = op6fn   p16 = ampfn          p17 = pkamp    ;
;p18 = rsfn        p19 = devfn   p20 = erisfn         p21 = edecfn   ;
;p22 = vsfn        p23 = velfn   p24 = feedfn         p25 = feedbk   ;
;p26 = Algorithm Number (Disabled)                                   ;
;====================================================================;

t       0.000   114.000
i1.00  0.000  1.217  45     75     0      0      0      0    
       12     13     14     15     16     17     2      6000 
       3      8      4      6      10     9      11     7 ;15
i1.01  0.000  1.217  45     75  
i1.02  0.500  0.717  52     61  
i1.03  1.000  0.302  57     47  
i1.04  1.500  0.271  61     60  
i1.05  2.000  1.246  54     81  
i1.06  2.000  0.942  62     89  
i1.07  2.000  1.342  57     75  
i1.08  2.000  0.500  45     64  
i1.09  3.500  0.250  64     89  
i1.10  3.500  0.225  57     96  
i1.11  4.500  1.025  61     71  
i1.12  4.500  0.933  57     94  
i1.13  4.500  0.796  45     58  
i1.14  6.000  1.079  45     79  
i1.15  6.500  0.610  52     61  
i1.16  7.000  0.090  57     59  
i1.17  7.494  0.227  61     71  
i1.18  7.994  1.058  62     89  
i1.19  7.994  1.000  54     81  
i1.20  7.994  1.223  57     78  
i1.21  9.494  0.229  64     97  
i1.22  9.494  0.079  57     54  
i1.23  10.494 0.879  45     75  
i1.24  10.494 0.796  57     81  
i1.25  10.494 0.865  61     75  
i1.26  10.494 0.577  52     74  
i1.27  11.994 0.935  45     78  
i1.28  12.494 0.571  52     60  
i1.29  12.994 0.223  57     71  
i1.30  13.494 0.258  61     64  
i1.31  13.994 0.998  62     92  
i1.32  13.994 0.900  54     85  
i1.33  13.994 0.952  57     77  
i1.34  15.494 0.467  61     84  
i1.35  15.494 0.354  57     86  
i1.36  15.494 0.400  52     89  
i1.37  16.494 0.931  56     74  
i1.38  16.494 1.015  59     81  
i1.39  16.494 0.783  45     76  
i1.40  16.494 0.710  52     77  
i1.41  17.994 0.769  45     74  
i1.42  18.494 0.508  52     64  
i1.43  18.994 0.606  56     67  
i1.44  19.494 0.406  59     66  
i1.45  19.994 1.038  56     84  
i1.46  19.994 1.250  59     93  
i1.47  20.994 0.069  52     61  
i1.48  21.494 0.317  61     87  
i1.49  21.494 0.229  57     89  
i1.50  22.994 1.131  54     82  
i1.51  22.994 1.244  57     70  
i1.52  22.994 0.738  50     80  
i1.53  22.994 1.348  42     68  
i1.54  23.994 0.529  50     79  
i1.55  24.494 0.519  54     79  
i1.56  24.994 0.163  42     60  
i1.57  24.994 0.640  57     76  
i1.58  25.494 0.463  50     84  
i1.59  25.994 0.598  55     97  
i1.60  25.994 1.660  43     87  
i1.61  26.494 0.569  57     74  
i1.62  26.994 0.640  59     77  
i1.63  27.494 0.383  55     87  
i1.64  27.987 0.348  57     82  
i1.65  27.987 0.308  52     83  
i1.66  27.987 0.294  45     87  
f0  30
e

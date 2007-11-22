;============================================================================
; VIOLA - ALGORITHM #15
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
;f08     0       128     6      .001    96      .5      32      1
;f08   0   128   -6    0   64   .0318   0       .0318   64      2.08795
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
                        98      2       32      56      56      47      99      98      36      0    
;AMS      FIXED?   FREQ   DET    RSC
                        0       0       2       0       0     

; OPERATOR 2 PARAMETERS
f13 0 32    -2             
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        79      0       77      7       7       29      93      56      28      0    
;AMS      FIXED?   FREQ   DET    RSC
                        0       0       2       -7      0    

; OPERATOR 3 PARAMETERS
f14 0 32    -2 
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        99      1       51      15      10      47      99      92      92      0    
;AMS      FIXED?   FREQ   DET    RSC
                        0       0       2       +7      0    

; OPERATOR 4 PARAMETERS
f15 0 32    -2         
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        72      2       49      74      10      32      98      98      98      0    
;AMS      FIXED?   FREQ   DET    RSC
                        0       0       2       +2      0    

; OPERATOR 5 PARAMETERS
f16 0 32    -2 
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        71      4       76      73      10      32      99      92      0       0     
;AMS      FIXED?   FREQ   DET    RSC
                        0       0       2       -2      0    

; OPERATOR 6 PARAMETERS
f17 0 32    -2 
;OUTLVL   KEYVEL   EGR1   EGR2   EGR3   EGR4   EGL1   EGL2   EGL3   EGL4
                        75      3       72      76      10      32      99      92      0       0     
;AMS      FIXED?   FREQ   DET    RSC
                        0       0       8       0       0     

;====================================================================;
;                       Yamaha DX7 Algorithm 15                      ;
;                                                                    ;
;    p02 = start     p03 = dur       p04 = pch       p05 = vel       ;
;    p06 = panfac    p07 = vibdel    p08 = vibwth    p09 = vibhz     ;
;    p10 = op1fn     p11 = op2fn     p12 = op3fn     p13 = op4fn     ;
;    p14 = op5fn     p15 = op6fn     p16 = ampfn     p17 = pkamp     ;
;    p18 = rsfn      p19 = devfn     p20 = erisfn    p21 = edecfn    ;
;    p22 = vsfn      p23 = velfn     p24 = feedfn    p25 = feedbk    ;
;                    p26 = Algorithm Number (Disabled)               ;
;====================================================================;
t       0.000   98.000
i1.00  3.000  0.506  72     71     0      0      0      0    
       12     13     14     15     16     17     2      8000 
       3      8      4      6      10     9      11     7   
i1.01  3.500  0.425  71     65  
i1.02  4.000  1.854  72     68  
i1.03  4.000  3.735  48     52  
i1.04  4.000  0.665  64     46  
i1.05  5.000  1.048  67     50  
i1.06  6.000  0.958  65     72  
i1.07  7.000  0.492  72     63  
i1.08  7.500  0.550  71     64  
i1.09  8.000  3.862  48     75  
i1.10  8.000  1.148  72     73  
i1.11  8.000  0.894  64     48  
i1.12  9.000  1.092  67     63  
i1.13  10.000 0.990  65     72  
i1.14  11.000 0.471  72     75  
i1.15  11.500 0.463  71     62  
i1.16  12.000 1.944  72     78  
i1.17  12.000 2.023  48     92  
i1.18  12.000 1.519  64     52  
i1.19  14.000 1.077  67     58  
i1.20  14.000 0.621  60     53  
i1.21  14.000 1.062  64     59  
i1.22  14.000 1.983  52     56  
i1.23  15.000 4.127  60     75  
i1.24  16.000 3.023  70     70  
i1.25  16.000 3.123  65     68  
i1.26  16.000 4.054  53     85  
i1.27  19.000 0.498  72     73  
i1.28  19.500 0.606  71     67  
i1.29  20.000 1.127  72     75  
i1.30  20.000 3.792  48     72  
i1.31  20.000 0.942  64     55  
i1.32  21.000 1.052  67     68  
i1.33  22.000 0.973  65     72  
i1.34  22.994 0.579  72     68  
i1.35  23.494 0.529  71     61  
i1.36  23.994 1.100  72     63  
i1.37  23.994 5.519  48     68  
i1.38  23.994 0.967  64     49  
i1.39  24.994 0.981  67     63  
i1.40  25.994 0.983  65     59  
i1.41  26.994 0.560  72     66  
i1.42  27.494 0.546  71     64  
i1.43  27.994 1.944  72     77  
i1.44  27.994 1.565  64     62  
i1.45  29.994 1.256  40     69  
i1.46  29.994 0.650  60     57  
i1.47  29.994 1.071  67     52  
i1.48  29.994 1.394  52     45  
i1.49  29.994 1.048  64     54  
i1.50  30.994 12.090 60     64  
i1.51  31.994 6.204  70     72  
i1.52  31.994 6.615  41     72  
i1.53  31.994 7.158  65     62  
i1.54  31.994 0.765  53     59  
i1.55  35.994 2.302  29     73  
i1.56  37.994 1.827  69     72  
i1.57  39.994 3.175  67     62  
i1.58  39.994 3.119  64     40  
i1.59  39.994 3.108  62     52  
i1.60  39.994 3.058  48     63  
i1.61  39.994 3.037  36     60  
f0  45
e


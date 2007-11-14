;=================================================================================;
;Echoes from Mir.sco 															  ;       
;=================================================================================;
;"Echoes from Mir" (the Space Station)  by Sal Sofia (c.) 1998					  ;
;=================================================================================;
;=======================================< FUNCTIONS >=============================;
;=================================================================================;
	
f1 0 1024 9 1 1 0 1 1 .05  
f2 0 513 7 0 85.33 1 85.33 .75 85.33 .65  170.66 .50  85.33 0
f3 0 1024 5 110 1024 880  
f4 0 513 5 1 12 1024 500 1 
f5 0 8192 7 0 192 1 8000 0        
f6 0 513 5 .7 16 .8 48 1 64 .8 128 .2 256 .001 	
f7 0 513 7 0 12 1 52 0 460     
f8 0 4096 9 1 1 0
f9 0 1024 19 .5 .5 270 .5
f10 0 8192 10 1

;=================================================================================;
;=======================================< PARAMETERS >============================;  
;=================================================================================;
;p4amp,p5carFreq,p6modFreq,p7Index1,p8Index2,p9CarEG,p10ModEg,p11Attack,p12Balance;
;=================================================================================;
;=================================================================================;

;=================================================================================;
;=======================================< SECTION 1 >=============================;
;=================================================================================;

t0 36 9.9 18 10 36 11.4 30 11.5 27 12.9 27 13 36 18 18  
 
i99 0 13
i198  13  5.09 
i199  13  5.09  5
 
i1  0  10.000 5500   5.42  10.71 200 0 2 2 0.009 .5   
i2 10   1.500 5000 285.00 352.00   2 2 2 2 0.009 .5 
i2 +    1.500 5000 285.00 352.00   2 2 2 2 0.009 .5 
i3 10   1.500 5000 285.00 352.00   2 2 4 4 0.009 .5 03.4 0.6 
i3 +    1.500 5000 282.00 352.00   2 2 4 4 0.009 .5 
i1 13   2.500 5500   5.42  10.71 200 2 2 2 0.009 .5 
i1 15.5 2.500 5500   4.42   9.71 200 2 2 2 0.009 .85 
i1 15.5 2.500 5500   4.42   9.71 200 2 2 2 0.009 .25 

f0 18.10

s

;=================================================================================;
;=======================================< SECTION 2 >=============================;
;=================================================================================;
;=================================================================================;
;Percussive sounds "Brass Pipes and all kinds of 
;Homogeneous (solid solutions) Mixture.
;=================================================================================;

t0 36
 
i198 0 11.4
i199 0 11.4 0.5


i3 0.2  .0555 6000 5000.00   28.00 0 10 4 4 0.9 .5 0.4 0.4
i3 0.28 .0555 6500   28.00 5000.00 0 10 4 4 0.9 .5 0.4 0.4
i3 0.25 .0555 5000  200.00  280.00 0 10 4 4 0.9 .5 0.4 0.4
i3 0.19 .0555 5000  268.00  375.20 0 10 4 4 0.9 .5 0.4 0.4
i3 0.5  .555  6000 5000.00   28.00 0 10 4 4 0.9 .5 0.4 0.4
i3 0.58 .555  6500   28.00 5000.00 0 10 4 4 0.9 .5 0.4 0.4
i3 0.29 .555  5000  200.00  280.00 0 10 4 4 0.9 .5 0.4 0.4
i3 0.3  .555  5000  268.00  375.20 0 10 4 4 0.9 .5 0.4 0.4
i3 0.38 .77   7000  280.00 2000.00 0 10 4 4 0.9 .5 0.4 0.4

i3 1.2 0.0555 6000 5000.00   28.00 0 10 4 4 0.9 .5 0.4 0.4
i3 + 0.0555 6500   28.00 5000.00 0 10 4 4 0.9 .5 0.4 0.4
i3 . 0.0555 5000  200.00  280.00 0 10 4 4 0.9 .5 0.4 0.4
i3 . 0.0555 5000  268.00  375.20 0 10 4 4 0.9 .5 0.4 0.4
i3 . 0.555 6000  5000.00   28.00 0 10 4 4 0.9 .5 0.4 0.4
i3 . 0.555 6500    28.00 5000.00 0 10 4 4 0.9 .5 0.4 0.4
i3 . 0.555 5000   200.00  280.00 0 10 4 4 0.9 .5 0.4 0.4
i3 . 0.555 5000   268.00  375.20 0 10 4 4 0.9 .5 0.4 0.4
i3 . 0.770 7000   280.00 2000.00 0 10 4 4 0.9 .5 0.4 0.4
i3 . 0.550 6900   280.00 2000.00 0 10 4 4 0.9 .5 0.4 0.4

i3 3 0.550   3000  80.00   55.00 0 10 4 7 0.9 .5 0.4 0.4
i. + 0.250   < 180.00   55.00 0 10 4 7 0.9 .5 0.4 0.4
i. . 0.250   <  84.80   53.00 0 10 4 7 0.9 .5 0.4 0.4
i. . 0.125   <  80.00   50.00 0 10 4 7 0.9 .5 0.4 0.4
i. . 0.125   <  84.80   53.00 0 10 4 7 0.9 .5 0.4 0.4
i. . 0.250   <  80.00   50.00 0 10 4 7 0.9 .5 0.4 0.4
i. . 0.500   <  84.80   53.00 0 10 4 7 0.9 .5 0.4 0.4
i. . 0.250   <  80.00   50.00 0 10 4 7 0.9 .5 0.4 0.4
i. . 0.250   <  84.80   53.00 0 10 4 7 0.9 .5 0.4 0.4
i. . 0.125   <  80.00   50.00 0 10 4 7 0.9 .5 0.4 0.4
i. . 0.125   <  84.80   53.00 0 10 4 7 0.9 .5 0.4 0.4
i. . 0.250   <  80.00   50.00 0 10 4 7 0.9 .5 0.4 0.4
i. . 0.500   4000  84.80   53.00 0 10 4 7 0.9 .5 0.4 0.4
i1 10 1.250   5000  5.00   50.00 0 10 4 7 0.9 0
i1 10 1.250   5000  8.00   50.00 0 10 4 7 0.9 1
i3 8.60  .0555 6000 5000.00   280.00 0 10 4 4 0.9 0 0.4 0.4
i3 8.78  .0555 6500   280.00 5000.00 0 10 4 4 0.9 0 0.4 0.4
i3 8.90 1.555  5000  2000.00  200.00 0 10 4 4 0.9 0 0.4 0.4
i3 8.60  .0555 6000 5000.00   200.00 0 10 4 4 0.9 1 0.4 0.4
i3 8.78  .0555 6500   280.00 5000.00 0 10 4 4 0.9 1 0.4 0.4
i3 8.90 1.555  5000  280.00  6800.00 0 10 4 4 0.9 1 0.4 0.4

i3 5.2  .77   7000  280.00 2000.00 0 10 4 4 0.9 .5 0.4 0.4
i3 5.28 .555  5000  268.00  375.20 0 10 4 4 0.9 .5 0.4 0.4
i3 5.25 .555  5000  200.00  280.00 0 10 4 4 0.9 .5 0.4 0.4
i3 5.5  .555  6500   28.00 5000.00 0 10 4 4 0.9 .5 0.4 0.4
i3 5.58 .555  6000 5000.00   28.00 0 10 4 4 0.9 .5 0.4 0.4
i3 5.19 .0555 5000  268.00  375.20 0 10 4 4 0.9 .5 0.4 0.4
i3 5.29 .0555 5000  200.00  280.00 0 10 4 4 0.9 .5 0.4 0.4
i3 5.3  .0555 6500   28.00 5000.00 0 10 4 4 0.9 .5 0.4 0.4
i3 5.38 .0555 6000 5000.00   28.00 0 10 4 4 0.9 .5 0.4 0.4

i3 5.3 0.550 6900   280.00 2000.00 0 10 4 4 0.9 .5 0.4 0.4
i3 + 0.770 7000   280.00 2000.00 0 10 4 4 0.9 .5 0.4 0.4
i3 . 0.555 5000   268.00  375.20 0 10 4 4 0.9 .5 0.4 0.4
i3 . 0.555 5000   200.00  280.00 0 10 4 4 0.9 .5 0.4 0.4
i3 . 0.555 6500    28.00 5000.00 0 10 4 4 0.9 .5 0.4 0.4
i3 . 0.555 6000  5000.00   28.00 0 10 4 4 0.9 .5 0.4 0.4
i3 . 0.0555 5000  268.00  375.20 0 10 4 4 0.9 .5 0.4 0.4
i3 . 0.0555 5000  200.00  280.00 0 10 4 4 0.9 .5 0.4 0.4
i3 . 0.0555 6500   28.00 5000.00 0 10 4 4 0.9 .5 0.4 0.4
i3 . 0.0555 6000 5000.00   28.00 0 10 4 4 0.9 .5 0.4 0.4

f0 11.4

s

;=================================================================================;
;=====================================< SECTION 3 >===============================;
;=================================================================================;
   
t0 36

i198 0 11
i199 0 11 2

i4 0  6    1000 4300.00 5220.00   0 2 5 2 0.09 .5 0.4 0.4
i4 0  6    1300  176.80  288.40   1 2 2 2 0.09 .5 
i4 0  6    1300  100.00  105.00   2 2 2 5 0.09 .5  
i4 0  6    1300   95.00  100.00 100 2 5 2 0.09 0
i4 0  6    1400   48.82   49.15 100 2 5 2 0.09 0 
i4 2  6    1400   97.00  102.00  40 2 5 2 0.09 0 0.5 0.5
i4 4  6    1400   97.00  102.00  40 2 5 5 0.09 0 
i4 4  6    1800   97.00  102.00  90 2 5 5 0.09 1 

i4 0  6    1000 4329.24 5225.50   0 2 5 2 0.09 .5  0.4 0.4
i4 0  6    1300  178.00  290.36   1 2 2 2 0.09 .5 
i4 0  6    1300  100.68  105.71   2 2 2 5 0.09 .5  
i4 0  6    1300   95.65  100.68 100 2 5 2 0.09 1
i4 0  6    1400   48.82   49.15 100 2 5 2 0.09 1
i4 2  6    1500   97.65  102.68  50 2 5 2 0.09 1 0.4 0.4
i4 3  6    1600   99.65  104.68  40 2 5 5 0.09 1 0.4 0.4
i4 5  6    1900   98.00  102.00  90 2 5 5 0.09 0 0.5 0.5  


f0 11.01
 
s

;=================================================================================;
;====================================< SECTION 4 >================================;
;=================================================================================;

t0 60

i198 0 37.9
i199 0 37.9 1

i6  3.997    .999 420 680.00 2000.00 0 10 5 5 0.9 .5 03.4 0.8 
i6  9.997   1.222 420 680.00 2000.00 0 10 5 5 0.9 .5 03.4 0.8 
i6 16.997   1.223 420 680.00 2000.00 0 10 5 5 0.9 .5 03.4 0.8 
i6 24.997   1.999 420 680.00 2000.00 0 10 5 5 0.9 .5 03.4 0.8 
i6 31.664   2.955 420 680.00 2000.00 0 10 5 5 0.9 .5 03.4 0.8 


i5 0 1.3333  1000 130.81 261.63 0 2 2 2 0.09 .5 0.4 0.5
i5 + 1.3333 <     147.10 294.20 0 2 2 2 0.09 .5 
i5 . 1.3333 <     147.10 294.20 0 2 2 2 0.09 .5 
i5 . 2.0000  1400 472.58 236.29 1 2 2 5 0.09 .5 

i5 6 1.3333  1000 155.66 311.32 0 2 2 2 0.09 .5 0.4 0.6
i5 + 1.3333 <     197.11 394.22 0 2 2 2 0.09 .5 
i5 . 1.3333 <     155.66 311.32 0 2 2 2 0.09 .5
i5 . 3.0000  1500 633.25 316.62 1 2 2 5 0.09 .5

i5 13 1.3333  1200 233.49 466.99 0 2 2 2 0.09 .5 0.4 0.7
i5 +  1.3333 <     261.63 523.26 0 2 2 2 0.09 .5 
i5 .  1.3333 <     415.30 830.60 0 2 2 2 0.09 .5 
i5 .  4.0000  1550 556.50 189.21 1 2 2 5 0.09 .5

i5 21 1.3333  1250 294.20 588.40 0 2 2 2 0.09 .5 0.4 0.6
i5 +  1.3333 <     368.89 737.79 0 2 2 2 0.09 .5 
i5 .  1.3333 <     466.16 932.32 0 2 2 2 0.09 .5 
i5 .  3.0000  1480 284.26 568.53 1 2 2 5 0.09 .5

i5 28 1.3333  1400 394.23 788.46 0 2 2 2 0.09 .5 0.4 0.6
i5 +  2.3333 <     438.98 877.97 0 2 2 2 0.09 .5
i5 .  5.0000  1550 568.53 284.26 1 2 2 5 0.09 .5


i15  0 1.3333  1300  134.73 269.47 0 2 2 2 0.09 .5 0.4 0.4
i15  + 1.3333 <      151.51 303.02 0 2 2 2 0.09 .5 
i15  . 1.3333 <      151.51 303.02 0 2 2 2 0.09 .5 
i15  . 2.0000  1700  486.75 243.37 0 2 2 2 0.09 .5

i15  6 1.3333  1400  160.32 320.65 0 2 2 2 0.09 .5 0.4 0.4
i15  + 1.3333 <      203.02 406.04 0 2 2 2 0.09 .5
i15  . 1.3333 <      160.32 320.65 0 2 2 2 0.09 .5 
i15  . 3.0000  1800  652.24 326.12 0 2 2 2 0.09 .5 

i15 13 1.3333  1500  240.49 480.98 0 2 2 2 0.09 .5 0.4 0.4
i15 +  1.3333 <      269.47 538.95 0 2 2 2 0.09 .5 
i15 .  1.3333 <      427.75 855.51 0 2 2 2 0.09 .5 
i15 .  4.0000  1850  573.19 286.59 0 2 2 2 0.09 .5

i15 21 1.3333  1500  303.02 606.05 0 2 2 2 0.09 .5 0.4 0.4
i15 +  1.3333 <      379.95 759.91 0 2 2 2 0.09 .5 
i15 .  1.3333 <      480.14 960.28 0 2 2 2 0.09 .5
i15 .  3.0000  1880  292.78 585.57 0 2 2 2 0.09 .5 

i15 28 1.3333  1500  406.05 812.11 0 2 2 2 0.09 .5 0.4 0.4
i15 +  2.3333 <      452.14 904.29 0 2 2 2 0.09 .5
i15 .  5.0000  1550  585.58 292.79 0 2 2 2 0.09 .5

f0 37.8

s

;=================================================================================;
;=======================================< SECTION 5 >=============================;
;=================================================================================;
t0 60

i198 0 37.9
i199 0 37.9 1

i3 0  1.0555 700 5000.00   28.00 0 10 5 5 0.9 .5 03.4 0.5
i3 0   .0555 750 5000.00   28.00 0 10 5 5 0.9 .5 
i3 0  1.777  400  280.00 2000.00 0 10 5 5 0.9 .5
i3 0   .777 1000  140.00 2000.00 0 10 5 5 0.9 .5 

i3 6  1.0555 700 5000.00   28.00 0 10 5 5 0.9 .5 03.4 0.5
i3 .   .0555 750 5000.00   28.00 0 10 5 5 0.9 .5
i3 .  1.777  400  280.00 2000.00 0 10 5 5 0.9 .5 
i3 .   .777 1000  140.00 2000.00 0 10 5 5 0.9 .5

i3 13 1.0555 700 5000.00   28.00 0 10 5 5 0.9 .5 03.4 0.5
i3 .   .0555 750 5000.00   28.00 0 10 5 5 0.9 .5
i3 .  1.777  400  280.00 2000.00 0 10 5 5 0.9 .5
i3 .   .777 1000  140.00 2000.00 0 10 5 5 0.9 .5

i3 21 1.0555 700 5000.00   28.00 0 10 5 5 0.9 .5 03.4 0.5 
i3 .   .0555 750 5000.00   28.00 0 10 5 5 0.9 .5
i3 .  1.777  400  280.00 2000.00 0 10 5 5 0.9 .5 
i3 .   .777 1000  140.00 2000.00 0 10 5 5 0.9 .5 

i3 28 1.0555 700 5000.00   28.00 0 10 5 5 0.9 .5 03.4 0.5  
i3 .   .0555 750 5000.00   28.00 0 10 5 5 0.9 .5 
i3 .  1.777  400  280.00 2000.00 0 10 5 5 0.9 .5 
i3 .   .777 1000  140.00 2000.00 0 10 5 5 0.9 .5 


i5 0 1.3333  1000 130.81 261.63 0 2 2 2 0.09 .5 0.4 0.5
i5 + 1.3333 <     147.10 294.20 0 2 2 2 0.09 .5 
i5 . 1.3333 <     147.10 294.20 0 2 2 2 0.09 .5
i5 . 2.0000  1400 472.58 236.29 1 2 2 5 0.09 .5

i5 6 1.3333  1000 155.66 311.32 0 2 2 2 0.09 .5 0.4 0.5
i5 + 1.3333 <     197.11 394.22 0 2 2 2 0.09 .5 
i5 . 1.3333 <     155.66 311.32 0 2 2 2 0.09 .5
i5 . 3.0000  1500 633.25 316.62 1 2 2 5 0.09 .5

i5 13 1.3333  1200 233.49 466.99 0 2 2 2 0.09 .5 0.4 0.5
i5 +  1.3333 <     261.63 523.26 0 2 2 2 0.09 .5
i5 .  1.3333 <     415.30 830.60 0 2 2 2 0.09 .5
i5 .  4.0000  1550 556.50 189.21 1 2 2 5 0.09 .5

i5 21 1.3333  1250 294.20 588.40 0 2 2 2 0.09 .5 0.4 0.5
i5 +  1.3333 <     368.89 737.79 0 2 2 2 0.09 .5
i5 .  1.3333 <     466.16 932.32 0 2 2 2 0.09 .5
i5 .  3.0000  1480 284.26 568.53 1 2 2 5 0.09 .5

i5 28 1.3333  1300 394.23 788.46 0 2 2 2 0.09 .5 0.4 0.5
i5 +  2.3333 <     438.98 877.97 0 2 2 2 0.09 .5 
i5 .  5.0000  1550 568.53 284.26 1 2 2 5 0.09 .5

i15 0 1.3333  1000 134.73 269.47 0 2 2 2 0.09 .5 0.4 0.4
i15 + 1.3333 <     151.51 303.02 0 2 2 2 0.09 .5 
i15 . 1.3333 <     151.51 303.02 0 2 2 2 0.09 .5
i15 . 2.0000  1400 486.75 243.37 0 2 2 2 0.09 .5

i15 6 1.3333  1000 160.32 320.65 0 2 2 2 0.09 .5 0.4 0.4
i15 + 1.3333 <     203.02 406.04 0 2 2 2 0.09 .5 
i15 . 1.3333 <     160.32 320.65 0 2 2 2 0.09 .5 
i15 . 3.0000  1500 652.24 326.12 0 2 2 2 0.09 .5

i15 13 1.3333  1200 240.49 480.98 0 2 2 2 0.09 .5 0.4 0.4
i15 +  1.3333 <     269.47 538.95 0 2 2 2 0.09 .5
i15 .  1.3333 <     427.75 855.51 0 2 2 2 0.09 .5 
i15 .  4.0000  1550 573.19 286.59 0 2 2 2 0.09 .5

i15 21 1.3333  1250 303.02 606.05 0 2 2 2 0.09 .5 0.4 0.4
i15 +  1.3333 <     379.95 759.91 0 2 2 2 0.09 .5 
i15 .  1.3333 <     480.14 960.28 0 2 2 2 0.09 .5
i15 .  3.0000  1480 292.78 585.57 0 2 2 2 0.09 .5 

i15 28 1.3333  1300  406.05 812.11 0 2 2 2 0.09 .5 0.4 0.4
i15 +  2.3333 <      452.14 904.29 0 2 2 2 0.09 .5 
i15 .  5.0000  1550  585.58 292.79 0 2 2 2 0.09 .5 

i60 0  1.3333   500 130.81  8  9  0.4  0.4
i.  +  1.3333 <     147.10  8  9  0.4  0.4 
i.  .  1.3333 <     147.10  8  9  0.4  0.4 
i.  .  2.0000   900 472.58  8  9  0.4  0.5 

i60 6  1.3333   600 155.66  8  9  0.4  0.4 
i.  +  1.3333 <     197.11  8  9  0.4  0.4 
i.  .  1.3333 <     155.66  8  9  0.4  0.4 
i.  .  3.0000   900 633.25  8  9  0.4  0.5 

i60 13  1.3333   700 233.49  8  9  0.4  0.4 
i.  +   1.3333 <     261.63  8  9  0.4  0.4 
i.  .   1.3333 <     415.30  8  9  0.4  0.4 
i.  .   4.0000   900 556.50  8  9  0.4  0.5 

i60  21 1.3333   500 294.20  8  9  0.4  0.4 
i.   +  1.3333 <     368.89  8  9  0.4  0.4 
i.   .  1.3333 <     466.16  8  9  0.4  0.4 
i.   .  3.0000   600 284.26  8  9  0.4  0.5 

i60  28 1.3333   500 394.23  8  9  0.4  0.4 
i.    + 2.3333 <     438.98  8  9  0.4  0.4 
i.    . 5.0000   600 568.53  8  9  0.4  0.5 

f0 37.99

s
 
;=================================================================================;
;=======================================< SECTION 6 >=============================;
;=================================================================================;

t0 36 11 18

i16  0 10.2
i99 0 10.2
i198 0 10.2


i7 0 10.0 4000   5.42  10.71 200 0 2 2 0.009 .5 .6 
i7 0 10.0 4000   5.42  10.71 200 0 2 2 0.009 .5 .6 
i8 0  1.5 6000 282.00 352.00   2 2 2 2 0.009 .5 .6
i9 0  1.5 5000 110.00 880.00   2 2 2 2 0.009 .5 .6
i9 0  1.5 6000 282.00 352.00   2 2 4 4 0.9   .5 .6
i9 0 10.0 5000 110.00 880.00   0 2 2 2 0.009 .5 .6

f0 10.3

s

;=================================================================================;
;=======================================< SECTION 7 >=============================;
;=================================================================================;

t0 144 10 4

i16  0 10.5
i99 0 10.4
i198 0 10.4

i7 0  10 7000 110.00 880.00   0 0 3 3 0.009 .5 .6
i9 0  10 3000   6.25  11.54 200 2 2 2 0.009 .5 .6
i9 0  10 3000   5.42  10.71 200 2 2 2 0.009 .5 .6
i9 0  10 3000   50.42 10.71 200 2 2 2 0.009 .5 .6
e

;=================================================================================;
;=========================================< end >=================================;
;=================================================================================;
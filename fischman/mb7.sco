;MB7.SC  Produces pulsations of stereo soundfile SOUNDIN.2
;        (c) Rajmil Fischman, 1997
;----------------------------------------------------------
;Functions
;Pulsation frequency fluctuation 
f5 0 4096 5  0.01 2624 0.4 128 1 96 0.3 1248 0.001
;Pulsation envelope
f6 0 4096 19 1 1 270 1
;Filter center frequency
f7 0 4096 5  0.001 2752 1 1344 0.6
;Filter bandwidth
f8 0 4096 7  1 2048 0 248 1
;Crossfade function
f9 0 4096 9  3.1 0.9 0  5.43 0.7 24  7.57 0.2 106  9.9 0.1 90
;-------------------------------------------------------------------------------------
;            |p4 |p5  p6 |p7 p8	|p9   p10   p11 p12|p13  p14  p15|p16    p17   p18|p19
;            |scl|ENVEL  |SFILE 	|PULSATION         |CENTER FREQ  |BANDWIDTH      |
;            |fct|att dec|cd skp	|freq           pls|min  max  fn |min    max   fn |xf
;            |   |       |      	|min   max  fn  fn |             |%      %        |fn
;-------------------------------------------------------------------------------------
i7 0   23.232 2   .1  .1  5	0   	0.1   1    5   6   100  105  7   .05    .15    8   9
i7 0.1 .      2.3 .   .   .  	.   	0.01  1.9  .   .   141  149  .   .0705  .047   .   .
i7 0.2 .      2.6 .   .   .   .   	0.02  2.8  .   .   210  220  .   .0105  .66    .   .
i7 0.3 .      2.9 .   .   .   .   	0.04  3.7  .   .   443  465  .   .02215 .1395  .   .
i7 0.4 .      3.2 .   .   .  	.   	0.08  4.6  .   .   564  580  .   .0282  .1740  .   .
i7 0.5 .      3.5 .   .   .  	.   	0.16  5.5  .   .   749  784  .   .03745 .2352  .   .
i7 0.6 .      3.8 .   .   .  	.   	0.32  6.4  .   .   1045 1099 .   .05225 .3297  .   .
i7 0.7 .      4.1 .   .   .  	.   	0.64  7.3  .   .   1558 1630 .   .0779  .489   .   .
i7 0.8 .      4.4 .   .   .  	.   	1.28  8.2  .   .   1849 1944 .   .09245 .5832  .   .
i7 0.9 .      4.7 .   .   .  	.   	2.56  9.1  .   .   2111 2216 .   .01055 .06648 .   .
i7 1   .      5   .   .   .  	.   	5.12  10   .   .   2483 2617 .   .01241 .07851 .   .
i7 1.2 .      5.3 .   .   .  	.   	10.24 9.6  .   .   2912 3050 .   .01456 .09150 .   .
i7 1.4 .      5.6 .   .   .  	.   	14    8.7  .   .   3444 3616 .   .01722 .10848 .   .
i7 1.6 .      5.9 .   .   .  	.   	18    7.8  .   .   3970 4168 .   .01985 .1191  .   .
i7 1.8 .      6.2 .   .   .  	.   	15    6.9  .   .   4525 4731 .   .02675 .13605 .   .
e

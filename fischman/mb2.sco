; MB2.SC   Produces pulsating harmonics with emphasis on high frequencies.
;          (c) Rajmil Fischman, 1997
;----------------------------------------------------
;Generating function
f2 0 8192 10 .05 .1 .15 .2 .25 .3 .35 .4 .45 .5 .55 .6 .65 .7 .75 .8 .85 .9 .95 1
;-----------------------------------------------------
;            p3   p4    p5      p6     p7     p8
;instr start dur  amp   fund    attack decay  function
;-----------------------------------------------------
i2     0     25   3000  70      0.1    3.5    2
i2     .     .    .     70.025  .      .      .
i2     .     .    .     70.05   .      .      .
i2     .     .    .     70.075  .      .      .
i2     .     .    .     70.1    .      .      .
i2     .     .    .     70.125  .      .      .
i2     .     .    .     69.975  .      .      .
i2     .     .    .     69.95   .      .      .
i2     .     .    .     69.925  .      .      .
i2     .     .    .     69.9    .      .      .
i2     .     .    .     69.875  .      .      .
e

; MB1.SC   Produces pulsating harmonics.
;          (c) Rajmil Fischman, 1997
;----------------------------------------------------
;Generating function
f1  0 8192  10    1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1 1 1 1
;-----------------------------------------------------
;            p3   p4    p5      p6     p7     p8
;instr start dur  amp   fund    attack decay  function
;-----------------------------------------------------
i1  0  25     3000   70     0.1    3.5    1  
i1  .  .      .      70.025 .      .      .    
i1  .  .      .      70.05  .      .      .    
i1  .  .      .      70.075 .      .      .    
i1  .  .      .      70.1   .      .      .    
i1  .  .      .      70.125 .      .      .    
i1  .  .      .      69.975 .      .      .    
i1  .  .      .      69.95  .      .      .    
i1  .  .      .      69.925 .      .      .    
i1  .  .      .      69.9   .      .      .    
i1  .  .      .      69.875 .      .      .    
e

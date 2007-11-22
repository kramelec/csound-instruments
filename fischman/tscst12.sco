;TSCST12.SCO  FANFARRE
;             (c) Rajmil Fischman, 1997
;--------------------------------------
;OSCILLATOR FUNCTION
f1  0 8192  10    1  
;WAVESHAPER
f2  0 8192  13    0.5   1     0     1     .7    .8    .3    .1    .8    .9    1     1   
;DISTORTION INDEX (ENVELOPE)
f3  0 512   7     0     96    1     96    .8    96    .84   96    0.77  32    0.6   96    0 ;SHORT SOUNDS
f4  0 512   7     0     32    1     32    .8    64    .9    128   0.6   128   0.4   100   0.25  28    0 ;LONG SOUNDS

;------------------------------------------------
;             p3     p4    p5    p6   p7   p8
;INSTR START  DUR    AMP    PITCH OSC  WSH  INDEX
;                                 FUNC FUNC FUNC
;------------------------------------------------
;FIRST PHRASE
;Instrument 1
i13 0  0.825  5000   8.00   1      2      3    
i13 +  0.125  >      8.05   .      .      .    
i13 1  .      6500   8.10   .      .      .    
i13 1.125     3.5    5500   8.05   .      .      4    
;Instrument 2
i13 0  0.825  5000   7.10   1      2      3    
i13 +  0.125  >      7.11   .      .      .    
i13 1  .      6500   7.11   .      .      .    
i13 1.125     3.5    5500   7.11   .      .      4    
s
;SECOND PHRASE
;Instrument 1
i13 0.5       0.825  5000   8.00   1      2      3    
i13 +  0.125  >      8.05   .      .      .    
i13 1.5       .      >      8.10   .      .      .    
i13 1.625     4      9500   9.01   .      .      4    
;Instrument 2
i13 0.5       0.825  5000   7.10   1      2      3    
i13 +  0.125  >      8.02   .      .      .    
i13 1.5       .      >      8.01   .      .      .    
i13 1.625     2      9500   8.03   .      .      3    
i13 +  .      7000   8.02   .      .      4    
s
;THIRD PHRASE
;Instrument 1
i13 0.5       0.125  9900   8.05   1      2      3    
i13 0.677     .      >      8.10   .      .      .    
i13 0.84      1.3    10500  9.01   .      .      .    
;Instrument 2
i13 0.5       0.125  9900   8.03   1      2      3    
i13 0.677     .      >      8.07   .      .      .    
i13 0.84      1.3    10500  8.05   .      .      .    
s
;FOURTH PHRASE
;Instrument 1
i13 0.1       0.1    11000  8.05   1      2      3    
i13 0.225     .      >      8.07   .      .      .    
i13 0.35      2.43   13000  9.01   .      .      4    
;Instrument 2
i13 0.1       0.1    13000  8.04   1      2      3    
i13 0.225     .      >      8.02   .      .      .    
i13 0.35      2.43   13000  8.04   .      .      4    
s
;FIFTH PHRASE
;Instrument 1
i13 0.12      0.12   13000  9.07   1      2      3    
i13 0.286     .      13000  9.02   .      .      .    
i13 0.452     .      13000  8.11   .      .      .    
i13 0.619     3.35   13000  8.03   .      .      4    
;Instrument 2
i13 0.12      0.12   14000  7.05   1      2      3    
i13 0.286     .      13000  7.10   .      .      .    
i13 0.452     .      13000  8.01   .      .      .    
i13 0.619     1.5    13000  8.02   .      .      3    
i13 +  1.85   11500  8.01   .      .      4    
s
;SIXTH PHRASE
;Instrument 1
i13 0  0.85   5000   8.03   1      2      3    
i13 0.92      0.1    >      .      .      .      .    
i13 1.045     5.5    6000   8.08   .      .      4    
;Instrument 2
i13 0  0.85   5000   8.00   1      2      3    
i13 0.92      0.1    >      7.11   .      .      .    
i13 1.045     5.5    6000   7.09   .      .      4    
e

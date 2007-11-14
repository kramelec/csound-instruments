;TSCST2.SCO
;            (c) Rajmil Fischman, 1997
;---------------------------------------
;Waveform for sound 1
f1 0 8192 10 500  750  1000 1250 1000 750  500
;Waveform for sound 2
f2 0 8192 10 1000 1500 2000 2500 2000 1500 1000
;Waveform for sound 3
f3 0 8192 10 3500 0    3000 0    2500 0    2000 0 1500 0 1000 0 500
;---------------------------------------------
;           p3  p4     p5   p6     p7    p8
;INST START DUR AMP    FREQ ATTACK DECAY FUNC
;---------------------------------------------
i2    0     2   20000  100  .05    0.5   1    ;sound 2
i2    3     2   20000  110  .05    0.5   2    ;sound 2
i2    6     2   20000  110  .05    0.5   3    ;sound 3
e

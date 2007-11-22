; TRANSFORM5.SCO

f1  0 2048  10    1                     ; Sine
f2  0 2048  10    1     .5    .3    .25   .2    .167  .14   .125  .111 ; Sawtooth
f3  0 2048  10    1     0     .3    0     .2    0     .14   0     .111 ; Square
f4  0 2048  10    1     1     1     1     .7    .5    .3    .1 ; Pulse

;------------------------------------------------------------------------------------------------------
;p1		p2		p3		p4		p5		p6		p7		p8		p9		p10		p11		p12		p13
;------------------------------------------------------------------------------------------------------
;instr	strt	dur		amp		frq		atk		rel		vbrt	vbdp	vbdl	initwv	endwv	xfdtm
;------------------------------------------------------------------------------------------------------
i1  0  6      60     8.7    .75    2      .2     3      .5     1      3      3    
i1  5.5       13     <      8.745  1      2.5    1      4      .75    4      2      1    
i1  11 12     <      8.25   2.5    1.5    2      5      .99    3      4      1.5  
i1  21 16     <      8.65   1      2.5    1      4      .75    4      3      1    
i1  36 18     <      8.7    2.5    1.5    2      5      .99    1      3      1.5  
i1  40 14     66     8.425  1.5    1.5    3      5      1.5    3      4      2.5  



;p1		p2		p3		p4
;------------------------------------------------------
;instr	strt	dur		rvbtm
;------------------------------------------------------
i99 0  54     8   
i99 5.5       48.5   8 
i99 11 43     8   
i99 21 33     8   
i99 36 18     8   
i99 40 14     8   
e

;basic7.orc
; reasonably complete legato flute!
  sr        =  44100
  kr        =  4410
  ksmps     =  10
  nchnls    =  1

instr 1
  idur      =  abs(p3)
  kpch      =  p5
  ipramp    =  0.01
  i1        =  -1                                 ; PHASE FOR TIED NOTE
  iamp      =  p4                                 ; TIED NOTE STARTS AT SCORE AMP
  iendamp   =  p7                                 ; SLUR TO AMP OF NEXT NOTE
; ENVELOPE CONTROL
  istartlen =  0.05
  iendlen   =  0.05
; EXPRESSION VARIABLES
  iatt      =  idur*p10
  idec      =  idur - iatt
; VIBRATO
  idovib    =  1

  ir        tival     
            tigoto    start
  i1        =  0                                  ; FIRST NOTE, RESET PHASE
  iamp      =  0                                  ; SET START AMP
; TIGHTEN ATTACK IF FIRST NOTE
  istartlen =  0.01
if              p3 < 0 igoto start                ; HELD NOTE, MUST BE A SECOND ONE TO SLUR TO iendamp = 0 ; AND END AMP TO ZERO
start:
  iadjust   =  istartlen + iendlen
if              idur >= iadjust igoto doamp       ; LONG NOTE, WE'RE SAFE ; ADJUST FOR SHORT NOTES:
  istartlen =  idur/2 - 0.0005                    ; DON'T WANT ZERO TIMESPAN iendlen = istartlen
  iadjust   =  idur - 0.001                       ; ENSURE ilen != 0 FOR LINSEG
  idovib    =  0                                  ; NO VIBRATO ON SHORT NOTES
doamp:
  ilen      =  idur - iadjust
  amp       linseg    iamp,istartlen,p4,ilen,p4,iendlen,iendamp

; ADD CHIFF ON FIRST NOTE
if              ir==1 goto slur                   ; arate JUMP
  ichiff    =  p4/10                              ; MATCH CHIFF TO VOLUME OF NOTE
; BALANCE CHIFFS WITH REGISTER
  ifac1     =  1
  ifac2     =  1./60.                             ; (AVOID DIVISION AT AUDIO RATES)

if              p5 > 555 igoto chiff              ; HIGH FUNDAMENTAL c# ifac2 = ifac2 * 15 ; MORE PITCH ON LOWER NOTES
            igoto     chiff1
chiff:
  ifac1     =  5.0                                ; BOOST FIXED CHIFF FOR HIGH NOTES
chiff1:
  aramp     linseg    0,0.005,ichiff,0.01,ichiff*0.5,0.05,0,0,0 ; CHIFF SHAPE 
  anoise    rand      aramp
; 2 FILTERS FOR FIXED HF CHIFF
  achiff1   reson     anoise, 2000,500,1,1
  achiff2   reson     anoise*0.5,4000,1000,1,1
; ONE FILTER FOR PITCHED CHIFF
  achiff3   reson     anoise,p5*2,10,0,1          ;SUPPRESS AUTO RESCALE
  achiff    =  (achiff1 + achiff2)*ifac1 + achiff3*ifac2 

slur:
; SKIP PITCH RAMP GENERATION IF NOT NEEDED 
if              ir==0 || p6==p5 kgoto slur1
  kpchramp  linseg    p6,ipramp,p5,idur-ipramp,p5 
  kpch      =  kpchramp

slur1:
; p9 SETS PEAK OF EXPRESSION POINT, p10 MOVES IT 
  aslur     linseg    0,iatt,p9,idec,0            ; EXPRESSION ENVELOPE 
; SKIP VIBRATO IF SHORT NOTE
if              idovib == 0 goto play
  avib      oscili    0.5,4.5,2,0.25              ; MEDIUM SPEED, ASSUMES SINE FROM F2
  avib      =  avib + 0.5
  aslur     =  aslur * avib
play:
  aamp      =  amp + aslur
  aflute    oscili    aamp,kpch,1,i1
; asig1 butterlp        aflute,1000,1                   ; TRIM PARTIALS OF HIGH NOTES
; BUG WITH BALANCE: MODULATION ARTEFACTS! 
; asig BALANCE asig1,aflute,1,1 
; NOT QUITE CLEAN ENOUGH YET
;               out             asig1*1.6 + achiff*0.25 ; HARD RESCALING INSTEAD
            out       aflute + achiff*0.25
endin

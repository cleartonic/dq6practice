hirom


; enable debug menu

org $01FFFE
db $ff, $ff

; disable game not allowing you to press buttons 
org $0EFFF3
rtl

;; setup background
org $C5CEE5
jml $C4FC40

org $C4FC40
pha 
sep #$30

lda $7E2000
cmp #$01
beq BGMudo1
cmp #$02
beq BGMudo2
cmp #$03
beq BGMudo3
jmp FinishBackground
BGMudo1:
lda #$26 ; BG ID
JMP FinishBackground
BGMudo2:
lda #$38 ; BG ID
JMP FinishBackground
BGMudo3:
lda #$47 ; BG ID
JMP FinishBackground

FinishBackground:
sta $7efc0f
rep #$30
pla
pha
phx
phy
phb
jml $C5CEE9
















;; setup monster ids and numbers
org $c484da
jml $C3FA50

org $C3FA50
pha 
sep #$30

lda $7E2000
cmp #$01
beq FightMudo1
cmp #$02
beq FightMudo2
cmp #$03
beq FightMudo3
jmp FinishFightSetup


FightMudo1:
lda #$CF ; monster 1 ID
sta $7E2000
lda #$00 ; monster 2 ID
sta $7E2002
lda #$00 ; monster 3 ID
sta $7E2004
lda #$00 ; monster 4 ID
sta $7E2006
lda #$01 ; monster 1 #
sta $7E2008
lda #$00 ; monster 2 #
sta $7E200A
lda #$00 ; monster 3 #
sta $7E200C
lda #$00 ; monster 4 #
sta $7E200E
lda #$26 ; background
sta $7EFC0F
jmp FinishFightSetup

FightMudo2:
lda #$47 ; monster 1 ID
sta $7E2000
lda #$D2 ; monster 2 ID
sta $7E2002
lda #$47 ; monster 3 ID
sta $7E2004
lda #$00 ; monster 4 ID
sta $7E2006
lda #$01 ; monster 1 #
sta $7E2008
lda #$01 ; monster 2 #
sta $7E200A
lda #$01 ; monster 3 #
sta $7E200C
lda #$00 ; monster 4 #
sta $7E200E
lda #$26 ; background
sta $7EFC0F
jmp FinishFightSetup

FightMudo3:
lda #$D3 ; monster 1 ID
sta $7E2000
lda #$00 ; monster 2 ID
sta $7E2002
lda #$00 ; monster 3 ID
sta $7E2004
lda #$00 ; monster 4 ID
sta $7E2006
lda #$01 ; monster 1 #
sta $7E2008
lda #$00 ; monster 2 #
sta $7E200A
lda #$00 ; monster 3 #
sta $7E200C
lda #$00 ; monster 4 #
sta $7E200E
lda #$26 ; background
sta $7EFC0F
jmp FinishFightSetup

FinishFightSetup:
rep #$30
pla

php
phb
phd
sei
rep #$30
jml $C484E0
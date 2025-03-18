# dq6 practice
no frills practice hack. lets you use prepared save files to easily refight bosses


## rom setup
apply ips/dq6_j_practice.ips to a dq6 J rom, specifically .sfc file. use lunar magic if you don't have any other tool for this

you will need your own save files to support loading the presets, explained below

## usage

press L in game to access debug menu
choose 4th last option せんたくせんとう

this hack uses the first option in this menu (グループ00 / 0) to set up presets for the following bosses

1: MUDO 1  
2: MUDO 2  
3: MUDO 3  

then just confirm all the way until battle, ignoring all other inputs

## example

for example, to use this for mudo 1, perform the following steps 

- create a directory to hold the rom and savefile you want
- create the practice hack using the ips above. name this file "dq6_mudo1.sfc"
- in emulator on a normal dq6 ROM, save the game with the party setup you want to fight mudo 1. close the ROM/emulator to make sure the srm file saves
- copy this savefile to the directory you made above. name this file "dq6_mudo1.srm"
- depending on your setup, you may need to move your savefile. for example for bizhawk, it must goes into the SNES/SaveRAM/ directory
- open "dq6_mudo1.sfc" in your emulator or on your flash cart
- load the savefile
- press L, choose せんたくせんとう
- select 1 for this first menu, which corresponds to the above boss table. it says ぶちスライム (SpotSlime) but it doesn't matter
- mash confirm all the way into battle
- boss fight. you can flee from this fight as well
- press L > HP MP MAX to recover after fight
- repeat



if you complain about this setup then make your own hack & i'll look forward to it 
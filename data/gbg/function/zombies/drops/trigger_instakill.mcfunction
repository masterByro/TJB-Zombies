clear @s minecraft:light_gray_candle
tag @e remove canDrop

tag @a add instakill
effect give @a minecraft:strength 30 255 false
schedule function gbg:zombies/drops/instakill_off 30s
scoreboard players reset gbg.shoot_sound_volume gbg.temp
# Putting number on temp scoreboard
scoreboard players operation gbg.shoot_sound_volume gbg.temp = gbg.range gbg.temp
# Increasing by 4 so sound is heard slightly farther away than the guns range
scoreboard players add gbg.shoot_sound_volume gbg.temp 4
# Multiplying the numerator by 100 so the resulting proportion isn't a fraction
scoreboard players operation gbg.shoot_sound_volume gbg.temp *= 100 number
# Dividing the volume by 16, so it's converted from blocks to sound volume
scoreboard players operation gbg.shoot_sound_volume gbg.temp /= 16 number

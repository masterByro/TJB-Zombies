# f(x) = d * (1 - (x / (x + v)))
# d is the base damage of the gun
# x is the armor of the target
# v is the reduction factor: (15-light,50-standard,80-heavy)
# f(x) is the resulting reduced damage
# note: this doesn't account for Minecraft's armor-based damage reduction,
# so the value isn't the damage the target will take

# Stopping Function if Damage Type is Explosive, Ray, or Fire
execute if score gbg.damage_type gbg.temp matches 6..9 run return run execute store result storage gbg:macro input.damage int 1 run scoreboard players get gbg.damage gbg.temp

# Putting base damage and current armor on scoreboards
execute store result score target_current_armor gbg.temp run attribute @s armor get
scoreboard players operation lower_x gbg.temp = target_current_armor gbg.temp
scoreboard players operation upper_x gbg.temp = target_current_armor gbg.temp
scoreboard players operation d gbg.temp = gbg.damage gbg.temp
scoreboard players set 10 gbg.temp 10
# Putting v on scoreboard
#bullet
execute if score gbg.damage_type gbg.temp matches 2 run scoreboard players set v gbg.temp 15
execute if score gbg.damage_type gbg.temp matches 1 run scoreboard players set v gbg.temp 50
execute if score gbg.damage_type gbg.temp matches 3 run scoreboard players set v gbg.temp 80
#laser
execute if score gbg.damage_type gbg.temp matches 4 run scoreboard players set v gbg.temp 45
execute if score gbg.damage_type gbg.temp matches 5 run scoreboard players set v gbg.temp 75
# Adding v to lower x
scoreboard players operation lower_x gbg.temp += v gbg.temp
# Multiplying by 10
scoreboard players operation upper_x gbg.temp *= 10 number
# Dividing upper x
scoreboard players operation upper_x gbg.temp /= lower_x gbg.temp
# Subtracting by 10
scoreboard players operation 10 gbg.temp -= upper_x gbg.temp
# Multiplying d
scoreboard players operation d gbg.temp *= 10 gbg.temp
# Putting the damage value in storage
#(scaled down so it's lower)
execute store result storage gbg:macro input.damage int 0.1 run scoreboard players get d gbg.temp


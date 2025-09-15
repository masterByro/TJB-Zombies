# Runs when the throwable life timer hits -1
execute if score @s gbg.throwable.impact_type matches 1 run function gbg:throwable/explode/pipe_bomb
execute if score @s gbg.throwable.impact_type matches 2 run function gbg:throwable/explode/molotov_cocktail
execute if score @s gbg.throwable.impact_type matches 3 run function gbg:throwable/explode/grenade
execute if score @s gbg.throwable.impact_type matches 4 run function gbg:throwable/explode/chemical_grenade
execute if score @s gbg.throwable.impact_type matches 5 run function gbg:throwable/explode/smoke_grenade
execute if score @s gbg.throwable.impact_type matches 20.. run function #gbg:impact_type

#Cleanup
tag @s[type=player,tag=gbg.throwing_throwable] remove gbg.throwing_throwable
kill @s[type=item_display]
kill @s[type=marker]

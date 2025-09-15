# Cleaning Up Offhand & Mainhand
execute if data entity @s SelectedItem run function gbg:reload/give
execute unless data entity @s SelectedItem run function gbg:reload/replace
# Figuring Out the Gun and What Functions to Run
execute if entity @s[scores={gbg.cooldown=0}] run function gbg:reload/figure_out_gun

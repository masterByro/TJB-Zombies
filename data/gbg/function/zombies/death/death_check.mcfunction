#set spawn
execute as @a[scores={health=1..}] at @s run spawnpoint @s ~ ~ ~

# New death
execute as @a[scores={NewDeath=1..}] run tag @s add Downed
execute unless entity @a[gamemode=!spectator,tag=!Downed] run function gbg:misc/stop
execute if entity @a[tag=!Downed,gamemode=!spectator] as @a[scores={NewDeath=1..}] run function gbg:zombies/death/death_downed

# Downed players
execute as @a[tag=Downed] run function gbg:zombies/death/death_tick

# Handle revival ticking
execute as @a[tag=!Downed] run function gbg:zombies/death/revive_tick
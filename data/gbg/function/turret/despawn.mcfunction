# Runs only when the despawn scoreboard for a turret hits 0
particle poof ~ ~0.75 ~ 0.1 0.1 0.1 0.007 20 normal
kill @e[type=item_display,tag=destroyed,limit=1,sort=nearest,distance=..1]
kill @s

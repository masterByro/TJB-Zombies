# Executing as the entity that got hit
$damage @s $(damage) gbg:bullet_light by @a[scores={gbg.id=$(source)},limit=1]

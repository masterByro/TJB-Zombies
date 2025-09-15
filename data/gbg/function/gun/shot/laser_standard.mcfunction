# Executing as the entity that got hit
$damage @s $(damage) gbg:laser_standard by @a[scores={gbg.id=$(source)},limit=1]

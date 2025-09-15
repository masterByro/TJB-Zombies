# Executing as the entity that got hit
$damage @s $(damage) gbg:bullet_heavy by @a[scores={gbg.id=$(source)},limit=1]

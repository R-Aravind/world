execute as @e[type=minecraft:creeper,tag=!acg_tagged] at @s run data merge entity @s {ExplosionRadius:0}
tag @e[type=minecraft:creeper,tag=!acg_tagged] add acg_tagged
schedule function anti_creeper_grief:second 1s

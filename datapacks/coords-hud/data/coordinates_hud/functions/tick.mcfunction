# Controls everything to do with coordinates hud

schedule function coordinates_hud:tick 1t

scoreboard players add @a ch_toggleCons 0
scoreboard players set @a[scores={ch_toggleCons=0}] ch_toggleCons -1

scoreboard players enable @a ch_help
execute as @a[scores={ch_help=1..}] at @s run function coordinates_hud:help

scoreboard players enable @a ch_toggle
execute as @a[scores={ch_toggle=1..}] at @s run function coordinates_hud:toggle_trigger

function coordinates_hud:get_24_time

execute as @a[scores={ch_toggleCons=1..}] at @s run function coordinates_hud:get_player_coords
execute as @a[scores={ch_toggleCons=1..}] at @s run function coordinates_hud:display_hud
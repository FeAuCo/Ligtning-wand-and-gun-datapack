scoreboard players remove *steps random_values 1
particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=!#lightning_wands:passable_entities,dx=0,tag=!lvl_2_wand_raycaster] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] positioned ~0.8 ~0.8 ~0.8 run function lightning_wands:lvl_2_wand/raycast/entity_collision

execute positioned ^ ^ ^0.2 if block ~ ~ ~ #lightning_wands:conductive_blocks run function lightning_wands:lvl_2_wand/raycast/blocks_collision/conductive_blocks
execute positioned ^ ^ ^0.2 if block ~ ~ ~ #lightning_wands:activatable_blocks run function lightning_wands:lvl_2_wand/raycast/blocks_collision/activatable_blocks
execute positioned ^ ^ ^0.2 if block ~ ~ ~ #lightning_wands:ignitable_blocks run setblock ~ ~ ~ fire

execute if score *steps random_values matches 1 if score *threads random_values matches 1.. run function lightning_wands:lvl_2_wand/raycast/thread
execute if score *steps random_values matches 1.. positioned ^ ^ ^0.2 if block ~ ~ ~ #lightning_wands:passable_blocks run function lightning_wands:lvl_2_wand/raycast/process

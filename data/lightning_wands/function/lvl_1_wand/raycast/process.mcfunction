particle end_rod ~ ~ ~ 0 0 0 0 1
scoreboard players add *steps lvl_1_wand 1
execute unless block ^ ^ ^0.2 air positioned ~ ~ ~ run function lightning_wands:lvl_1_wand/raycast/end
execute as @e[dx=0,tag=!lvl_1_wand_raycaster] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] positioned ~0.8 ~0.8 ~0.8 run function lightning_wands:lvl_1_wand/raycast/end
execute positioned ^ ^ ^0.2 if score *steps lvl_1_wand matches ..300 if block ~ ~ ~ air run function lightning_wands:lvl_1_wand/raycast/process
execute if score *steps lvl_1_wand matches 300.. run function lightning_wands:lvl_1_wand/raycast/steps_end
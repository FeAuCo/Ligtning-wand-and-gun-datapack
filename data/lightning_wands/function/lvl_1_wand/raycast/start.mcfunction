tag @s add lvl_1_wand_raycaster
execute as @s at @s anchored eyes positioned ^ ^ ^ run function lightning_wands:lvl_1_wand/raycast/process
tag @s remove lvl_1_wand_raycaster
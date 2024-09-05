scoreboard players set *steps random_values 1
effect give @s slowness 3 2 true
execute positioned ~-1.5 ~-1 ~-1.5 as @e[type=!#lightning_wands:passable_entities,dx=2,dy=3,dz=2] run damage @s 12 minecraft:lightning_bolt by @e[tag=lvl_2_wand_raycaster,limit=1]
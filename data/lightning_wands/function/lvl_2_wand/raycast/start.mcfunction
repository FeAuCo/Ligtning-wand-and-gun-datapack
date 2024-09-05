tag @s add lvl_2_wand_raycaster

playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1000 2

execute store result score *threads random_values run random value 10..15
execute store result score *steps random_values run random value 10..20
execute store result score *lightnings random_values run random value 1..3
execute store result score *lightnings.turn_offset random_values run random value 1..8

item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
execute store result score *charges lvl_2_wand_load run data get entity @s SelectedItem.components."minecraft:custom_data".charges
scoreboard players remove *charges lvl_2_wand_load 1
execute store result block 0 -64 0 Items[0].components."minecraft:custom_data".charges byte 1 run scoreboard players get *charges lvl_2_wand_load
item replace entity @s weapon.mainhand from block 0 -64 0 container.0
item modify entity @s weapon.mainhand lightning_wands:lvl_2_wand_charges_update

title @s actionbar [{"text": "Зарядов: ","color": "blue"},{"score":{"name": "*charges","objective": "lvl_2_wand_load"},"color": "blue"},{"text": " / 10","color": "blue"}]

function lightning_wands:lvl_2_wand/raycast/process
execute if score *lightnings random_values matches 1.. run function lightning_wands:lvl_2_wand/raycast/lightnings_check
scoreboard players remove *lightnings random_values 1
execute if score *lightnings random_values matches 1.. run function lightning_wands:lvl_2_wand/raycast/lightnings_check
scoreboard players remove *lightnings random_values 1
execute if score *lightnings random_values matches 1.. run function lightning_wands:lvl_2_wand/raycast/lightnings_check
tag @s remove lvl_2_wand_raycaster
playsound minecraft:block.iron_trapdoor.open master @s ~ ~ ~ 100000 0.75

item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
execute store result score *charges lvl_2_wand_load run data get entity @s SelectedItem.components."minecraft:custom_data".charges

execute if items entity @s weapon.offhand minecraft:pufferfish[minecraft:custom_data={half_lvl_2_wand_fuel: 1b}] run scoreboard players add *charges lvl_2_wand_load 1
execute if items entity @s weapon.offhand minecraft:pufferfish[minecraft:custom_data={lvl_2_wand_fuel: 1b}] if score *charges lvl_2_wand_load matches 9 run function lightning_wands:lvl_2_wand/loading/check_if_overload
execute if items entity @s weapon.offhand minecraft:pufferfish[minecraft:custom_data={lvl_2_wand_fuel: 1b}] unless score *charges lvl_2_wand_load matches 9.. run scoreboard players add *charges lvl_2_wand_load 2

execute store result block 0 -64 0 Items[0].components."minecraft:custom_data".charges byte 1 run scoreboard players get *charges lvl_2_wand_load
item replace entity @s weapon.mainhand from block 0 -64 0 container.0

scoreboard players set @s lvl_2_wand_load 0
execute store result score @s lvl_2_wand_load run data get entity @s Inventory[{Slot:-106b}].count
scoreboard players remove @s lvl_2_wand_load 1
item modify entity @s weapon.offhand lightning_wands:lvl_2_wand_fuel_count
scoreboard players reset @s lvl_2_wand_load
item modify entity @s weapon.mainhand lightning_wands:lvl_2_wand_charges_update
title @s actionbar [{"text": "Зарядов: ","color": "blue"},{"score":{"name": "*charges","objective": "lvl_2_wand_load"},"color": "blue"},{"text": " / 10","color": "blue"}]

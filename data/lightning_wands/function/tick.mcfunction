# посох 1 уровня
execute as @a unless entity @s[scores={lvl_1_wand=0..}] run scoreboard players set @s lvl_1_wand 0 
execute as @a[scores={wand.rmb_check=1..,lvl_1_wand=0},nbt={SelectedItem:{components:{"minecraft:custom_data":{wand_lvl: 1b}}}}] at @s anchored eyes positioned ^ ^ ^ run function lightning_wands:lvl_1_wand/raycast/start
execute as @a[scores={lvl_1_wand=1..20}] run title @s actionbar {"text": "Посох молний <1> перезаряжается 3 сек","color":"aqua"}
execute as @a[scores={lvl_1_wand=21..40}] run title @s actionbar {"text": "Посох молний <1> перезаряжается 2 сек","color":"aqua"}
execute as @a[scores={lvl_1_wand=41..59}] run title @s actionbar {"text": "Посох молний <1> перезаряжается 1 сек","color":"aqua"}
execute as @a[scores={lvl_1_wand=59}] run title @s actionbar {"text": "Посох молний <1> готов к использованию","color":"aqua"}
execute as @a[scores={lvl_1_wand=1..}] run scoreboard players add @s lvl_1_wand 1
scoreboard players set @a[scores={lvl_1_wand=60..}] lvl_1_wand 0

# посох 2 уровня
execute as @a[scores={wand.rmb_check=1..,wand.shift_check=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{wand_lvl: 2b}}},Inventory:[{id:"minecraft:pufferfish",Slot:-106b,components:{"minecraft:custom_data":{lvl_2_wand_fuel: 1b}}}]}] run function lightning_wands:lvl_2_wand/loading/check_amount
execute as @a[scores={wand.rmb_check=1..,wand.shift_check=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{wand_lvl: 2b}}},Inventory:[{id:"minecraft:pufferfish",Slot:-106b,components:{"minecraft:custom_data":{half_lvl_2_wand_fuel: 1b}}}]}] run function lightning_wands:lvl_2_wand/loading/check_amount

execute as @a[scores={wand.rmb_check=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{wand_lvl: 2b}}}},nbt=!{SelectedItem:{components:{"minecraft:custom_data":{charges: 0b}}}}] at @s anchored eyes positioned ^ ^ ^0.25 run function lightning_wands:lvl_2_wand/raycast/start
scoreboard players reset @a[scores={wand.rmb_check=1..}] wand.rmb_check
scoreboard players reset @a[scores={wand.shift_check=1..}] wand.shift_check
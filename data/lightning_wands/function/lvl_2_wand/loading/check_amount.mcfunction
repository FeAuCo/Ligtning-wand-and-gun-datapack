scoreboard players reset @s wand.shift_check
scoreboard players reset @s wand.rmb_check
execute if items entity @s weapon.offhand minecraft:pufferfish[minecraft:custom_data={lvl_2_wand_fuel: 1b}] unless score *charges lvl_2_wand_load matches 10 run function lightning_wands:lvl_2_wand/loading/load
execute if items entity @s weapon.offhand minecraft:pufferfish[minecraft:custom_data={half_lvl_2_wand_fuel: 1b}] unless score *charges lvl_2_wand_load matches 10 run function lightning_wands:lvl_2_wand/loading/load
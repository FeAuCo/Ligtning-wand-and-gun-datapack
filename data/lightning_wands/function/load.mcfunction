tellraw @a {"text":"Датапак, добавляющий посохи молний, запущен", "bold": true, "color": "green"}

scoreboard objectives add wand.rmb_check minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add wand.shift_check minecraft.custom:minecraft.sneak_time
scoreboard objectives add random_values dummy
scoreboard objectives add lvl_1_wand dummy
scoreboard objectives add lvl_2_wand_load dummy

scoreboard players set *steps lvl_1_wand 0 

setblock 0 -64 0 shulker_box

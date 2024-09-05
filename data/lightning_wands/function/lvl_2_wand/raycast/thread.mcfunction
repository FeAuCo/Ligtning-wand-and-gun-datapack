scoreboard players remove *threads random_values 1
execute store result score *chances random_values run random value 1..100
execute if score *chances random_values matches 1..20 rotated ~12 ~-8 run function lightning_wands:lvl_2_wand/raycast/joint
execute if score *chances random_values matches 21..40 rotated ~-13 ~-3 run function lightning_wands:lvl_2_wand/raycast/joint
execute if score *chances random_values matches 41..60 rotated ~ ~6 run function lightning_wands:lvl_2_wand/raycast/joint
execute if score *chances random_values matches 61..80 rotated ~-8 ~9 run function lightning_wands:lvl_2_wand/raycast/joint
execute if score *chances random_values matches 81..100 rotated ~14 ~-7 run function lightning_wands:lvl_2_wand/raycast/joint

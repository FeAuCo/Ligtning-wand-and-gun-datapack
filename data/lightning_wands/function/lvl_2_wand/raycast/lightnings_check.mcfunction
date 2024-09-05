execute store result score *threads random_values run random value 10..15
execute store result score *steps random_values run random value 10..20
execute store result score *lightnings.turn_offset random_values run random value 1..8

execute if score *lightnings.turn_offset random_values matches 1 rotated ~15 ~ run function lightning_wands:lvl_2_wand/raycast/process
execute if score *lightnings.turn_offset random_values matches 2 rotated ~-15 ~ run function lightning_wands:lvl_2_wand/raycast/process
execute if score *lightnings.turn_offset random_values matches 3 rotated ~ ~15 run function lightning_wands:lvl_2_wand/raycast/process
execute if score *lightnings.turn_offset random_values matches 4 rotated ~ ~-15 run function lightning_wands:lvl_2_wand/raycast/process

execute if score *lightnings.turn_offset random_values matches 5 rotated ~15 ~15 run function lightning_wands:lvl_2_wand/raycast/process
execute if score *lightnings.turn_offset random_values matches 6 rotated ~-15 ~15 run function lightning_wands:lvl_2_wand/raycast/process
execute if score *lightnings.turn_offset random_values matches 8 rotated ~-15 ~-15 run function lightning_wands:lvl_2_wand/raycast/process
execute if score *lightnings.turn_offset random_values matches 7 rotated ~15 ~-15 run function lightning_wands:lvl_2_wand/raycast/process
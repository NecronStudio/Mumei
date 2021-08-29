#> necron.player:damage_taken/damage_taken_0/damage_taken_1
#
# 
#
# @within function necron.player:damage_taken/damage_taken_1
scoreboard players operation @s NSD.Health.0 -= @s NSD.Detection
scoreboard players operation @s NSD.Health.0 -= $NSD.Health.0 NSD.Health.0
execute if score @s NSD.Health.0 matches 2 run kill @s
execute if score @s NSD.Health.0 matches 1 run kill @s
execute if score @s NSD.Health.0 matches 0 run kill @s
execute if score @s NSD.Health.0 matches -1 run kill @s
execute if score @s NSD.Health.0 matches -2 run kill @s
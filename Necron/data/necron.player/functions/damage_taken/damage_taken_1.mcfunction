#> necron.player:damage_taken/damage_taken_1
#
# 
#
# @within function necron.player:damage_taken/damage_taken_0

scoreboard players operation @e[type=!player,type=!item,distance=..2.5] NSD.Health.0 = @s NSD.Health.0
execute store result score $NSD.Health.0 NSD.Health.0 run data get entity @s Health 1000000
scoreboard players operation @s NSD.Health.0 -= $NSD.Health.0 NSD.Health.0
execute as @e[type=!player,type=!item,distance=..2.5] at @s run scoreboard players operation @s NSD.Health.0 -= @s NSD.Detection
tellraw @s {"score":{"name":"*","objective":"NSD.Health.0"},"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"white","bold":true}]}}

scoreboard players operation @e[type=!player,type=!item,distance=..2.5] NSD.Health.0 -= $NSD.Health.0 NSD.Health.0
execute as @e[type=!player,type=!item,distance=..2.5] if score @s NSD.Health.0 matches 2 run kill @s
execute as @e[type=!player,type=!item,distance=..2.5] if score @s NSD.Health.0 matches 1 run kill @s
execute as @e[type=!player,type=!item,distance=..2.5] if score @s NSD.Health.0 matches 0 run kill @s
execute as @e[type=!player,type=!item,distance=..2.5] if score @s NSD.Health.0 matches -1 run kill @s
execute as @e[type=!player,type=!item,distance=..2.5] if score @s NSD.Health.0 matches -2 run kill @s

scoreboard players reset @s NSD.Damage.Taken
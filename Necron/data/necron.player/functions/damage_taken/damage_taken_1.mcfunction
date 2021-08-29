#> necron.player:damage_taken/damage_taken_1
#
# 
#
# @within function necron.player:damage_taken/damage_taken_0
#処理君
scoreboard players operation @e[type=!player,type=!item,distance=..2.5] NSD.Health.0 = @s NSD.Health.0
execute store result score $NSD.Health.0 NSD.Health.0 run data get entity @s Health 1000000
scoreboard players operation @s NSD.Health.0 -= $NSD.Health.0 NSD.Health.0
execute as @e[type=!player,type=!item,type=!armor_stand,type=!item_frame,type=!experience_orb,type=!villager,distance=..2.5] at @s run function necron.player:damage_taken/damage_taken_0/damage_taken_1
effect give @s instant_health 1 100 true
scoreboard players reset @s NSD.Damage.Taken
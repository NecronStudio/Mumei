#> necron.player:attack/immersive.citizens/attack.3
#
# 
#
# @within function necron.player:attack/immersive.citizens/attack.0

execute store result score @s NSD.Detection.1 run data get entity @s Health 1
scoreboard players operation @s NSD.Detection.0 -= @s NSD.Detection.1
execute if score @s NSD.Detection.0 matches 1.. run tag @s add MayBeDamaged
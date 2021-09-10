#> necron.player:attack/immersive.citizens/attack.1
#
# 
#
# @public

# MayBeDamaged Citizens
execute store result score @s NSD.Detection.0 run data get entity @s Health 1000000
execute store result score @s NSD.Detection.0 run scoreboard players operation @s NSD.Detection.2 -= @s NSD.Detection.0
scoreboard players operation @s NSD.Detection.2 /= $NSD.1000000 NSD.Const
scoreboard players operation @s NSD.Detection.2 *= $NSD.1000000 NSD.Const
scoreboard players operation @s NSD.Detection.0 -= @s NSD.Detection.2
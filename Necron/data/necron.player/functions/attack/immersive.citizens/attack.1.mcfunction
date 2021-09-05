#> necron.player:attack/immersive.citizens/attack.1
#
# 
#
# @within function necron.player:attack/immersive.citizens/attack.0

# MayBeDamaged Citizens
execute as @e[type=!player,tag=MayBeDamaged,distance=..7] store result score @s NSD.Detection.0 run data get entity @s Health 1000000
execute as @e[type=!player,tag=MayBeDamaged,distance=..7] store result score @s NSD.Detection.0 run scoreboard players operation @s NSD.Detection.2 -= @s NSD.Detection.0
execute as @e[type=!player,tag=MayBeDamaged,distance=..7] run scoreboard players operation @s NSD.Detection.2 /= $NSD.1000000 NSD.Const
execute as @e[type=!player,tag=MayBeDamaged,distance=..7] run scoreboard players operation @s NSD.Detection.2 *= $NSD.1000000 NSD.Const
execute as @e[type=!player,tag=MayBeDamaged,distance=..7] run scoreboard players operation @s NSD.Detection.0 -= @s NSD.Detection.2
data modify entity @s Health set value 10000f

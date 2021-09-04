#> necron.player:attack/immersive.citizens/attack.matches.2
#
# 
#
# @within function necron.player:attack/immersive.citizens/attack.0

scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp -= @e[type=armor_stand,distance=..2.5] NSD.Dealt.0
scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp *= $S100 NSD.S
scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp /= $NSD.Enemy.HP.1 NSD.Temp
scoreboard players operation @s NSD.HP *= $NSD.Enemy.HP.0 NSD.Temp
scoreboard players operation @s NSD.HP /= $S100 NSD.S
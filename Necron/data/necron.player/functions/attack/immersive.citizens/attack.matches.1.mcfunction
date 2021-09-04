#> necron.player:attack/immersive.citizens/attack.matches.1
#
# 
#
# @within function necron.player:attack/immersive.citizens/attack.0

scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp -= @e[type=armor_stand,distance=..2.5] NSD.Dealt.0
scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp *= $NSD.100 NSD.Const
scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp /= $NSD.Enemy.HP.1 NSD.Temp
scoreboard players operation @s NSD.HP *= $NSD.Enemy.HP.0 NSD.Temp
scoreboard players operation @s NSD.HP /= $NSD.100 NSD.Const

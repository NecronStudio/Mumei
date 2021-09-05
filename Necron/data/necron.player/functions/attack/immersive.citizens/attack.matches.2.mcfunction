#> necron.player:attack/immersive.citizens/attack.matches.2
#
# 
#
# @within function necron.player:weapon.throwing/weapon.throwing.2
# citizens of oneself
scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp -= @s NSD.Dealt.0
scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp *= $S100 NSD.Const
scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp /= $NSD.Enemy.HP.1 NSD.Temp
scoreboard players operation @s NSD.HP *= $NSD.Enemy.HP.0 NSD.Temp
scoreboard players operation @s NSD.HP /= $NSD.100 NSD.Const
execute if score @s NSD.HP matches ..0 run kill @s
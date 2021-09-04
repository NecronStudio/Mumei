#> necron.player:attack/immersive.citizens/attack.citizen.arrow
#
# 
#
# @within function necron.player:attack/attack.0

# Arrow of Citizens for calculating damage
function necron.player:attack/immersive.citizens/attack.2
execute store result score @s NSD.Dealt.0 run data get entity @s ActiveEffects[{Id:26b}].Duration
scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp -= @s NSD.Dealt.0
scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp *= $NSD.100 NSD.Const
scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp /= $NSD.Enemy.HP.1 NSD.Temp
scoreboard players operation @s NSD.HP *= $NSD.Enemy.HP.0 NSD.Temp
scoreboard players operation @s NSD.HP /= $NSD.100 NSD.Const
effect clear @s luck
execute if score @s NSD.HP matches ..0 run kill @s
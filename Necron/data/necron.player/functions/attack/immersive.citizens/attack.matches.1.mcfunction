#> necron.player:attack/immersive.citizens/attack.matches.1
#
# 
#
# @within function necron.player:attack/immersive.citizens/attack.0
 #declare tag NSD.ShowDealt
scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp -= @e[type=armor_stand,distance=..5] NSD.Dealt.0
scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp *= $NSD.100 NSD.Const
scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp /= $NSD.Enemy.HP.1 NSD.Temp
scoreboard players operation $NSD.Enemy.Left.HP.0 NSD.HP = @s NSD.HP
scoreboard players operation @s NSD.HP *= $NSD.Enemy.HP.0 NSD.Temp
scoreboard players operation @s NSD.HP /= $NSD.100 NSD.Const
scoreboard players operation $NSD.Enemy.Left.HP.1 NSD.HP = @s NSD.HP
scoreboard players operation $NSD.Enemy.Left.HP.0 NSD.HP -= $NSD.Enemy.Left.HP.1 NSD.HP
execute as @a[tag=NSD.ShowDealt] at @s run tellraw @s [{"text":">>> ","color":"white"},{"score":{"name":"$NSD.Enemy.Left.HP.0","objective":"NSD.HP"},"color":"red"},{"text":"ダメージ","color":"white"}]

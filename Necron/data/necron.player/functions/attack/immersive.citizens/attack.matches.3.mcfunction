#> necron.player:attack/immersive.citizens/attack.matches.3
#
# 
#
# @public
# citizens
scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp -= $NSD.ATK NSD.ATK
scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp *= $NSD.100 NSD.Const
scoreboard players operation $NSD.Enemy.HP.0 NSD.Temp /= $NSD.Enemy.HP.1 NSD.Temp
scoreboard players operation $NSD.Enemy.Left.HP.0 NSD.HP = @s NSD.HP
scoreboard players operation @s NSD.HP *= $NSD.Enemy.HP.0 NSD.Temp
scoreboard players operation @s NSD.HP /= $NSD.100 NSD.Const
scoreboard players operation $NSD.Enemy.Left.HP.1 NSD.HP = @s NSD.HP
scoreboard players operation $NSD.Enemy.Left.HP.0 NSD.HP -= $NSD.Enemy.Left.HP.1 NSD.HP
execute as @a[tag=NSD.ShowDealt] at @s run tellraw @s [{"text":">>> ","color":"white"},{"score":{"name":"$NSD.Enemy.Left.HP.0","objective":"NSD.HP"},"color":"red"},{"text":"ダメージ","color":"white"}]
execute if score @s NSD.HP matches ..0 run kill @s
scoreboard players reset $NSD.Enemy.HP.0 NSD.Temp
scoreboard players reset $NSD.Enemy.HP.1 NSD.Temp
scoreboard players reset $NSD.ATK NSD.ATK
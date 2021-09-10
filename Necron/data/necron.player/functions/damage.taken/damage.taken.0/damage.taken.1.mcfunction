#> necron.player:damage.taken/damage.taken.0/damage.taken.1
#
# 
#
# @within function necron.player:damage.taken/damage.taken.0/damage.taken.0

scoreboard players operation @s NSD.GotDamaged /= @s NSD.Protection.0
scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp = @s NSD.HP
scoreboard players operation $NSD.Citizens.HP.1 NSD.Temp = @s NSD.HP
scoreboard players operation $NSD.Citizens.HP.2 NSD.Temp = @s NSD.HP
scoreboard players operation $NSD.DEF NSD.Temp = @s NSD.DEF
scoreboard players operation $NSD.DEF NSD.Temp += $NSD.100 NSD.Const
scoreboard players operation $NSD.DEF NSD.Temp /= $NSD.100 NSD.Const
scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp *= $NSD.DEF NSD.Temp
scoreboard players operation $NSD.Citizens.HP.1 NSD.Temp *= $NSD.DEF NSD.Temp
execute if score @s NSD.GotDamaged matches 90 run scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp -= $NSD.10 NSD.Const
execute if score @s NSD.GotDamaged matches 90 run scoreboard players reset @s NSD.GotDamaged
#execute if data entity @s {foodLevel:0} if score @s NSD.GotDamaged matches 90 run scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp -= $NSD.10 NSD.Const
#execute if data entity @s {foodLevel:0} if score @s NSD.GotDamaged matches 90 run scoreboard players reset @s NSD.GotDamaged
scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp -= @s NSD.GotDamaged
scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp *= $NSD.100 NSD.Const
scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp /= $NSD.Citizens.HP.1 NSD.Temp
scoreboard players operation @s NSD.HP *= $NSD.Citizens.HP.0 NSD.Temp
scoreboard players operation @s NSD.HP /= $NSD.100 NSD.Const
scoreboard players operation $NSD.Citizens.HP.2 NSD.Temp -= @s NSD.HP
execute as @s[tag=NSD.ShowDealt] if score @s NSD.Damaged.0 matches 1.. run tellraw @s [{"text":"<<< ","color":"white"},{"score":{"name":"$NSD.Citizens.HP.2","objective":"NSD.Temp"},"color":"red"},{"text":"ダメージ","color":"white"}]
execute if score @s NSD.HP matches ..0 run kill @s
execute if score @s NSD.HP matches ..0 run scoreboard players operation @s NSD.HP = @s NSD.HP.Max
function necron.core:2s.tick
# jt;wse::fzlt
execute store result score @s NSD.Health.0 run data get entity @s Health 100000000
tellraw @s {"score":{"name":"*","objective":"NSD.Health.0"}}
scoreboard players operation $NSD.2000000000 NSD.S -= @s NSD.Health.0
execute store result score $NSD.Health.1 NSD.Health.0 run data get entity @s Health 1
scoreboard players operation $NSD.Health.1 NSD.Health.0 *= $NSD.100000000 NSD.S
scoreboard players operation $NSD.1000000000 NSD.S -= $NSD.2000000000 NSD.S
execute if score $NSD.1000000000 NSD.S matches 1.. run scoreboard players operation $NSD.1000000000 NSD.S /= $NSD.1000 NSD.Const
execute if score $NSD.1000000000 NSD.S matches 1.. run scoreboard players operation $NSD.1000000000 NSD.S /= $NSD.100 NSD.Const
execute if score $NSD.1000000000 NSD.S matches 1.. store result score @s NSD.GotDamaged run scoreboard players operation $NSD.1000000000 NSD.S /= $NSD.100 NSD.Const
execute if score $NSD.1000000000 NSD.S matches ..-1 run scoreboard players operation $NSD.1000000000 NSD.S /= $NSD.100 NSD.Const
execute if score $NSD.1000000000 NSD.S matches ..-1 store result score @s NSD.GotDamaged run scoreboard players operation $NSD.1000000000 NSD.S *= $NSD.-1 NSD.Const

execute store result score @s NSD.ActiveEffect run data get entity @s ActiveEffects[{Id:20b}].Duration
execute if score @s NSD.ActiveEffect matches 1.. store result score @s NSD.GotDamaged run scoreboard players get @s NSD.ActiveEffect
execute if score @s NSD.ActiveEffect matches 1.. run effect clear @s wither

execute unless data entity @s {Fire:-20s} store result score @s NSD.GotDamaged run data get entity @s Fire
scoreboard players operation @s NSD.GotDamaged /= @s NSD.Protection.0
scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp = @s NSD.HP
scoreboard players operation $NSD.Citizens.HP.1 NSD.Temp = @s NSD.HP
scoreboard players operation $NSD.DEF NSD.Temp = @s NSD.DEF
scoreboard players operation $NSD.DEF NSD.Temp += $NSD.100 NSD.Const
scoreboard players operation $NSD.DEF NSD.Temp /= $NSD.100 NSD.Const
scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp *= $NSD.DEF NSD.Temp
scoreboard players operation $NSD.Citizens.HP.1 NSD.Temp *= $NSD.DEF NSD.Temp
execute if data entity @s {foodLevel:0} if score @s NSD.GotDamaged matches 90 run scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp -= $NSD.10 NSD.Const
execute if data entity @s {foodLevel:0} if score @s NSD.GotDamaged matches 90 run scoreboard players reset @s NSD.GotDamaged
scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp -= @s NSD.GotDamaged
scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp *= $NSD.100 NSD.Const
scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp /= $NSD.Citizens.HP.1 NSD.Temp
scoreboard players operation @s NSD.HP *= $NSD.Citizens.HP.0 NSD.Temp
scoreboard players operation @s NSD.HP /= $NSD.100 NSD.Const
execute if score @s NSD.HP matches ..0 run kill @s
execute if score @s NSD.HP matches ..0 run scoreboard players operation @s NSD.HP = @s NSD.HP.Max
function necron.core:2s.tick
effect give @s minecraft:instant_health 1 100 true

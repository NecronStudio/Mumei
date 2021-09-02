#jt;wse::fzlt
execute store result score @s NSD.Health.0 run data get entity @s Health 100000000
tellraw @s {"score":{"name":"*","objective":"NSD.Health.0"}}

scoreboard players operation $S2000000000 NSD.S -= @s NSD.Health.0
tellraw @s {"score":{"name":"$S2000000000","objective":"NSD.S"}}

execute store result score $NSD.Health.1 NSD.Health.0 run data get entity @s Health 1
tellraw @s {"score":{"name":"$NSD.Health.1","objective":"NSD.Health.0"}}

scoreboard players operation $NSD.Health.1 NSD.Health.0 *= $S100000000 NSD.S
tellraw @s {"score":{"name":"$NSD.Health.1","objective":"NSD.Health.0"}}

scoreboard players operation $S1000000000 NSD.S -= $S2000000000 NSD.S
tellraw @s {"score":{"name":"$S1000000000","objective":"NSD.S"}}

execute if score $S1000000000 NSD.S matches 1.. run scoreboard players operation $S1000000000 NSD.S /= $S100 NSD.S
execute if score $S1000000000 NSD.S matches 1.. run scoreboard players operation $S1000000000 NSD.S /= $S100 NSD.S
execute if score $S1000000000 NSD.S matches 1.. run scoreboard players operation $S1000000000 NSD.S /= $S10 NSD.S
execute if score $S1000000000 NSD.S matches 1.. store result score @s NSD.GotDamaged run scoreboard players operation $S1000000000 NSD.S /= $S100 NSD.S
execute if score $S1000000000 NSD.S matches ..-1 run scoreboard players operation $S1000000000 NSD.S /= $S100 NSD.S
tellraw @s {"score":{"name":"$S1000000000","objective":"NSD.S"}}
execute if score $S1000000000 NSD.S matches ..-1 run scoreboard players operation $S1000000000 NSD.S /= @s NSD.Protection.0
tellraw @s {"score":{"name":"$S1000000000","objective":"NSD.S"}}
execute if score $S1000000000 NSD.S matches ..-1 store result score @s NSD.GotDamaged run scoreboard players operation $S1000000000 NSD.S *= $S-1 NSD.S
tellraw @s {"score":{"name":"$S1000000000","objective":"NSD.S"}}
execute store result score @s NSD.ActiveEffect run data get entity @s NSD.ActiveEffects[{Id:20b}].Duration
execute if score @s NSD.ActiveEffect matches 1.. store result score @s NSD.GotDamaged run scoreboard players get @s NSD.ActiveEffect
execute if score @s NSD.ActiveEffect matches 1.. run effect clear @s wither
execute unless data entity @s {Fire:-20s} store result score @s NSD.GotDamaged run data get entity @s Fire

scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp = @s NSD.HP
scoreboard players operation $NSD.Citizens.HP.1 NSD.Temp = @s NSD.HP
scoreboard players operation @s NSD.DEF += $S100 NSD.S
scoreboard players operation @s NSD.DEF /= $S100 NSD.S
scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp *= @s NSD.DEF
scoreboard players operation $NSD.Citizens.HP.1 NSD.Temp *= @s NSD.DEF
scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp -= @s NSD.GotDamaged
scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp *= $S100 NSD.S
scoreboard players operation $NSD.Citizens.HP.0 NSD.Temp /= $NSD.Citizens.HP.1 NSD.Temp
scoreboard players operation @s NSD.HP *= $NSD.Citizens.HP.0 NSD.Temp
scoreboard players operation @s NSD.HP /= $S100 NSD.S


effect give @s minecraft:instant_health 1 100 true
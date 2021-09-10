# jt;wse::fzlt
execute store result score @s NSD.Health.0 run data get entity @s Health 100000000
scoreboard players operation $NSD.2000000000 NSD.S -= @s NSD.Health.0
execute store result score $NSD.Health.1 NSD.Health.0 run data get entity @s Health 1
scoreboard players operation $NSD.Health.1 NSD.Health.0 *= $NSD.100000000 NSD.S
scoreboard players operation $NSD.1000000000 NSD.S -= $NSD.2000000000 NSD.S
execute if score $NSD.1000000000 NSD.S matches 1.. run scoreboard players operation $NSD.1000000000 NSD.S /= $NSD.1000 NSD.Const
execute if score $NSD.1000000000 NSD.S matches 1.. run scoreboard players operation $NSD.1000000000 NSD.S /= $NSD.100 NSD.Const
execute if score $NSD.1000000000 NSD.S matches 1.. store result score @s NSD.GotDamaged run scoreboard players operation $NSD.1000000000 NSD.S /= $NSD.100 NSD.Const
execute if score $NSD.1000000000 NSD.S matches ..-1 run scoreboard players operation $NSD.1000000000 NSD.S /= $NSD.100 NSD.Const
execute if score $NSD.1000000000 NSD.S matches ..-1 store result score @s NSD.GotDamaged run scoreboard players operation $NSD.1000000000 NSD.S *= $NSD.-1 NSD.Const

# Citizens for arrow damage
execute store result score @s NSD.ActiveEffect run data get entity @s ActiveEffects[{Id:20b}].Duration
execute if score @s NSD.ActiveEffect matches 1.. store result score @s NSD.GotDamaged run scoreboard players get @s NSD.ActiveEffect
execute if score @s NSD.ActiveEffect matches 1.. run effect clear @s wither

# Citizens for fire hurt
execute unless data entity @s {Fire:-20s} store result score @s NSD.GotDamaged run data get entity @s Fire

# Citizens for calculate
function necron.player:damage.taken/damage.taken.0/damage.taken.1
effect give @s minecraft:instant_health 1 100 true

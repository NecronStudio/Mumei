#> necron.player:damage.taken/damage.taken.0
#
# 常時実行
#
# @within function necron.core:tick

# ftfrsgtdeddz
scoreboard players operation $NSD.2000000000 NSD.S = $NSD.2000000000 NSD.Const
scoreboard players operation $NSD.1000000000 NSD.S = $NSD.1000000000 NSD.Const
scoreboard players operation $NSD.100000000 NSD.S = $NSD.100000000 NSD.Const
execute store result score @s NSD.Difficulty run difficulty

# dehvfrgtjthc(gtdbse skelett gqfb)
execute if score @s NSD.Difficulty matches 1 as @e[type=!player,type=!skeleton] at @s run attribute @s minecraft:generic.attack_damage base set 18.0
execute if score @s NSD.Difficulty matches 2 as @e[type=!player,type=!skeleton] at @s run attribute @s minecraft:generic.attack_damage base set 10.0
execute if score @s NSD.Difficulty matches 3 as @e[type=!player,type=!skeleton] at @s run attribute @s minecraft:generic.attack_damage base set 6.6667
execute as @e store result score @s NSD.Attribute.0 run data get entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base 100000000
execute as @e store result score @s NSD.Attribute.1 run data get entity @s ArmorItems[3].tag.ATK 100
execute as @e run scoreboard players operation @s NSD.Attribute.0 += @s NSD.Attribute.1
execute as @e[type=!skeleton] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.00000001 run scoreboard players get @s NSD.Attribute.0

# jt;wse::fzlt
execute if score @s NSD.Damaged.0 matches 1.. run function necron.player:damage.taken/damage.taken.0/damage.taken.0

scoreboard players reset @s NSD.Damaged.0

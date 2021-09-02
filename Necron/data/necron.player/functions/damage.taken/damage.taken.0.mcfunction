#> necron.player:damage.taken/damage.taken.0
#
# 常時実行
#
# @within function necron.core:tick

#ftfrsgtdeddz
scoreboard players set $S2000000000 NSD.S 2000000000
scoreboard players set $S1000000000 NSD.S 1000000000
scoreboard players set $S100000000 NSD.S 100000000
scoreboard players set $S1000 NSD.S 1000
scoreboard players set $S100 NSD.S 100
scoreboard players set $S10 NSD.S 10
scoreboard players set $S-1 NSD.S -1
scoreboard players set $S-2 NSD.S -2

#dehvfrgtjthc(gtdbse skelett gqfb)
execute as @e[type=!player,type=!skeleton] at @s run attribute @s minecraft:generic.attack_damage base set 10.0
execute as @e store result score @s NSD.Attribute.0 run data get entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base 100000000
execute as @e store result score @s NSD.Attribute.1 run data get entity @s ArmorItems[3].tag.ATK 100
scoreboard players operation @e NSD.Attribute.0 += @e NSD.Attribute.1
execute as @e[type=!skeleton] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.00000001 run scoreboard players get @s NSD.Attribute.0

#jt;wse::fzlt
execute if score @s NSD.Damaged.0 matches 1.. run function necron.player:damage.taken/damage.taken.0/damage.taken.0

scoreboard players reset @s NSD.Damaged.0
#> necron.player:weapon.throwing/weapon.throwing.1
#
# 
#
# @within function necron.core:tick
 #declare tag NSD.Replace
# Citizens of Thown Weapon
scoreboard players add @s NSD.S 1
particle crit ~ ~1.2 ~ 0 0 0 0 1 normal
execute as @e[type=!player,type=!armor_stand,distance=..1,limit=1] at @s run function necron.player:weapon.throwing/weapon.throwing.2
execute if score @s NSD.S matches 15.. if data entity @s {OnGround:1b} run summon item ~ ~ ~ {Tags:["NSD.Replace"],Item:{id:"minecraft:stick",Count:1b}}
execute if score @s NSD.S matches 15.. if data entity @s {OnGround:1b} run data modify entity @e[tag=NSD.Replace,sort=nearest,limit=1] Item set from entity @s HandItems[0]
execute if score @s NSD.S matches 15.. if data entity @s {OnGround:1b} run kill @s
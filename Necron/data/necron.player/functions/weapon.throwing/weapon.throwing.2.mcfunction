#> necron.player:weapon.throwing/weapon.throwing.2
#
# 
#
# @within function necron.player:weapon.throwing/weapon.throwing.1

summon item ~ ~1 ~ {Tags:["NSD.Replace"],Item:{id:"minecraft:stick",Count:1b}}
effect give @s wither 1 1 true
execute anchored eyes run data modify entity @e[tag=NSD.Replace,nbt={Item:{id:"minecraft:stick",Count:1b}},sort=nearest,limit=1] Item set from entity @e[tag=NSD.WT.0,distance=..1,sort=nearest,limit=1] HandItems[0]
function necron.player:attack/immersive.citizens/attack.2
execute store result score @s NSD.Dealt.0 run data get entity @e[tag=NSD.WT.0,distance=..1,sort=nearest,limit=1] HandItems[0].tag.NSD.Status.ATK
function necron.player:attack/immersive.citizens/attack.matches.2
execute as @e[tag=NSD.WT.0,distance=..1,sort=nearest,limit=1] at @s run kill @s



#> necron.player:damage_taken/damage_taken_0
#
# 
#
# @within function necron.core:tick

#execute store result score @s NSD.Health.1 run data get entity @s Health 1000000
execute as @e[type=!player] at @s run data modify entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"generic.attack_damage"}].Amount set value 0
execute at @s as @e[type=!player,type=!item,sort=random,limit=1] unless score @s NSD.Detection matches -2147483648.. run function necron.player:damage_taken/damage_taken_0/damage_taken_0
execute as @e[type=!player,type=!item] if score @s NSD.Detection matches 0 store result score @s NSD.Detection run scoreboard players add $NSD.Detection NSD.Detection 10
execute as @e[type=!player,type=!item] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.000001 run scoreboard players get @s NSD.Detection
attribute @s minecraft:generic.armor_toughness base set -2147483648
attribute @s minecraft:generic.armor base set -2147483648
execute at @s if score @s NSD.Damage.Taken matches 1.. run function necron.player:damage_taken/damage_taken_1

#execute at @s as @e[type=!player,type=!item] at @s if score @s NSD.Health.0 = @a[distance=..2.5,sort=random,limit=1] NSD.Health.0 run kill @s

execute store result score @s NSD.Health.0 run data get entity @s Health 1000000

execute at @s as @e if score @s NSD.Detection matches 999980..999990 run scoreboard players reset @e NSD.Detection

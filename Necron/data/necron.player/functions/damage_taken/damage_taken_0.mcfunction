#> necron.player:damage_taken/damage_taken_0
#
# 
#
# @within function necron.core:tick

#execute store result score @s NSD.Health.1 run data get entity @s Health 1000000
# Attirubuteが変わるときにやるようにしてほしいもの
attribute @s minecraft:generic.armor_toughness base set -2147483648
attribute @s minecraft:generic.armor base set -2147483648

# バグ処理
execute as @e[type=!player,type=!item] if score @s NSD.Detection matches 0 run function necron.player:damage_taken/damage_taken_0/bug_fix

#通常処理
execute as @e[type=!player,type=!skeleton] at @s run data modify entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"generic.attack_damage"}].Amount set value 0
execute at @s as @e[type=!player,type=!item,type=!armor_stand,type=!item_frame,type=!experience_orb,type=!villager,type=!skeleton,sort=random,limit=1] unless score @s NSD.Detection matches -2147483648.. run function necron.player:damage_taken/damage_taken_0/damage_taken_0
#判定君
execute at @s if score @s NSD.Damage.Taken matches 1.. run function necron.player:damage_taken/damage_taken_1
execute store result score @s NSD.Health.0 run data get entity @s Health 1000000

#バグ回避無限列車
execute as @e if score @s NSD.Detection matches 2147483640.. run scoreboard players reset * NSD.Detection

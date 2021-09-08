#> necron.player:attack/attack.0
#
# 
#
# @within function necron.core:tick

# Settings
attribute @s minecraft:generic.attack_damage base set 0.000001
attribute @s minecraft:generic.attack_speed base set 1000
execute as @e[type=!player,type=!item,type=!armor_stand,distance=..10] run attribute @s minecraft:generic.armor base set -2147483647
execute as @e[type=!player,type=!item,type=!armor_stand,distance=..10] run attribute @s minecraft:generic.armor_toughness base set -2147483647
execute as @e[type=!player,type=!item,type=!armor_stand,distance=..10] if data entity @s ArmorItems[{}].tag.Enchantments[{id:"minecraft:protection"}] run function necron.player:attack/immersive.citizens/delete_enchantments

# Citizens(Command) Detect at players attacked  
execute store result score @e[type=!player,distance=..7] NSD.Detection.2 run data get entity @s Health 1000000
execute store result score @e[type=!player,distance=..7] NSD.Detection.0 run data get entity @s Health 1
execute if score @s NSD.Dealt.0 matches 1.. run function necron.player:attack/immersive.citizens/attack.0

# Citizens for arrow
execute if data entity @s {SelectedItem:{id:"minecraft:bow",Count:1b,tag:{NsdWeapon:1b}}} if score @s NSD.Bow.Use matches 1.. run function necron.player:attack/immersive.citizens/attack.matches.4
execute as @e[type=!player] if data entity @s ActiveEffects[{Id:26b}] run function necron.player:attack/immersive.citizens/attack.citizen.arrow
execute if data entity @s {SelectedItem:{id:"minecraft:crossbow",Count:1b,tag:{NsdWeapon:1b}}} if score @s NSD.Crossbow.Use matches 1.. run function necron.player:attack/immersive.citizens/attack.matches.4
execute as @e[type=!player] if data entity @s ActiveEffects[{Id:26b}] run function necron.player:attack/immersive.citizens/attack.citizen.arrow

# Reset
scoreboard players reset @s NSD.Bow.Use
scoreboard players reset @s NSD.Crossbow.Use
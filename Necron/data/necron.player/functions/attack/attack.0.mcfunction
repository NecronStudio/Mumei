#> necron.player:attack/attack.0
#
# 
#
# @within function necron.core:tick

# Settings
attribute @s minecraft:generic.attack_damage base set 0.000001
attribute @s minecraft:generic.attack_speed base set 1000

# Citizens(Command) Detect at players attacked  
execute store result score @e[type=!player,distance=..5] NSD.Detection.2 run data get entity @s Health 1000000
execute store result score @e[type=!player,distance=..5] NSD.Detection.0 run data get entity @s Health 1
execute if score @s NSD.Dealt.0 matches 1.. run function necron.player:attack/immersive.citizens/attack.0

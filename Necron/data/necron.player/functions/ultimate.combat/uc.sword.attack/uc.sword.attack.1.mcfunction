#> necron.player:ultimate.combat/uc.sword.attack/uc.sword.attack.1
#
# 
#
# @within function necron.player:ultimate.combat/uc.sword.attack/uc.sword.attack.0

# Citizens for combo 3
particle crit ~ ~ ~ 1 1 1 1 10 normal
execute if score @s NSD.UC.Count.0 matches 3 as @e[type=!player,type=!item,type=!armor_stand,distance=..3] at @s run data modify entity @s Motion[1] set value 1d
playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 2 0.5
effect give @s jump_boost 2 3 true
particle sweep_attack ~ ~1.2 ~ 2 0.1 2 1 10 normal
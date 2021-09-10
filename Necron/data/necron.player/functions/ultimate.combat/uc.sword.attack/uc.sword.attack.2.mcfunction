#> necron.player:ultimate.combat/uc.sword.attack/uc.sword.attack.2
#
# 
#
# @within function necron.player:ultimate.combat/uc.sword.attack/uc.sword.attack.0

# Citizens for Deal damage against
function necron.player:attack/immersive.citizens/attack.4
playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 2 1
execute as @e[type=!player,type=!item,type=!armor_stand,distance=..3] at @s run function necron.player:attack/immersive.citizens/attack.2
execute as @e[type=!player,type=!item,type=!armor_stand,distance=..3] at @s run function necron.player:attack/immersive.citizens/attack.matches.3
execute as @e[type=!player,type=!item,type=!armor_stand,distance=..3] at @s run effect give @s wither 1 1 true
execute as @e[type=!player,type=!item,type=!armor_stand,distance=..3] at @s run data modify entity @s Motion[1] set value -3d
particle block redstone_block ~ ~1.2 ~ 2 0.1 2 1 10 normal
particle angry_villager ~ ~1 ~ 1 1 1 1 10 normal
particle flame ~ ~1 ~ 0.1 0.1 0.1 0.2 10 normal
playsound minecraft:entity.item.break player @s ~ ~ ~ 2 0.6
#> necron.player:ultimate.combat/uc.sword.attack/uc.sword.attack.2
#
# 
#
# @within function necron.player:ultimate.combat/uc.sword.attack/uc.sword.attack.0

# Citizens for Deal damage against
effect give @s minecraft:resistance 1 4 true
scoreboard players operation $NSD.ATK NSD.ATK = @s NSD.ATK
execute as @e[type=!player,type=!item,type=!armor_stand,distance=..3] at @s run function necron.player:attack/immersive.citizens/attack.2
execute as @e[type=!player,type=!item,type=!armor_stand,distance=..3] at @s run function necron.player:attack/immersive.citizens/attack.matches.3
execute as @e[type=!player,type=!item,type=!armor_stand,distance=..3] at @s run effect give @s wither 1 1 true
execute as @e[type=!player,type=!item,type=!armor_stand,distance=..3] at @s run summon lightning_bolt ~ ~ ~
execute as @e[type=!player,type=!item,type=!armor_stand,distance=..3] at @s run data modify entity @s Motion[1] set value -3d
particle block redstone_block ~ ~1.2 ~ 2 0.1 2 1 10 normal
particle angry_villager ~ ~1 ~ 1 1 1 1 10 normal
playsound minecraft:entity.item.break player @s ~ ~ ~ 2 0.6
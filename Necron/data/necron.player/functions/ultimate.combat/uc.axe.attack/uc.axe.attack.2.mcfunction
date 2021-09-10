#> necron.player:ultimate.combat/uc.axe.attack/uc.axe.attack.2
#
# 
#
# @within function necron.player:ultimate.combat/uc.axe.attack/uc.axe.attack.0

# Presss Down
function necron.player:attack/immersive.citizens/attack.4
execute as @e[type=!player,type=!item,distance=..3] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air destroy
execute as @e[type=!player,type=!item,distance=..3] run function necron.player:attack/immersive.citizens/attack.2
execute as @e[type=!player,type=!item,distance=..3] run function necron.player:attack/immersive.citizens/attack.matches.3
particle flame ~ ~1 ~ 1 1 1 0.1 10 force
particle angry_villager ~ ~1 ~ 1 1 1 0.1 10 force
playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 2 0.5
scoreboard players reset @s NSD.UC.Count.0
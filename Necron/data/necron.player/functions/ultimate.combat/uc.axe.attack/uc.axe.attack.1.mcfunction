#> necron.player:ultimate.combat/uc.axe.attack/uc.axe.attack.1
#
# 
#
# @within function necron.player:ultimate.combat/uc.axe.attack/uc.axe.attack.0

effect give @s speed 1 15 true
effect give @s jump_boost 1 1 true
execute positioned 0.00 0.00 0.00 run summon armor_stand ^ ^ ^2.5 {Tags:["NSD.UC.Axe.Knockback.0"],NoGravity:1b}
summon armor_stand ^ ^ ^2.5 {Tags:["NSD.UC.Axe.Knockback.1"],NoGravity:1b,Invisible:1b,Marker:1b}
execute anchored eyes run particle sweep_attack ^ ^ ^2 1 0.1 1 1 5 force 
execute at @e[tag=NSD.UC.Axe.Knockback.1,distance=..3,sort=nearest,limit=1] as @e[type=!player,type=!item,distance=..2] at @s run data modify entity @s Motion set from entity @e[tag=NSD.UC.Axe.Knockback.0,sort=nearest,limit=1]
execute as @e[type=!player,distance=..7] at @s if score @s NSD.Detection.0 matches 1..2 run data modify entity @s Motion set from entity @e[tag=NSD.UC.Axe.Knockback.0,sort=nearest,limit=1] Pos
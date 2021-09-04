#> necron.player:attack/immersive.citizens/attack.matches.4
#
# 
#
# @within function necron.player:attack/immersive.citizens/attack.0
# @within function necron.player:attack/attack.0
 #declare tag Immersive.Citizen.Arrow
execute as @e[type=arrow,distance=..2,sort=nearest,limit=1] run tag @s add Immersive.Citizen.Arrow
execute store result entity @e[type=arrow,tag=Immersive.Citizen.Arrow,distance=..2,sort=nearest,limit=1] CustomPotionEffects[{Id:26b}].Duration int 1 run data get entity @s SelectedItem.tag.NsdStatus.ATK

#> necron.player:damage_taken/damage_taken_0/bug_fix
#
# 
#
# @within function necron.player:damage_taken/damage_taken_0
#Re:Zero削除
execute store result score @s NSD.Detection run scoreboard players add $NSD.Detection NSD.Detection 10
execute store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.000001 run scoreboard players get @s NSD.Detection
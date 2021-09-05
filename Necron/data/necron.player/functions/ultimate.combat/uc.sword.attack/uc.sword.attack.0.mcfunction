#> necron.player:ultimate.combat/uc.sword.attack/uc.sword.attack.0
#
# 
#
# @within function necron.player:ultimate.combat/uc.sword

# Citizens for detecting at attacked
scoreboard players add @s NSD.UC.Count.0 1
execute if score @s NSD.UC.Count.0 matches 1 run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 2 1
execute if score @s NSD.UC.Count.0 matches 2 run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 2 0.8
execute if score @s NSD.UC.Count.0 matches 3 run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 2 0.6
execute if score @s NSD.UC.Count.0 matches 3 run effect give @s jump_boost 1 0 true
execute if score @s NSD.UC.Count.0 matches 4 if score @s NSD.UC.Jump.0 matches 1.. anchored eyes run particle angry_villager ^ ^ ^2 0.5 0.5 0.5 2 5 normal 
execute unless score @s NSD.UC.Count.0 matches 4 if score @s NSD.UC.Jump.0 matches 1.. run scoreboard players reset @s NSD.UC.Jump.0
scoreboard players reset @s NSD.UC.Time.0
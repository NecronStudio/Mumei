#> necron.player:ultimate.combat/uc.sword.attack/uc.sword.attack.0
#
# 
#
# @within function necron.player:ultimate.combat/uc.sword
 #declare tag NSD.UC.Sword.Motion.0

# Citizens for detecting at attacked
scoreboard players add @s NSD.UC.Count.0 1

# Citizens for Motion 3
execute if score @s NSD.UC.Count.0 matches 3 run function necron.player:ultimate.combat/uc.sword.attack/uc.sword.attack.1

# Citizens for Motion 4
execute if score @s NSD.UC.Count.0 matches 4 run function necron.player:ultimate.combat/uc.sword.attack/uc.sword.attack.2

scoreboard players reset @s NSD.UC.Time.0
#> necron.player:ultimate.combat/uc.axe.attack/uc.axe.attack.0
#
# 
#
# @within function necron.player:ultimate.combat/uc.axe
 #declare tag NSD.UC.Axe.Knockback.0
 #declare tag NSD.UC.Axe.Knockback.1
 #declare tag NSD.UC.Axe.Down.0
# Citizens for detecting at attacked
scoreboard players add @s NSD.UC.Count.0 1

# Citizens for knock back them far
execute if score @s NSD.UC.Count.0 matches 3 run function necron.player:ultimate.combat/uc.axe.attack/uc.axe.attack.1

# Citizens for Combo 4
execute if score @s NSD.UC.Count.0 matches 4 run function necron.player:ultimate.combat/uc.axe.attack/uc.axe.attack.2

# Citizen reset score
scoreboard players reset $NSD.ATK NSD.ATK
scoreboard players reset @s NSD.UC.Time.0
kill @e[tag=NSD.UC.Axe.Knockback.0]
kill @e[tag=NSD.UC.Axe.Knockback.1]
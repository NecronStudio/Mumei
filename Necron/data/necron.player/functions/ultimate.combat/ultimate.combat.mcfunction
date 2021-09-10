#> necron.player:ultimate.combat/ultimate.combat
#
# 
#
# @within function necron.core:tick

# Citizen for Ultimate Combat Sword 
execute if data entity @s {SelectedItem:{tag:{NSD:{Weapon:["sword"]}}}} run function necron.player:ultimate.combat/uc.sword

# Citizen for Ultimate Combat Axe
execute if data entity @s {SelectedItem:{tag:{NSD:{Weapon:["axe"]}}}} run function necron.player:ultimate.combat/uc.axe

# Scoreboard reset Citizen
scoreboard players reset @s NSD.UC.Dealt.0
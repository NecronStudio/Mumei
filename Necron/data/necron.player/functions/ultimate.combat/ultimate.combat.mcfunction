#> necron.player:ultimate.combat/ultimate.combat
#
# 
#
# @within function necron.core:tick

# Citizen for Ultimate Combat Sword 
execute if data entity @s {SelectedItem:{tag:{NSD:{Weapon:["sword"]}}}} run function necron.player:ultimate.combat/uc.sword

# Scoreboard reset Citizen
scoreboard players reset @s NSD.UC.Dealt.0
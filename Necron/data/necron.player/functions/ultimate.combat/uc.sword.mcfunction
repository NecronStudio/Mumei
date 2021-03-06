#> necron.player:ultimate.combat/uc.sword
#
# 
#
# @within necron.player:ultimate.combat/ultimate.combat

# Citizens for motion of sword
execute if data entity @s {SelectedItem:{tag:{NSD:{Weapon:["sword"]}}}} if score @s NSD.UC.Dealt.0 matches 1.. run function necron.player:ultimate.combat/uc.sword.attack/uc.sword.attack.0

# Citizens for work
execute unless score @s NSD.UC.Count.0 matches 4 if score @s NSD.UC.Jump.0 matches 1.. run scoreboard players reset @s NSD.UC.Jump.0
execute if score @s NSD.UC.Count.0 matches 1.. run scoreboard players add @s NSD.UC.Time.0 1
execute if score @s NSD.UC.Time.0 matches 20.. run scoreboard players reset @s NSD.UC.Count.0
execute if score @s NSD.UC.Time.0 matches 20.. run scoreboard players reset @s NSD.UC.Time.0
execute if score @s NSD.UC.Count.0 matches 5 run scoreboard players set @s NSD.UC.Count.0 1
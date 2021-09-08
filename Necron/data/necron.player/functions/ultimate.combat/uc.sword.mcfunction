#> necron.player:ultimate.combat/uc.sword
#
# 
#
# @within necron.player:ultimate.combat/ultimate.combat

# Citizens for motion of sword
execute if data entity @s {SelectedItem:{tag:{NSD:{Weapon:["sword"]}}}} if score @s NSD.UC.Dealt.0 matches 1.. run function necron.player:ultimate.combat/uc.sword.attack/uc.sword.attack.0

# Citizens for Movement
execute as @e[tag=NSD.UC.Sword.Motion.0] at @s store result entity @s Pose.RightArm[1] float 30 run scoreboard players add @s NSD.S 1
execute as @e[tag=NSD.UC.Sword.Motion.0] if score @s NSD.S matches 3.. run kill @s

# Citizens for work
execute unless score @s NSD.UC.Count.0 matches 4 if score @s NSD.UC.Jump.0 matches 1.. run scoreboard players reset @s NSD.UC.Jump.0
execute if score @s NSD.UC.Count.0 matches 1.. run scoreboard players add @s NSD.UC.Time.0 1
execute if score @s NSD.UC.Time.0 matches 20.. run scoreboard players reset @s NSD.UC.Count.0
execute if score @s NSD.UC.Time.0 matches 20.. run scoreboard players reset @s NSD.UC.Time.0
execute if score @s NSD.UC.Count.0 matches 5 run scoreboard players set @s NSD.UC.Count.0 1
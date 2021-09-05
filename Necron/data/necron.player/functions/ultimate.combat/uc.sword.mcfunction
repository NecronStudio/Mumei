#> necron.player:ultimate.combat/uc.sword
#
# 
#
# @within function necron.core:tick

# Citizens of Counting times of dealt damage
execute if score @s NSD.UC.Dealt.0 matches 1.. run function necron.player:ultimate.combat/uc.sword.attack/uc.sword.attack.0

# Citizens for work
execute if score @s NSD.UC.Count.0 matches 1.. run scoreboard players add @s NSD.UC.Time.0 1
execute if score @s NSD.UC.Time.0 matches 20.. run scoreboard players reset @s NSD.UC.Count.0
execute if score @s NSD.UC.Time.0 matches 20.. run scoreboard players reset @s NSD.UC.Time.0
execute if score @s NSD.UC.Count.0 matches 5 run scoreboard players reset @s NSD.UC.Count.0

# Citizens Score Reset
scoreboard players reset @s NSD.UC.Dealt.0
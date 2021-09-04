#> necron.player:attack/immersive.citizens/attack.0
#
# 
#
# @within function necron.player:attack/attack.0
 #declare tag MayBeDamaged
 #declare tag NSD.Damage
# Damage Dealer
summon armor_stand ~ ~ ~ {Tags:["NSD.Damage"],NoGravity:1b,Invisible:1b,Marker:1b}
execute store result score @e[type=armor_stand,tag=NSD.Damage,sort=nearest,limit=1] NSD.Dealt.0 run scoreboard players get @s NSD.ATK
tp @e[type=armor_stand,tag=NSD.Damage,distance=..1,sort=nearest,limit=1] ^ ^ ^3

# Calculate to detect who gave me a damage 
execute as @e[type=!player,distance=..7] at @s store result score @s NSD.Detection.1 run data get entity @s Health 1
execute as @e[type=!player,distance=..7] run scoreboard players operation @s NSD.Detection.0 -= @s NSD.Detection.1
execute as @e[type=!player,distance=..7] if score @s NSD.Detection.0 matches 1.. run tag @s add MayBeDamaged

# MayBeDamaged Citizens Open Gate
execute as @e[type=!player,tag=MayBeDamaged,distance=..7] run function necron.player:attack/immersive.citizens/attack.1

# Calculate Defense of enemy (Normal Citizens Commands)
execute as @e[type=!player,tag=MayBeDamaged,distance=..7] run function necron.player:attack/immersive.citizens/attack.2

# Detection of Glitches
#if you hate glitches delete # on left side of command of citizens below second
#execute as @e[type=!player,tag=MayBeDamaged,distance=..7] if score @s NSD.Detection.0 matches -2 run kill @s
#execute as @e[type=!player,tag=MayBeDamaged,distance=..7] if score @s NSD.Detection.0 matches -1 run kill @s

# Citizens matches to
# Citizen 1
execute as @e[type=!player,tag=MayBeDamaged,distance=..7] at @s if score @s NSD.Detection.0 matches 1 run function necron.player:attack/immersive.citizens/attack.matches.1
# Citizen 2
execute as @e[type=!player,tag=MayBeDamaged,distance=..7] at @s if score @s NSD.Detection.0 matches 2 run function necron.player:attack/immersive.citizens/attack.matches.1
# Citizen 3
execute as @e[type=!player,tag=MayBeDamaged,distance=..7] at @s if score @s NSD.Detection.0 matches 3 run function necron.player:attack/immersive.citizens/attack.matches.1
# Citizen 4 
execute as @e[type=!player] if score @s NSD.HP matches ..0 run kill @s

# Citizen 6
execute as @e[type=!player] if score @s NSD.HP matches ..0 run kill @s

# Reset Folder
scoreboard players reset $NSD.Enemy.HP.0 NSD.Temp
scoreboard players reset $NSD.Enemy.HP.1 NSD.Temp
scoreboard players reset $NSD.Enemy.DEF NSD.Temp

# Left
kill @e[type=armor_stand,tag=NSD.Damage]
tag @e[tag=MayBeDamaged] remove MayBeDamaged
scoreboard players reset @s NSD.Dealt.0
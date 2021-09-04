#> necron.player:weapon.throwing/weapon.throwing.0
#
# 
#
# @within function necron.core:tick
 #declare tag NSD.WT.0
 #declare tag NSD.WT.Pos
 #declare tag NSD.GotDamaged 

# Citizens for Throwing
execute if data entity @e[type=item,distance=..1.482,sort=nearest,limit=1] Thrower run summon armor_stand ~ ~ ~ {Tags:["NSD.WT.0"],ShowArms:1b,Pose:{RightArm:[-10f,0f,-90f]},Invisible:1b}
execute if data entity @e[type=item,distance=..1.482,sort=nearest,limit=1] Thrower positioned 0.00 0.00 0.00 run summon armor_stand ^ ^ ^2.5 {Tags:["NSD.WT.Pos"],NoGravity:1b}
tp @e[type=armor_stand,tag=NSD.WT.0,distance=..1,sort=nearest,limit=1] ^ ^ ^-0.01 facing entity @s
data modify entity @e[type=armor_stand,tag=NSD.WT.0,distance=..1.482,sort=nearest,limit=1] HandItems[0] set from entity @e[type=item,sort=nearest,limit=1] Item{}
data modify entity @e[type=armor_stand,tag=NSD.WT.0,distance=..1,sort=nearest,limit=1] Motion set from entity @e[type=armor_stand,tag=NSD.WT.Pos,sort=nearest,limit=1] Pos
execute as @e[type=item,distance=..1.482,sort=nearest,limit=1] at @s if data entity @s Thrower run kill @s
kill @e[tag=NSD.WT.Pos]

scoreboard players reset @s NSD.WT.Sneak
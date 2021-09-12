#> necron.player:necron.magic/magic.patterns/above.summon/above.summon
#
# 
#
# @public
 #declare tag NSD.Magic.Public.Above
summon armor_stand ~ ~ ~ {Tags:["NSD.Magic.Public.Above"],Invisible:1b,Marker:1b,NoGravity:1b}
spreadplayers ~ ~ 1 10 false @e[tag=NSD.Magic.Public.Above,distance=..1,sort=nearest,limit=1]
execute as @e[tag=NSD.Magic.Public.Above,sort=nearest,limit=1] at @s run tp @s ~ ~15 ~
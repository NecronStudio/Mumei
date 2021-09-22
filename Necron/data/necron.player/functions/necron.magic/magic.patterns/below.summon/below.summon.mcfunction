#> necron.player:necron.magic/magic.patterns/below.summon/below.summon
#
# 
#
# @public
 #declare tag NSD.Magic.Public.Below
summon armor_stand ~ ~ ~ {Tags:["NSD.Magic.Public.Below"],Invisible:1b,Marker:1b,NoGravity:1b}
spreadplayers ~ ~ 1 10 false @e[tag=NSD.Magic.Public.Below,distance=..1,sort=nearest,limit=1]
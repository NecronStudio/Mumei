#> necron.player:necron.magic/magics/lahab/move
#
# 
#
# @within function necron.player:necron.magic/magics/lahab/tick
# 動き
tp @s ^ ^ ^0.01
execute positioned 0.00 0.00 0.00 run summon armor_stand ^ ^ ^1 {Tags:["NSD.Magic.Public.Motion","NSD.Magic.Public"],NoGravity:1b}
data modify entity @s Motion set from entity @e[tag=NSD.Magic.Public.Motion,sort=nearest,limit=1] Pos

# パーティクル(素材)
particle flame ~ ~1 ~ 0.1 0.1 0.1 0.001 3 normal
particle lava ~ ~1 ~ 0.1 0.1 0.1 0.001 1 normal

# 効果
execute as @e[type=!player,type=!armor_stand,type=!item,distance=..1] at @s run function necron.player:necron.magic/calculators/calculate.damage.0

# キル
function necron.player:necron.magic/kill.public

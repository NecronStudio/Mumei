#> necron.player:necron.magic/magics/aljalid/move
#
# 
#
# @within function necron.player:necron.magic/magics/aljalid/tick

# 動き
tp @s ^ ^ ^1.75 facing entity @e[type=!player,type=!armor_stand,type=!item,type=!experience_orb,type=!arrow,sort=nearest,limit=1]

# パーティクル(素材)
function necron.player:necron.magic/magic.particles/ice_star

# 効果
execute as @e[type=!player,type=!armor_stand,type=!item,distance=..1,sort=nearest,limit=1] at @s run function necron.player:necron.magic/calculators/calculate.damage.0

# キル
function necron.player:necron.magic/kill.public

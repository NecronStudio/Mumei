#> necron.player:necron.magic/magics/sahmkhvif/move
#
# 
#
# @within function necron.player:necron.magic/magics/sahmkhvif/tick
# 動き
tp @s ^ ^ ^0.01
execute positioned 0.00 0.00 0.00 run summon armor_stand ^ ^ ^1 {Tags:["NSD.Magic.Public.Motion","NSD.Magic.Public"],NoGravity:1b}
data modify entity @s Motion set from entity @e[tag=NSD.Magic.Public.Motion,sort=nearest,limit=1] Pos

# パーティクル(素材)
scoreboard players add $SahmKhvif NSD.Magic.Time.0 1
execute if score $SahmKhvif NSD.Magic.Time.0 matches 3.. positioned ~ ~1 ~ run function necron.player:necron.magic/magic.particles/happy_villager_circle
execute if score $SahmKhvif NSD.Magic.Time.0 matches 3.. run scoreboard players reset $SahmKhvif NSD.Magic.Time.0
particle minecraft:light ~ ~1 ~ 0 0 0 0 1 normal

# 効果
execute as @e[type=!player,type=!armor_stand,type=!item,distance=..1] at @s run playsound minecraft:block.bubble_column.whirlpool_inside player @a[distance=..5] ~ ~ ~ 2 2
execute as @e[type=!player,type=!armor_stand,type=!item,distance=..1] at @s run function necron.player:necron.magic/calculators/calculate.damage.0

# キル
function necron.player:necron.magic/kill.public

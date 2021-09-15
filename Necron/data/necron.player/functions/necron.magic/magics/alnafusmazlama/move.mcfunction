#> necron.player:necron.magic/magics/alnafusmazlama/move
#
# 
#
# @within function necron.player:necron.magic/magics/alnafusmazlama/tick

# 乱数
scoreboard players set $NSD.Rand.Max NSD.Temp 359

# 動き
execute if score @s NSD.Magic.Time.0 matches 0..5 run function necron.core:random/
execute if score @s NSD.Magic.Time.0 matches 0..5 store result entity @s Rotation[0] float 1 run scoreboard players get $NSD.Rand.Value NSD.Temp
execute if score @s NSD.Magic.Time.0 matches 0..5 store result entity @s Rotation[1] float 1 run scoreboard players get $NSD.Rand.Value NSD.Temp
execute if score @s NSD.Magic.Time.0 matches 0..5 run tp @s ~ ~1 ~
execute if score @s NSD.Magic.Time.0 matches 0..5 run tp @s ^ ^ ^1
execute if score @s NSD.Magic.Time.0 matches 6..25 run tp @s ^ ^ ^1 facing entity @e[type=!player,tag=NSD.Entity,sort=nearest,limit=1]

# パーティクル(素材)
function necron.player:necron.magic/magic.particles/dark_soul

# 効果
execute as @e[type=!player,tag=NSD.Entity,distance=..1] at @s run function necron.player:necron.magic/calculators/calculate.damage.0

# キル
function necron.player:necron.magic/kill.public

# スコアリセット
scoreboard players reset $NSD.Rand.Value NSD.Temp
scoreboard players reset $NSD.Rand.Max NSD.Temp
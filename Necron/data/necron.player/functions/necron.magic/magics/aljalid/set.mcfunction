#> necron.player:necron.magic/magics/aljalid/set
#
# 
#
# @within function necron.player:necron.magic/magics/aljalid/tick

# アマスタの召喚
function necron.player:necron.magic/magic.patterns/above.summon/above.summon
summon armor_stand ~ ~ ~ {Tags:["NSD.Aljalid.Main","NSD.Magic.Public"],Invisible:1b,NoGravity:1b,Marker:1b}

# アマスタのパブリック設定
function necron.player:necron.magic/calculators/calculate.int

# アマスタ移動
execute as @e[tag=NSD.Aljalid.Main,distance=..0.01,sort=nearest,limit=1] at @s run tp @s @e[tag=NSD.Magic.Public.Above,sort=nearest,limit=1]

# パーティクル (アマスタ)
execute as @e[tag=NSD.Magic.Public.Above,sort=nearest,limit=1] at @s run function necron.player:necron.magic/magic.particles/water_magic_array
# 音
function necron.player:necron.magic/magic.sounds/ice_magic

# マナけしけし
scoreboard players remove @s NSD.MP 5

# 表示
function necron.core:2s.tick
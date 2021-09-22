#> necron.player:necron.magic/magics/alnafusmazlama/set
#
# 
#
# @within function necron.player:necron.magic/magics/alnafusmazlama/tick

# パーティクル (自分)
#execute rotated 0 0 run function necron.player:necron.magic/magic.particles/green_magic_array
#execute rotated 0 0 run function necron.player:necron.magic/magic.particles/black_magic_array
execute rotated 0 0 positioned ~ ~0.1 ~ run function necron.player:necron.magic/magic.particles/soul_fire_flame_magic_array

# アマスタの召喚
function necron.player:necron.magic/magic.patterns/below.summon/below.summon
summon armor_stand ~ ~ ~ {Tags:["NSD.Alnafusmazlama.Main","NSD.Magic.Public"],Invisible:1b,NoGravity:1b,Marker:1b}

# アマスタのパブリック設定
function necron.player:necron.magic/calculators/calculate.int

# アマスタ移動
execute as @e[tag=NSD.Alnafusmazlama.Main,distance=..0.01,sort=nearest,limit=1] at @s run tp @s @e[tag=NSD.Magic.Public.Below,sort=nearest,limit=1]

# パーティクル (アマスタ)
execute as @e[tag=NSD.Magic.Public.Below,sort=nearest,limit=1] at @s run function necron.player:necron.magic/magic.particles/witch_magic_array

# 音
function necron.player:necron.magic/magic.sounds/mob_revive

# マナけしけし
scoreboard players remove @s NSD.MP 10

# 表示
function necron.core:2s.tick
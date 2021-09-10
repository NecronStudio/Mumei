#> necron.player:necron.magic/lahab/set
#
# 
#
# @within function necron.player:necron.magic/lahab/tick

# アマスタの召喚
summon armor_stand ~ ~ ~ {Tags:["NSD.Lahab.Main","NSD.Magic.Public"],Invisible:1b,Small:1b}

# アマスタのパブリック設定
function necron.player:necron.magic/calculators/calculate.int

# 向いてる向き合わせ
tp @e[type=armor_stand,tag=NSD.Lahab.Main,distance=..0.01,sort=nearest,limit=1] ^ ^ ^-0.01 facing entity @s

# 1ブロック動き
tp @e[type=armor_stand,tag=NSD.Lahab.Main,distance=..0.01,sort=nearest,limit=1] ^ ^ ^1

# 音
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 2 1

# パーティクル

#execute positioned ^ ^1 ^0.7 run function necron.player:necron.magic/particles/end_rod_circle
#execute positioned ^ ^1 ^1.5 run function necron.player:necron.magic/particles/happy_villager_circle

# マナけしけし
scoreboard players remove @s NSD.MP 10

# 表示
function necron.core:2s.tick
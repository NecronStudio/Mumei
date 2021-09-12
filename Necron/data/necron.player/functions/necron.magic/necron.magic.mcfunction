#> necron.player:necron.magic/necron.magic
#
# 
#
# @within function necron.core:tick
 #declare tag NSD.Magic.Public (共通タグ 全部の魔法 アマスタ)
 #declare tag NSD.Magic.Public.Motion (共通タグ 全部の魔法 アマスタ)

# 火属性
# ラハブ (Lahab) 火属性最低位魔法
function necron.player:necron.magic/magics/lahab/tick

# 氷属性
# アルジェリッド (Aljalid) 氷属性最低位魔法
function necron.player:necron.magic/magics/aljalid/tick

# 光属性
# サムクヴィフ (Sahmkhvif) 光属性最低位魔法
function necron.player:necron.magic/magics/sahmkhvif/tick

# 闇属性
# アルナフスマズラマ (Alnafusmazlama) 闇属性最低位魔法
function necron.player:necron.magic/magics/alnafusmazlama/tick

# スコアリセット
execute if score @s NSD.Magic.Right matches 1.. run scoreboard players reset @s NSD.Magic.Right
execute unless entity @e[tag=NSD.Magic.Public] run scoreboard players reset * NSD.Magic.Time.0
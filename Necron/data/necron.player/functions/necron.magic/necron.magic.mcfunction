#> necron.player:necron.magic/necron.magic
#
# 
#
# @within function necron.core:tick
 #declare tag NSD.Magic.Public (共通タグ 全部の魔法 アマスタ)
 #declare tag NSD.Magic.Public.Motion (共通タグ 全部の魔法 アマスタ)
# ラハブ (Lahab) 火属性最低位魔法
function necron.player:necron.magic/lahab/tick

# スコアリセット
execute if score @s NSD.Magic.Right matches 1.. run scoreboard players reset @s NSD.Magic.Right
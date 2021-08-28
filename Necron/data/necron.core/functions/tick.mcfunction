#> necron.core:tick
#
# 常時実行
#
# @within tag/function minecraft:tick

# プレイヤーで常時実行
	execute as @a at @s run function necron.player:tick

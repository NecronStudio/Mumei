#> necron.player:tick
#
# プレイヤーで常時実行
#
# @within function necron.core:tick

# 初期化
	execute if entity @s[tag=!NSD.Player] run function necron.player:init

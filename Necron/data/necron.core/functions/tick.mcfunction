#> necron.core:tick
#
# 常時実行
#
# @within tag/function minecraft:tick

# Entityを初期化
	execute as @e[type=#necron.entity:living,type=!minecraft:player,tag=!NSD.Entity] run function necron.entity:init
# プレイヤーで常時実行
	execute as @a at @s run function necron.player:tick

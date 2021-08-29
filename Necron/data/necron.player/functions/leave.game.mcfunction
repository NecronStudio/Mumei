#> necron.player:leave.game
#
# ゲームから退出したら
#
# @within function necron.player:tick

# 防御力を無くす
	attribute @s minecraft:generic.armor base set -2147483648
# スコアをリセット
	scoreboard players reset @s NSD.LeaveGame

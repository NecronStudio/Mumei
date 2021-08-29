#> necron.player:weapon/offhand/mp/remove
#
# 最大魔力を減少
#
# @within function necron.player:weapon/offhand/
# @within function necron.player:weapon/offhand/reset

# 最大魔力を元に戻す
	scoreboard players operation @s NSD.MP.Max -= @s NSD.MP.Add.Off
# スコアをリセット
	scoreboard players reset @s NSD.MP.Add.Off
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

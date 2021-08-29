#> necron.player:inventory_changed/armor/head/mp/remove
#
# 最大魔力を減少
#
# @within function necron.player:inventory_changed/armor/head/
# @within function necron.player:inventory_changed/armor/head/reset

# 最大魔力を元に戻す
	scoreboard players operation @s NSD.MP.Max -= @s NSD.MP.Add.Head
# スコアをリセット
	scoreboard players reset @s NSD.MP.Add.Head
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

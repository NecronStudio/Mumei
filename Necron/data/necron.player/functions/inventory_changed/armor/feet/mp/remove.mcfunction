#> necron.player:inventory_changed/armor/feet/mp/remove
#
# 最大魔力を減少
#
# @within function necron.player:inventory_changed/armor/feet/
# @within function necron.player:inventory_changed/armor/feet/reset

# 最大魔力を元に戻す
	scoreboard players operation @s NSD.MP.Max -= @s NSD.MP.Add.Feet
# スコアをリセット
	scoreboard players reset @s NSD.MP.Add.Feet
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

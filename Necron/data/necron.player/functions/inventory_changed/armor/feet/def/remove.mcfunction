#> necron.player:inventory_changed/armor/feet/def/remove
#
# 防御力を減少
#
# @within function necron.player:inventory_changed/armor/feet/
# @within function necron.player:inventory_changed/armor/feet/reset

# 最大体力を元に戻す
	scoreboard players operation @s NSD.DEF -= @s NSD.DEF.Add.Feet
# スコアをリセット
	scoreboard players reset @s NSD.DEF.Add.Feet
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

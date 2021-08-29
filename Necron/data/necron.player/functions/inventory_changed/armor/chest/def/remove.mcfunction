#> necron.player:inventory_changed/armor/chest/def/remove
#
# 防御力を減少
#
# @within function necron.player:inventory_changed/armor/chest/
# @within function necron.player:inventory_changed/armor/chest/reset

# 最大体力を元に戻す
	scoreboard players operation @s NSD.DEF -= @s NSD.DEF.Add.Cest
# スコアをリセット
	scoreboard players reset @s NSD.DEF.Add.Cest
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

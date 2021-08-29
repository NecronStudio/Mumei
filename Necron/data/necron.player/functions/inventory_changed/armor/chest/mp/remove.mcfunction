#> necron.player:inventory_changed/armor/chest/mp/remove
#
# 最大魔力を減少
#
# @within function necron.player:inventory_changed/armor/chest/
# @within function necron.player:inventory_changed/armor/chest/reset

# 最大魔力を元に戻す
	scoreboard players operation @s NSD.MP.Max -= @s NSD.MP.Add.Chest
# スコアをリセット
	scoreboard players reset @s NSD.MP.Add.Chest
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

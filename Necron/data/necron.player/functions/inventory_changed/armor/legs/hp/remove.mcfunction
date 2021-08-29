#> necron.player:inventory_changed/armor/legs/hp/remove
#
# 最大体力を減少
#
# @within function necron.player:inventory_changed/armor/legs/
# @within function necron.player:inventory_changed/armor/legs/reset

# 最大体力を元に戻す
	scoreboard players operation @s NSD.HP.Max -= @s NSD.HP.Add.Legs
# スコアをリセット
	scoreboard players reset @s NSD.HP.Add.Legs
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

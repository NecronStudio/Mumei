#> necron.player:inventory_changed/armor/head/hp/remove
#
# 最大体力を減少
#
# @within function necron.player:inventory_changed/armor/head/
# @within function necron.player:inventory_changed/armor/head/reset

# 最大体力を元に戻す
	scoreboard players operation @s NSD.HP.Max -= @s NSD.HP.Add.Head
# スコアをリセット
	scoreboard players reset @s NSD.HP.Add.Head
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

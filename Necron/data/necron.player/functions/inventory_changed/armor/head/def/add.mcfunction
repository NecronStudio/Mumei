#> necron.player:inventory_changed/armor/head/def/add
#
# 防御力を追加
#
# @within function necron.player:inventory_changed/armor/head/

# 防御力を元に戻す
	execute if score @s NSD.DEF.Add.Head matches ..2147483647 run scoreboard players operation @s NSD.DEF -= @s NSD.DEF.Add.Head
# 防御力を追加
	scoreboard players operation @s NSD.DEF += $NSD.Amount NSD.Temp
	scoreboard players operation @s NSD.DEF.Add.Head = $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1
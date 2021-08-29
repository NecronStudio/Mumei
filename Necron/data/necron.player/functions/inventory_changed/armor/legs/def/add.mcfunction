#> necron.player:inventory_changed/armor/legs/def/add
#
# 防御力を追加
#
# @within function necron.player:inventory_changed/armor/legs/

# 防御力を元に戻す
	execute if score @s NSD.DEF.Add.Legs matches ..2147483647 run scoreboard players operation @s NSD.DEF -= @s NSD.DEF.Add.Legs
# 防御力を追加
	scoreboard players operation @s NSD.DEF += $NSD.Amount NSD.Temp
	scoreboard players operation @s NSD.DEF.Add.Legs = $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

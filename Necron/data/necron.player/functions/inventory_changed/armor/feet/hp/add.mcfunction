#> necron.player:inventory_changed/armor/feet/hp/add
#
# 最大体力を追加
#
# @within function necron.player:inventory_changed/armor/feet/

# 最大体力を元に戻す
	execute if score @s NSD.HP.Add.Feet matches ..2147483647 run scoreboard players operation @s NSD.HP.Max -= @s NSD.HP.Add.Feet
# 最大体力を追加
	scoreboard players operation @s NSD.HP.Max += $NSD.Amount NSD.Temp
	scoreboard players operation @s NSD.HP.Add.Feet = $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

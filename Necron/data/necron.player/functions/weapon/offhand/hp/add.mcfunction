#> necron.player:weapon/offhand/hp/add
#
# 最大体力を追加
#
# @within function necron.player:weapon/offhand/

# 最大体力を元に戻す
	execute if score @s NSD.HP.Add.Off matches ..2147483647 run scoreboard players operation @s NSD.HP.Max -= @s NSD.HP.Add.Off
# 最大体力を追加
	scoreboard players operation @s NSD.HP.Max += $NSD.Amount NSD.Temp
	scoreboard players operation @s NSD.HP.Add.Off = $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

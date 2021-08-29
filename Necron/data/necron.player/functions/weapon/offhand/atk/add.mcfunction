#> necron.player:weapon/offhand/atk/add
#
# 攻撃力を追加
#
# @within function necron.player:weapon/offhand/

# 攻撃力を元に戻す
	execute if score @s NSD.ATK.Add.Off matches ..2147483647 run scoreboard players operation @s NSD.ATK -= @s NSD.ATK.Add.Off
# 攻撃力を追加
	scoreboard players operation @s NSD.ATK += $NSD.Amount NSD.Temp
	scoreboard players operation @s NSD.ATK.Add.Off = $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

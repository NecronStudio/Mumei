#> necron.player:weapon/offhand/atk/remove
#
# 攻撃力を減少
#
# @within function necron.player:weapon/offhand/
# @within function necron.player:weapon/offhand/reset

# 最大体力を元に戻す
	scoreboard players operation @s NSD.ATK -= @s NSD.ATK.Add.Off
# スコアをリセット
	scoreboard players reset @s NSD.ATK.Add.Off
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

#> necron.player:weapon/mainhand/atk/remove
#
# 攻撃力を減少
#
# @within function necron.player:weapon/mainhand/
# @within function necron.player:weapon/mainhand/reset

# 最大体力を元に戻す
	scoreboard players operation @s NSD.ATK -= @s NSD.ATK.Add.Main
# スコアをリセット
	scoreboard players reset @s NSD.ATK.Add.Main
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

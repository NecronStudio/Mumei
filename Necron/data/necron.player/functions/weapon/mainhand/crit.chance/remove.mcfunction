#> necron.player:weapon/mainhand/crit.chance/remove
#
# クリティカル確率を減少
#
# @within function necron.player:weapon/mainhand/

# クリティカル確率を元に戻す
	scoreboard players operation @s NSD.Crit.Chance -= $NSD.Value NSD.Temp
# 追加クリティカル確率をリセット
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.CritChance
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

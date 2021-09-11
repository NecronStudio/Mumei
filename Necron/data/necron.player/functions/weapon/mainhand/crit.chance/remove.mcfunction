#> necron.player:weapon/mainhand/crit.chance/remove
#
# クリティカル確率を減少
#
# @within function necron.player:weapon/mainhand/

# クリティカル率を取得
	execute store result score @s NSD.Crit.Chance run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.CritChance
# クリティカル率を元に戻す
	execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.CritChance int 1 run scoreboard players operation @s NSD.Crit.Chance -= $NSD.Value NSD.Temp
# クリティカル率が100%より大きかったら
	execute if score @s NSD.Crit.Chance matches 101.. run scoreboard players set @s NSD.Crit.Chance 100
# 追加クリティカル率をリセット
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.CritChance
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

#> necron.player:inventory_changed/accessory/status/neck/crit.chance/add
#
# クリティカル率を追加
#
# @within function necron.player:inventory_changed/accessory/status/neck/

# クリティカル率を取得
	execute store result score @s NSD.Crit.Chance run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.CritChance
# クリティカル率を元に戻す
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Neck.CritChance run scoreboard players operation @s NSD.Crit.Chance -= $NSD.Value NSD.Temp
# クリティカル率に追加
	execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.CritChance int 1 run scoreboard players operation @s NSD.Crit.Chance += $NSD.Amount NSD.Temp
# クリティカル率が100%より大きかったら
	execute if score @s NSD.Crit.Chance matches 101.. run scoreboard players set @s NSD.Crit.Chance 100
# 追加クリティカル率を保存
	execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Neck.CritChance int 1 run scoreboard players get $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Put.On NSD.Temp matches 1 run scoreboard players set $NSD.Put.On NSD.Temp 1

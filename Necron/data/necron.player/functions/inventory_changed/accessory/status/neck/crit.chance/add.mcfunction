#> necron.player:inventory_changed/accessory/status/neck/crit.chance/add
#
# クリティカル確率を追加
#
# @within function necron.player:inventory_changed/accessory/status/neck/

# クリティカル確率を元に戻す
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Neck.CritChance run scoreboard players operation @s NSD.Crit.Chance -= $NSD.Value NSD.Temp
# クリティカル確率に追加
	scoreboard players operation @s NSD.Crit.Chance += $NSD.Amount NSD.Temp
# 追加クリティカル確率を保存
	execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Neck.CritChance int 1 run scoreboard players get $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Put.On NSD.Temp matches 1 run scoreboard players set $NSD.Put.On NSD.Temp 1

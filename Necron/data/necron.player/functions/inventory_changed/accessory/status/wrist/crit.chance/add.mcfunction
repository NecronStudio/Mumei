#> necron.player:inventory_changed/accessory/status/wrist/crit.chance/add
#
# クリティカル確率を追加
#
# @within function necron.player:inventory_changed/accessory/status/wrist/

# クリティカル確率を元に戻す
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.CritChance run scoreboard players operation @s NSD.Crit.Chance -= $NSD.Value NSD.Temp
# クリティカル確率に追加
	scoreboard players operation @s NSD.Crit.Chance += $NSD.Amount NSD.Temp
# 追加クリティカル確率を保存
	execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.CritChance int 1 run scoreboard players get $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

#> necron.player:inventory_changed/accessory/status/finger/def/add
#
# 防御力を追加
#
# @within function necron.player:inventory_changed/accessory/status/finger/

# 防御力を元に戻す
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.DEF run scoreboard players operation @s NSD.DEF -= $NSD.Value NSD.Temp
# 防御力に追加
	scoreboard players operation @s NSD.DEF += $NSD.Amount NSD.Temp
# 追加防御力を保存
	execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.DEF int 1 run scoreboard players get $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Put.On NSD.Temp matches 1 run scoreboard players set $NSD.Put.On NSD.Temp 1

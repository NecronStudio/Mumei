#> necron.player:inventory_changed/accessory/status/neck/hp.max/add
#
# 最大体力を追加
#
# @within function necron.player:inventory_changed/accessory/status/neck/

# 最大体力を元に戻す
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.HPMax run scoreboard players operation @s NSD.HP.Max -= $NSD.Value NSD.Temp
# 最大体力に追加
	scoreboard players operation @s NSD.HP.Max += $NSD.Amount NSD.Temp
# 追加最大体力を保存
	execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.HPMax int 1 run scoreboard players get $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Put.On NSD.Temp matches 1 run scoreboard players set $NSD.Put.On NSD.Temp 1

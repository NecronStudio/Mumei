#> necron.player:inventory_changed/accessory/status/wrist/mp.max/add
#
# 最大魔力を追加
#
# @within function necron.player:inventory_changed/accessory/status/wrist/

# 最大魔力を元に戻す
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.MPMax run scoreboard players operation @s NSD.MP.Max -= $NSD.Value NSD.Temp
# 最大魔力に追加
	scoreboard players operation @s NSD.MP.Max += $NSD.Amount NSD.Temp
# 追加最大魔力を保存
	execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.MPMax int 1 run scoreboard players get $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1
#> necron.player:inventory_changed/accessory/status/neck/mp.max/remove
#
# 最大魔力を減少
#
# @within function necron.player:inventory_changed/accessory/status/neck/

# 最大魔力を元に戻す
	scoreboard players operation @s NSD.MP.Max -= $NSD.Value NSD.Temp
# 追加最大魔力をリセット
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Neck.MPMax
# 変えたことを記録
	execute unless score $NSD.Took.Off NSD.Temp matches 1 run scoreboard players set $NSD.Took.Off NSD.Temp 1

#> necron.player:inventory_changed/accessory/status/wrist/hp.max/remove
#
# 最大体力を減少
#
# @within function necron.player:inventory_changed/accessory/status/wrist/

# 最大体力を元に戻す
	scoreboard players operation @s NSD.HP.Max -= $NSD.Value NSD.Temp
# 追加最大体力をリセット
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.HPMax
# 変えたことを記録
	execute unless score $NSD.Took.Off NSD.Temp matches 1 run scoreboard players set $NSD.Took.Off NSD.Temp 1

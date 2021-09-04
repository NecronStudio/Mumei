#> necron.player:inventory_changed/accessory/status/necklace/mp_rcvr_per/remove
#
# 魔力回復割合を減少
#
# @within function necron.player:inventory_changed/accessory/status/necklace/
# @within function necron.player:inventory_changed/accessory/status/necklace/reset

# 魔力回復割合を元に戻す
	scoreboard players operation @s NSD.MP.Rcvr.Per -= $NSD.Value NSD.Temp
# 追加魔力回復割合をリセット
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.MPRcvrPer
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

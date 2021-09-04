#> necron.player:inventory_changed/accessory/status/ring/hp_rcvr_per/remove
#
# 体力回復割合を減少
#
# @within function necron.player:inventory_changed/accessory/status/ring/
# @within function necron.player:inventory_changed/accessory/status/ring/reset

# 体力回復割合を元に戻す
	scoreboard players operation @s NSD.HP.Rcvr.Per -= $NSD.Value NSD.Temp
# 追加体力回復割合をリセット
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.HPRcvrPer
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

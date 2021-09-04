#> necron.player:inventory_changed/accessory/status/ring/mp_rcvr_per/add
#
# 魔力回復割合を追加
#
# @within function necron.player:inventory_changed/accessory/status/ring/

# 魔力回復割合を元に戻す
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.MPRcvrPer run scoreboard players operation @s NSD.MP.Rcvr.Per -= $NSD.Value NSD.Temp
# 魔力回復割合に追加
	scoreboard players operation @s NSD.MP.Rcvr.Per += $NSD.Amount NSD.Temp
# 追加魔力回復割合を保存
	execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.MPRcvrPer int 1 run scoreboard players get $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1
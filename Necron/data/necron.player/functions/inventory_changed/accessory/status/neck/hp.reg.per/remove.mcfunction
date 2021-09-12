#> necron.player:inventory_changed/accessory/status/neck/hp.reg.per/remove
#
# 体力回復割合を減少
#
# @within function necron.player:inventory_changed/accessory/status/neck/

# 体力回復割合を元に戻す
	scoreboard players operation @s NSD.HP.Reg.Per -= $NSD.Value NSD.Temp
# 追加体力回復割合をリセット
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Neck.HPRegPer
# 変えたことを記録
	execute unless score $NSD.Took.Off NSD.Temp matches 1 run scoreboard players set $NSD.Took.Off NSD.Temp 1

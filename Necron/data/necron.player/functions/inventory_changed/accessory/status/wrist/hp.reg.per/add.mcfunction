#> necron.player:inventory_changed/accessory/status/wrist/hp.reg.per/add
#
# 体力回復割合を追加
#
# @within function necron.player:inventory_changed/accessory/status/wrist/

# 体力回復割合を元に戻す
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Wrist.HPRegPer run scoreboard players operation @s NSD.HP.Reg.Per -= $NSD.Value NSD.Temp
# 体力回復割合に追加
	scoreboard players operation @s NSD.HP.Reg.Per += $NSD.Amount NSD.Temp
# 追加体力回復割合を保存
	execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Wrist.HPRegPer int 1 run scoreboard players get $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Put.On NSD.Temp matches 1 run scoreboard players set $NSD.Put.On NSD.Temp 1

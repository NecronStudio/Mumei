#> necron.player:inventory_changed/accessory/status/neck/crit.damage/remove
#
# クリティカルダメージを減少
#
# @within function necron.player:inventory_changed/accessory/status/neck/

# クリティカルダメージを元に戻す
	scoreboard players operation @s NSD.Crit.Damage -= $NSD.Value NSD.Temp
# 追加クリティカルダメージをリセット
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Neck.CritDamage
# 変えたことを記録
	execute unless score $NSD.Took.Off NSD.Temp matches 1 run scoreboard players set $NSD.Took.Off NSD.Temp 1

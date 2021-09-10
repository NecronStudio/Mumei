#> necron.player:inventory_changed/accessory/status/neck/atk/remove
#
# 攻撃力を減少
#
# @within function necron.player:inventory_changed/accessory/status/neck/

# 攻撃力を元に戻す
	scoreboard players operation @s NSD.ATK -= $NSD.Value NSD.Temp
# 追加攻撃力をリセット
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Neck.ATK
# 変えたことを記録
	execute unless score $NSD.Took.Off NSD.Temp matches 1 run scoreboard players set $NSD.Took.Off NSD.Temp 1

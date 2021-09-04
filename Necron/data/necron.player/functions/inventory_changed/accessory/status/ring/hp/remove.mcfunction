#> necron.player:inventory_changed/accessory/status/ring/hp/remove
#
# 最大体力を減少
#
# @within function necron.player:inventory_changed/accessory/status/ring/
# @within function necron.player:inventory_changed/accessory/status/ring/reset

# 最大体力を元に戻す
	scoreboard players operation @s NSD.HP.Max -= $NSD.Value NSD.Temp
# 追加最大体力をリセット
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.HP
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1
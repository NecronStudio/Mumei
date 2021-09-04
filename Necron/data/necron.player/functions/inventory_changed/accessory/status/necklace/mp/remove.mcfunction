#> necron.player:inventory_changed/accessory/status/necklace/mp/remove
#
# 最大魔力を減少
#
# @within function necron.player:inventory_changed/accessory/status/necklace/
# @within function necron.player:inventory_changed/accessory/status/necklace/reset

# 最大魔力を元に戻す
	scoreboard players operation @s NSD.MP.Max -= $NSD.Value NSD.Temp
# 追加最大魔力をリセット
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.MP
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

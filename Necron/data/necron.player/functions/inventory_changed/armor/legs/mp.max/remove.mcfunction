#> necron.player:inventory_changed/armor/legs/mp.max/remove
#
# 最大魔力を減少
#
# @within function necron.player:inventory_changed/armor/legs/

# 最大魔力を元に戻す
	scoreboard players operation @s NSD.MP.Max -= $NSD.Value NSD.Temp
# 追加最大魔力をリセット
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.MPMax
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

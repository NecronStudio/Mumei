#> necron.player:inventory_changed/armor/legs/def/remove
#
# 防御力を減少
#
# @within function necron.player:inventory_changed/armor/legs/

# 防御力を元に戻す
	scoreboard players operation @s NSD.DEF -= $NSD.Value NSD.Temp
# 追加防御力をリセット
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.DEF
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

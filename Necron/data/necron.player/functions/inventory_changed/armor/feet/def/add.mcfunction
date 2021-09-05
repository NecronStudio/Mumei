#> necron.player:inventory_changed/armor/feet/def/add
#
# 防御力を追加
#
# @within function necron.player:inventory_changed/armor/feet/

# 防御力を元に戻す
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Feet.DEF run scoreboard players operation @s NSD.DEF -= $NSD.Value NSD.Temp
# 防御力に追加
	scoreboard players operation @s NSD.DEF += $NSD.Amount NSD.Temp
# 追加防御力を保存
	execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Feet.DEF int 1 run scoreboard players get $NSD.Amount NSD.Temp
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

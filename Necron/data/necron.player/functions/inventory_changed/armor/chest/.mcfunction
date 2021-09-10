#> necron.player:inventory_changed/armor/chest/
#
# 胸当に装備をしていたら
#
# @within function necron.player:inventory_changed/

# 最大体力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Chest.HPMax store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Chest.HPMax
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Chest.HPMax unless data storage necron: Items[{Slot:102b}].tag.NSD.Status.HPMax run function necron.player:inventory_changed/armor/chest/hp.max/remove
	# 値を取得
	execute if data storage necron: Items[{Slot:102b}].tag.NSD.Status.HPMax store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:102b}].tag.NSD.Status.HPMax
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items[{Slot:102b}].tag.NSD.Status.HPMax unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/chest/hp.max/add
# 最大魔力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Chest.MPMax store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Chest.MPMax
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Chest.MPMax unless data storage necron: Items[{Slot:102b}].tag.NSD.Status.MPMax run function necron.player:inventory_changed/armor/chest/mp.max/remove
	# 値を取得
	execute if data storage necron: Items[{Slot:102b}].tag.NSD.Status.MPMax store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:102b}].tag.NSD.Status.MPMax
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items[{Slot:102b}].tag.NSD.Status.MPMax unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/chest/mp.max/add
# 防御力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Chest.DEF store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Chest.DEF
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Chest.DEF unless data storage necron: Items[{Slot:102b}].tag.NSD.Status.DEF run function necron.player:inventory_changed/armor/chest/def/remove
	# 値を取得
	execute if data storage necron: Items[{Slot:102b}].tag.NSD.Status.DEF store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:102b}].tag.NSD.Status.DEF
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items[{Slot:102b}].tag.NSD.Status.DEF unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/chest/def/add
# スコアを持っているとバグるので、スコアをリセット
	execute if score $NSD.Value NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Value

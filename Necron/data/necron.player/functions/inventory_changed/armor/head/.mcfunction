#> necron.player:inventory_changed/armor/head/
#
# 頭に装備をしていたら
#
# @within function necron.player:inventory_changed/

# 最大体力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.HPMax store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.HPMax
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.HPMax unless data storage necron: Items[{Slot:103b}].tag.NSD.Status.HPMax run function necron.player:inventory_changed/armor/head/hp.max/remove
	# 値を取得
	execute if data storage necron: Items[{Slot:103b}].tag.NSD.Status.HPMax store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:103b}].tag.NSD.Status.HPMax
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items[{Slot:103b}].tag.NSD.Status.HPMax unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/head/hp.max/add
# 最大魔力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.MPMax store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.MPMax
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.MPMax unless data storage necron: Items[{Slot:103b}].tag.NSD.Status.MPMax run function necron.player:inventory_changed/armor/head/mp.max/remove
	# 値を取得
	execute if data storage necron: Items[{Slot:103b}].tag.NSD.Status.MPMax store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:103b}].tag.NSD.Status.MPMax
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items[{Slot:103b}].tag.NSD.Status.MPMax unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/head/mp.max/add
# 防御力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.DEF store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.DEF
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.DEF unless data storage necron: Items[{Slot:103b}].tag.NSD.Status.DEF run function necron.player:inventory_changed/armor/head/def/remove
	# 値を取得
	execute if data storage necron: Items[{Slot:103b}].tag.NSD.Status.DEF store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:103b}].tag.NSD.Status.DEF
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items[{Slot:103b}].tag.NSD.Status.DEF unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/head/def/add
# スコアを持っているとバグるので、スコアをリセット
	execute if score $NSD.Value NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Value

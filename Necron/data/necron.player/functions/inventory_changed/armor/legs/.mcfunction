#> necron.player:inventory_changed/armor/legs/
#
# 脚に装備をしていたら
#
# @within function necron.player:inventory_changed/

# 最大体力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.HPMax store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.HPMax
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.HPMax unless data storage necron: Items[{Slot:101b}].tag.NSD.Status.HPMax run function necron.player:inventory_changed/armor/legs/hp.max/remove
	# 値を取得
	execute if data storage necron: Items[{Slot:101b}].tag.NSD.Status.HPMax store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:101b}].tag.NSD.Status.HPMax
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items[{Slot:101b}].tag.NSD.Status.HPMax unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/legs/hp.max/add
# 最大魔力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.MPMax store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.MPMax
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.MPMax unless data storage necron: Items[{Slot:101b}].tag.NSD.Status.MPMax run function necron.player:inventory_changed/armor/legs/mp.max/remove
	# 値を取得
	execute if data storage necron: Items[{Slot:101b}].tag.NSD.Status.MPMax store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:101b}].tag.NSD.Status.MPMax
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items[{Slot:101b}].tag.NSD.Status.MPMax unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/legs/mp.max/add
# 防御力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.DEF store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.DEF
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.DEF unless data storage necron: Items[{Slot:101b}].tag.NSD.Status.DEF run function necron.player:inventory_changed/armor/legs/def/remove
	# 値を取得
	execute if data storage necron: Items[{Slot:101b}].tag.NSD.Status.DEF store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:101b}].tag.NSD.Status.DEF
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items[{Slot:101b}].tag.NSD.Status.DEF unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/legs/def/add
# 一時使用ScoreHolderをリセット
	execute if score $NSD.Value NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Value

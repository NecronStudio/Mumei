#> necron.player:inventory_changed/armor/legs/
#
# 脚に装備をしていたら
#
# @within function necron.player:inventory_changed/

# 最大体力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.HP store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.HP
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.HP unless data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.HP run function necron.player:inventory_changed/armor/legs/hp/remove
	# 値を取得
	execute if data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.HP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.HP
	# 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.HP unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/legs/hp/add
# 最大魔力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.MP store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.MP
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.MP unless data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.MP run function necron.player:inventory_changed/armor/legs/mp/remove
	# 値を取得
	execute if data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.MP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.MP
	# 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.MP unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/legs/mp/add
# 防御力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.DEF store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.DEF
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs.DEF unless data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.DEF run function necron.player:inventory_changed/armor/legs/def/remove
	# 値を取得
	execute if data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.DEF store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.DEF
	# 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.DEF unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/legs/def/add
# 一時使用ScoreHolderをリセット
	execute if score $NSD.Value NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Value

#> necron.player:inventory_changed/armor/head/
#
# 頭に装備をしていたら
#
# @within function necron.player:inventory_changed/

# 最大体力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.HP store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.HP
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.HP unless data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.HP run function necron.player:inventory_changed/armor/head/hp/remove
	# 値を取得
	execute if data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.HP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.HP
	# 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.HP unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/head/hp/add
# 最大魔力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.MP store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.MP
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.MP unless data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.MP run function necron.player:inventory_changed/armor/head/mp/remove
	# 値を取得
	execute if data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.MP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.MP
	# 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.MP unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/head/mp/add
# 防御力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.DEF store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.DEF
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.DEF unless data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.DEF run function necron.player:inventory_changed/armor/head/def/remove
	# 値を取得
	execute if data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.DEF store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.DEF
	# 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.DEF unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/head/def/add
# 一時使用ScoreHolderをリセット
	execute if score $NSD.Value NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Value

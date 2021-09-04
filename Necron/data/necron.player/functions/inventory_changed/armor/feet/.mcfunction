#> necron.player:inventory_changed/armor/feet/
#
# 足に装備をしていたら
#
# @within function necron.player:inventory_changed/

# 最大体力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Feet.HP store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Feet.HP
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Feet.HP unless data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.HP run function necron.player:inventory_changed/armor/feet/hp/remove
	# 値を取得
	execute if data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.HP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.HP
	# 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.HP unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/feet/hp/add
# 最大魔力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Feet.MP store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Feet.MP
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Feet.MP unless data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.MP run function necron.player:inventory_changed/armor/feet/mp/remove
	# 値を取得
	execute if data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.MP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.MP
	# 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.MP unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/feet/mp/add
# 防御力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Feet.DEF store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Feet.DEF
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Feet.DEF unless data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.DEF run function necron.player:inventory_changed/armor/feet/def/remove
	# 値を取得
	execute if data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.DEF store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.DEF
	# 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.DEF unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/feet/def/add
# 一時使用ScoreHolderをリセット
	execute if score $NSD.Value NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Value

#> necron.player:inventory_changed/accessory/status/ring/
#
# リングを付けていたら
#
# @within function necron.player:inventory_changed/

# 最大体力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.HP store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.HP
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.HP unless data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.HP run function necron.player:inventory_changed/accessory/status/ring/hp/remove
	# 値を取得
		execute if data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.HP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.HP
	# 前に持っていた値より大きかったら
		execute if data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.HP unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/ring/hp/add
# 体力回復割合
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.HPRcvrPer store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.HPRcvrPer
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.HPRcvrPer unless data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.HPRcvrPer run function necron.player:inventory_changed/accessory/status/ring/hp_rcvr_per/remove
	# 値を取得
		execute if data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.HPRcvrPer store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.HPRcvrPer
	# 前に持っていた値より大きかったら
		execute if data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.HPRcvrPer unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/ring/hp_rcvr_per/add
# 最大魔力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.MP store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.MP
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.MP unless data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.MP run function necron.player:inventory_changed/accessory/status/ring/mp/remove
	# 値を取得
		execute if data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.MP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.MP
	# 前に持っていた値より大きかったら
		execute if data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.MP unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/ring/mp/add
# 魔力回復割合
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.MPRcvrPer store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.MPRcvrPer
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.MPRcvrPer unless data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.MPRcvrPer run function necron.player:inventory_changed/accessory/status/ring/mp_rcvr_per/remove
	# 値を取得
		execute if data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.MPRcvrPer store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.MPRcvrPer
	# 前に持っていた値より大きかったら
		execute if data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.MPRcvrPer unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/ring/mp_rcvr_per/add
# 防御力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.DEF store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.DEF
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.DEF unless data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.DEF run function necron.player:inventory_changed/accessory/status/ring/def/remove
	# 値を取得
		execute if data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.DEF store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.DEF
	# 前に持っていた値より大きかったら
		execute if data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.DEF unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/ring/def/add
# 攻撃力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.ATK store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.ATK
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring.ATK unless data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.ATK run function necron.player:inventory_changed/accessory/status/ring/atk/remove
	# 値を取得
		execute if data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.ATK store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.ATK
	# 前に持っていた値より大きかったら
		execute if data storage necron: ItemsCopy[{Slot:11b}].tag.NsdStatus.ATK unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/ring/atk/add
# 一時使用ScoreHolderをリセット
	execute if score $NSD.Value NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Value

#> necron.player:inventory_changed/accessory/status/necklace/
#
# ネックレスを付けていたら
#
# @within function necron.player:inventory_changed/

# 最大体力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.HP store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.HP
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.HP unless data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.HP run function necron.player:inventory_changed/accessory/status/necklace/hp/remove
	# 値を取得
		execute if data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.HP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.HP
	# 前に持っていた値より大きかったら
		execute if data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.HP unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/necklace/hp/add
# 体力回復割合
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.HPRcvrPer store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.HPRcvrPer
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.HPRcvrPer unless data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.HPRcvrPer run function necron.player:inventory_changed/accessory/status/necklace/hp_rcvr_per/remove
	# 値を取得
		execute if data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.HPRcvrPer store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.HPRcvrPer
	# 前に持っていた値より大きかったら
		execute if data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.HPRcvrPer unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/necklace/hp_rcvr_per/add
# 最大魔力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.MP store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.MP
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.MP unless data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.MP run function necron.player:inventory_changed/accessory/status/necklace/mp/remove
	# 値を取得
		execute if data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.MP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.MP
	# 前に持っていた値より大きかったら
		execute if data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.MP unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/necklace/mp/add
# 魔力回復割合
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.MPRcvrPer store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.MPRcvrPer
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.MPRcvrPer unless data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.MPRcvrPer run function necron.player:inventory_changed/accessory/status/necklace/mp_rcvr_per/remove
	# 値を取得
		execute if data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.MPRcvrPer store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.MPRcvrPer
	# 前に持っていた値より大きかったら
		execute if data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.MPRcvrPer unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/necklace/mp_rcvr_per/add
# 防御力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.DEF store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.DEF
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.DEF unless data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.DEF run function necron.player:inventory_changed/accessory/status/necklace/def/remove
	# 値を取得
		execute if data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.DEF store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.DEF
	# 前に持っていた値より大きかったら
		execute if data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.DEF unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/necklace/def/add
# 攻撃力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.ATK store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.ATK
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.ATK unless data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.ATK run function necron.player:inventory_changed/accessory/status/necklace/atk/remove
	# 値を取得
		execute if data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.ATK store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.ATK
	# 前に持っていた値より大きかったら
		execute if data storage necron: ItemsCopy[{Slot:9b}].tag.NsdStatus.ATK unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/necklace/atk/add
# 一時使用ScoreHolderをリセット
	execute if score $NSD.Value NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Value

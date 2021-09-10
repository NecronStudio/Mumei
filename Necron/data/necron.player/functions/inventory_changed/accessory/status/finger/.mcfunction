#> necron.player:inventory_changed/accessory/status/finger/
#
# リングを付けていたら
#
# @within function necron.player:inventory_changed/

# 最大体力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.HPMax store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.HPMax
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.HPMax unless data storage necron: Items[{Slot:11b}].tag.NSD.Status.HPMax run function necron.player:inventory_changed/accessory/status/finger/hp.max/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:11b}].tag.NSD.Status.HPMax store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:11b}].tag.NSD.Status.HPMax
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:11b}].tag.NSD.Status.HPMax unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/finger/hp.max/add
# 体力回復割合
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.HPRcvrPer store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.HPRcvrPer
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.HPRcvrPer unless data storage necron: Items[{Slot:11b}].tag.NSD.Status.HPRcvrPer run function necron.player:inventory_changed/accessory/status/finger/hp.rcvr.per/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:11b}].tag.NSD.Status.HPRcvrPer store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:11b}].tag.NSD.Status.HPRcvrPer
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:11b}].tag.NSD.Status.HPRcvrPer unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/finger/hp.rcvr.per/add
# 最大魔力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.MPMax store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.MPMax
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.MPMax unless data storage necron: Items[{Slot:11b}].tag.NSD.Status.MPMax run function necron.player:inventory_changed/accessory/status/finger/mp.max/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:11b}].tag.NSD.Status.MPMax store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:11b}].tag.NSD.Status.MPMax
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:11b}].tag.NSD.Status.MPMax unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/finger/mp.max/add
# 魔力回復割合
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.MPRcvrPer store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.MPRcvrPer
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.MPRcvrPer unless data storage necron: Items[{Slot:11b}].tag.NSD.Status.MPRcvrPer run function necron.player:inventory_changed/accessory/status/finger/mp.rcvr.per/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:11b}].tag.NSD.Status.MPRcvrPer store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:11b}].tag.NSD.Status.MPRcvrPer
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:11b}].tag.NSD.Status.MPRcvrPer unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/finger/mp.rcvr.per/add
# 防御力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.DEF store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.DEF
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.DEF unless data storage necron: Items[{Slot:11b}].tag.NSD.Status.DEF run function necron.player:inventory_changed/accessory/status/finger/def/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:11b}].tag.NSD.Status.DEF store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:11b}].tag.NSD.Status.DEF
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:11b}].tag.NSD.Status.DEF unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/finger/def/add
# 攻撃力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.ATK store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.ATK
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.ATK unless data storage necron: Items[{Slot:11b}].tag.NSD.Status.ATK run function necron.player:inventory_changed/accessory/status/finger/atk/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:11b}].tag.NSD.Status.ATK store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:11b}].tag.NSD.Status.ATK
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:11b}].tag.NSD.Status.ATK unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/finger/atk/add
# クリティカル確率
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.CritChance store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.CritChance
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.CritChance unless data storage necron: Items[{Slot:11b}].tag.NSD.Status.CritChance run function necron.player:inventory_changed/accessory/status/finger/crit.chance/remove
	# 値を取得
	execute if data storage necron: Items[{Slot:11b}].tag.NSD.Status.CritChance store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:11b}].tag.NSD.Status.CritChance
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items[{Slot:11b}].tag.NSD.Status.CritChance unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/finger/crit.chance/add
# クリティカル確率
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.CritDamage store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.CritDamage
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Finger.CritDamage unless data storage necron: Items[{Slot:11b}].tag.NSD.Status.CritDamage run function necron.player:inventory_changed/accessory/status/finger/crit.damage/remove
	# 値を取得
	execute if data storage necron: Items[{Slot:11b}].tag.NSD.Status.CritDamage store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:11b}].tag.NSD.Status.CritDamage
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items[{Slot:11b}].tag.NSD.Status.CritDamage unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/finger/crit.damage/add
# スコアを持っているとバグるので、スコアをリセット
	execute if score $NSD.Value NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Value

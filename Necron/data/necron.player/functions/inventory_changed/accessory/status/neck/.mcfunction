#> necron.player:inventory_changed/accessory/status/neck/
#
# ネックレスを付けていたら
#
# @within function necron.player:inventory_changed/

# 最大体力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.HPMax store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.HPMax
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.HPMax unless data storage necron: Items[{Slot:9b}].tag.NSD.Status.HPMax run function necron.player:inventory_changed/accessory/status/neck/hp.max/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:9b}].tag.NSD.Status.HPMax store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:9b}].tag.NSD.Status.HPMax
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:9b}].tag.NSD.Status.HPMax unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/neck/hp.max/add
# 体力回復割合
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.HPRcvrPer store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.HPRcvrPer
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.HPRcvrPer unless data storage necron: Items[{Slot:9b}].tag.NSD.Status.HPRcvrPer run function necron.player:inventory_changed/accessory/status/neck/hp.rcvr.per/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:9b}].tag.NSD.Status.HPRcvrPer store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:9b}].tag.NSD.Status.HPRcvrPer
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:9b}].tag.NSD.Status.HPRcvrPer unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/neck/hp.rcvr.per/add
# 最大魔力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.MPMax store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.MPMax
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.MPMax unless data storage necron: Items[{Slot:9b}].tag.NSD.Status.MPMax run function necron.player:inventory_changed/accessory/status/neck/mp.max/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:9b}].tag.NSD.Status.MPMax store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:9b}].tag.NSD.Status.MPMax
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:9b}].tag.NSD.Status.MPMax unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/neck/mp.max/add
# 魔力回復割合
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.MPRcvrPer store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.MPRcvrPer
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.MPRcvrPer unless data storage necron: Items[{Slot:9b}].tag.NSD.Status.MPRcvrPer run function necron.player:inventory_changed/accessory/status/neck/mp.rcvr.per/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:9b}].tag.NSD.Status.MPRcvrPer store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:9b}].tag.NSD.Status.MPRcvrPer
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:9b}].tag.NSD.Status.MPRcvrPer unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/neck/mp.rcvr.per/add
# 防御力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.DEF store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.DEF
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.DEF unless data storage necron: Items[{Slot:9b}].tag.NSD.Status.DEF run function necron.player:inventory_changed/accessory/status/neck/def/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:9b}].tag.NSD.Status.DEF store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:9b}].tag.NSD.Status.DEF
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:9b}].tag.NSD.Status.DEF unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/neck/def/add
# 攻撃力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.ATK store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.ATK
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.ATK unless data storage necron: Items[{Slot:9b}].tag.NSD.Status.ATK run function necron.player:inventory_changed/accessory/status/neck/atk/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:9b}].tag.NSD.Status.ATK store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:9b}].tag.NSD.Status.ATK
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:9b}].tag.NSD.Status.ATK unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/neck/atk/add
# クリティカル確率
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.CritChance store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.CritChance
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.CritChance unless data storage necron: Items[{Slot:9b}].tag.NSD.Status.CritChance run function necron.player:inventory_changed/accessory/status/neck/crit.chance/remove
	# 値を取得
	execute if data storage necron: Items[{Slot:9b}].tag.NSD.Status.CritChance store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:9b}].tag.NSD.Status.CritChance
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items[{Slot:9b}].tag.NSD.Status.CritChance unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/neck/crit.chance/add
# クリティカルダメージ
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.CritDamage store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.CritDamage
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace.CritDamage unless data storage necron: Items[{Slot:9b}].tag.NSD.Status.CritDamage run function necron.player:inventory_changed/accessory/status/neck/crit.damage/remove
	# 値を取得
	execute if data storage necron: Items[{Slot:9b}].tag.NSD.Status.CritDamage store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:9b}].tag.NSD.Status.CritDamage
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items[{Slot:9b}].tag.NSD.Status.CritDamage unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/neck/crit.damage/add
# スコアを持っているとバグるので、スコアをリセット
	execute if score $NSD.Value NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Value

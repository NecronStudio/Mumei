#> necron.player:inventory_changed/accessory/status/wrist/
#
# ブレスレットを付けていたら
#
# @within function necron.player:inventory_changed/

# 最大体力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.HPMax store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.HPMax
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.HPMax unless data storage necron: Items[{Slot:10b}].tag.NSD.Status.HPMax run function necron.player:inventory_changed/accessory/status/wrist/hp.max/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:10b}].tag.NSD.Status.HPMax store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:10b}].tag.NSD.Status.HPMax
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:10b}].tag.NSD.Status.HPMax unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/wrist/hp.max/add
# 体力回復割合
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.HPRcvrPer store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.HPRcvrPer
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.HPRcvrPer unless data storage necron: Items[{Slot:10b}].tag.NSD.Status.HPRcvrPer run function necron.player:inventory_changed/accessory/status/wrist/hp.rcvr.per/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:10b}].tag.NSD.Status.HPRcvrPer store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:10b}].tag.NSD.Status.HPRcvrPer
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:10b}].tag.NSD.Status.HPRcvrPer unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/wrist/hp.rcvr.per/add
# 最大魔力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.MPMax store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.MPMax
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.MPMax unless data storage necron: Items[{Slot:10b}].tag.NSD.Status.MPMax run function necron.player:inventory_changed/accessory/status/wrist/mp.max/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:10b}].tag.NSD.Status.MPMax store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:10b}].tag.NSD.Status.MPMax
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:10b}].tag.NSD.Status.MPMax unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/wrist/mp.max/add
# 魔力回復割合
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.MPRcvrPer store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.MPRcvrPer
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.MPRcvrPer unless data storage necron: Items[{Slot:10b}].tag.NSD.Status.MPRcvrPer run function necron.player:inventory_changed/accessory/status/wrist/mp.rcvr.per/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:10b}].tag.NSD.Status.MPRcvrPer store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:10b}].tag.NSD.Status.MPRcvrPer
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:10b}].tag.NSD.Status.MPRcvrPer unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/wrist/mp.rcvr.per/add
# 防御力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.DEF store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.DEF
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.DEF unless data storage necron: Items[{Slot:10b}].tag.NSD.Status.DEF run function necron.player:inventory_changed/accessory/status/wrist/def/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:10b}].tag.NSD.Status.DEF store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:10b}].tag.NSD.Status.DEF
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:10b}].tag.NSD.Status.DEF unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/wrist/def/add
# 攻撃力
	# 追加値を取得
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.ATK store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.ATK
	# 増加が無かったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.ATK unless data storage necron: Items[{Slot:10b}].tag.NSD.Status.ATK run function necron.player:inventory_changed/accessory/status/wrist/atk/remove
	# 値を取得
		execute if data storage necron: Items[{Slot:10b}].tag.NSD.Status.ATK store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:10b}].tag.NSD.Status.ATK
	# 前に持っていた値より大きかったら
		execute if data storage necron: Items[{Slot:10b}].tag.NSD.Status.ATK unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/wrist/atk/add
# クリティカル確率
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.CritChance store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.CritChance
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.CritChance unless data storage necron: Items[{Slot:10b}].tag.NSD.Status.CritChance run function necron.player:inventory_changed/accessory/status/wrist/crit.chance/remove
	# 値を取得
	execute if data storage necron: Items[{Slot:10b}].tag.NSD.Status.CritChance store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:10b}].tag.NSD.Status.CritChance
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items[{Slot:10b}].tag.NSD.Status.CritChance unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/wrist/crit.chance/add
# クリティカルダメージ
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.CritDamage store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.CritDamage
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet.CritDamage unless data storage necron: Items[{Slot:10b}].tag.NSD.Status.CritDamage run function necron.player:inventory_changed/accessory/status/wrist/crit.damage/remove
	# 値を取得
	execute if data storage necron: Items[{Slot:10b}].tag.NSD.Status.CritDamage store result score $NSD.Amount NSD.Temp run data get storage necron: Items[{Slot:10b}].tag.NSD.Status.CritDamage
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items[{Slot:10b}].tag.NSD.Status.CritDamage unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/accessory/status/wrist/crit.damage/add
# 一時使用ScoreHolderをリセット
	execute if score $NSD.Value NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Value
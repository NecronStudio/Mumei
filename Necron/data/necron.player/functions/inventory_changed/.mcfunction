#> necron.player:inventory_changed/
#
# インベントリーのアイテムを変えたら
#
# @within function necron.player:tick

# 
#> ScoreHolder
#@within function necron.player:inventory_changed/**
 #declare score_holder $NSD.Amount
 #declare score_holder $NSD.Success
 #declare score_holder $NSD.Value
# インベントリーをコピー
	data modify storage necron: ItemsCopy set from entity @s Inventory
# デフォルトアイテムを変える
	execute if data storage necron: ItemsCopy[].tag.Damage run function necron.player:inventory_changed/default.items/
# アクセサリーを変える
	execute if data storage necron: ItemsCopy[].tag.NsdAccessory run function necron.player:inventory_changed/accessory/give/
# 装備
	# 着ていたら
		execute if data storage necron: ItemsCopy[{Slot:103b}].tag.NsdArmor run function necron.player:inventory_changed/armor/head/
		execute if data storage necron: ItemsCopy[{Slot:102b}].tag.NsdArmor run function necron.player:inventory_changed/armor/chest/
		execute if data storage necron: ItemsCopy[{Slot:101b}].tag.NsdArmor run function necron.player:inventory_changed/armor/legs/
		execute if data storage necron: ItemsCopy[{Slot:100b}].tag.NsdArmor run function necron.player:inventory_changed/armor/feet/
	# 着ていなかったら
		execute if entity @s[tag=NSD.Wearing.Head] unless data storage necron: ItemsCopy[{Slot:103b}].tag.NsdArmor run function necron.player:inventory_changed/armor/head/reset
		execute if entity @s[tag=NSD.Wearing.Chest] unless data storage necron: ItemsCopy[{Slot:102b}].tag.NsdArmor run function necron.player:inventory_changed/armor/chest/reset
		execute if entity @s[tag=NSD.Wearing.Legs] unless data storage necron: ItemsCopy[{Slot:101b}].tag.NsdArmor run function necron.player:inventory_changed/armor/legs/reset
		execute if entity @s[tag=NSD.Wearing.Feet] unless data storage necron: ItemsCopy[{Slot:100b}].tag.NsdArmor run function necron.player:inventory_changed/armor/feet/reset
# アクセサリー
	# 付けてたら
		execute if data storage necron: ItemsCopy[{Slot:9b}].tag.NsdNecklace run function necron.player:inventory_changed/accessory/status/necklace/
		execute if data storage necron: ItemsCopy[{Slot:10b}].tag.NsdBracelet run function necron.player:inventory_changed/accessory/status/bracelet/
		execute if data storage necron: ItemsCopy[{Slot:11b}].tag.NsdRing run function necron.player:inventory_changed/accessory/status/ring/
	# 付けてなかったら
		execute unless data storage necron: ItemsCopy[{Slot:9b}].tag.NsdNecklace if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace run function necron.player:inventory_changed/accessory/status/necklace/reset
		execute unless data storage necron: ItemsCopy[{Slot:10b}].tag.NsdBracelet if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet run function necron.player:inventory_changed/accessory/status/bracelet/reset
		execute unless data storage necron: ItemsCopy[{Slot:11b}].tag.NsdRing if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring run function necron.player:inventory_changed/accessory/status/ring/reset
# 最後の処理
	function necron.player:weapon/last
# 進捗を剥奪
	advancement revoke @s only necron.player:inventory_changed

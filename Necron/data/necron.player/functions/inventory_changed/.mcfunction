#> necron.player:inventory_changed/
#
# インベントリーのアイテムを変えたら
#
# @within function necron.player:tick

# インベントリーをコピー
	data modify storage necron: Items set from entity @s Inventory
# デフォルトアイテムを変える
	execute if data storage necron: Items[].tag.Damage run function necron.player:inventory_changed/default.items/
# アクセサリーを変える
	execute if data storage necron: Items[].tag.NSD.Accessory run function necron.player:inventory_changed/accessory/give/
# 装備
	# 着ていたら
		execute if data storage necron: {Items:[{Slot:103b,tag:{NSD:{Slot:["Head"]}}}]} run function necron.player:inventory_changed/armor/head/
		execute if data storage necron: {Items:[{Slot:102b,tag:{NSD:{Slot:["Chest"]}}}]} run function necron.player:inventory_changed/armor/chest/
		execute if data storage necron: {Items:[{Slot:101b,tag:{NSD:{Slot:["Legs"]}}}]} run function necron.player:inventory_changed/armor/legs/
		execute if data storage necron: {Items:[{Slot:100b,tag:{NSD:{Slot:["Feet"]}}}]} run function necron.player:inventory_changed/armor/feet/
	# 着ていなかったら
		execute unless data storage necron: {Items:[{Slot:103b,tag:{NSD:{Slot:["Head"]}}}]} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head run function necron.player:inventory_changed/armor/head/reset
		execute unless data storage necron: {Items:[{Slot:102b,tag:{NSD:{Slot:["Chest"]}}}]} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Chest run function necron.player:inventory_changed/armor/chest/reset
		execute unless data storage necron: {Items:[{Slot:101b,tag:{NSD:{Slot:["Legs"]}}}]} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Legs run function necron.player:inventory_changed/armor/legs/reset
		execute unless data storage necron: {Items:[{Slot:100b,tag:{NSD:{Slot:["Feet"]}}}]} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Feet run function necron.player:inventory_changed/armor/feet/reset
# アクセサリー
	# 付けてたら
		execute if data storage necron: {Items:[{Slot:9b,tag:{NSD:{Slot:["Neck"]}}}]} run function necron.player:inventory_changed/accessory/status/neck/
		execute if data storage necron: {Items:[{Slot:10b,tag:{NSD:{Slot:["Wrist"]}}}]} run function necron.player:inventory_changed/accessory/status/wrist/
		execute if data storage necron: {Items:[{Slot:11b,tag:{NSD:{Slot:["Finger"]}}}]} run function necron.player:inventory_changed/accessory/status/finger/
	# 付けてなかったら
		execute unless data storage necron: {Items:[{Slot:9b,tag:{NSD:{Slot:["Neck"]}}}]} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Necklace run function necron.player:inventory_changed/accessory/status/neck/reset
		execute unless data storage necron: {Items:[{Slot:10b,tag:{NSD:{Slot:["Wrist"]}}}]} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Bracelet run function necron.player:inventory_changed/accessory/status/wrist/reset
		execute unless data storage necron: {Items:[{Slot:11b,tag:{NSD:{Slot:["Finger"]}}}]} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Accessory.Ring run function necron.player:inventory_changed/accessory/status/finger/reset
# 最後の処理
	function necron.player:weapon/last
# 進捗を剥奪
	advancement revoke @s only necron.player:inventory_changed

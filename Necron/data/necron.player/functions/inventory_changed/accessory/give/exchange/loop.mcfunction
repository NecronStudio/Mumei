#> necron.player:inventory_changed/accessory/give/exchange/loop
#
# アクセサリーの追加効果＆返す
#
# @within function necron.player:inventory_changed/accessory/give/
# @private

# 
#> Tag
#@private
 #declare tag NSD.Item
# 一つ目のアイテムを移す
	data modify storage necron: Accessory set from storage necron: Accessories[0]
# 追加効果を付ける
	function necron.player:inventory_changed/accessory/give/exchange/status.loop
# 説明を消す
	data remove storage necron: Accessory.tag.display.Lore
# 説明を追加
	# 説明を書いたアイテムを召喚
		execute if data storage necron: Accessory.tag.NSD.Status.HPMax run loot spawn ~ ~ ~ loot necron.player:accessory/hp.max
		execute if data storage necron: Accessory.tag.NSD.Status.HPRegPer run loot spawn ~ ~ ~ loot necron.player:accessory/hp.reg.per
		execute if data storage necron: Accessory.tag.NSD.Status.MPMax run loot spawn ~ ~ ~ loot necron.player:accessory/mp.max
		execute if data storage necron: Accessory.tag.NSD.Status.MPRegPer run loot spawn ~ ~ ~ loot necron.player:accessory/mp.reg.per
		execute if data storage necron: Accessory.tag.NSD.Status.DEF run loot spawn ~ ~ ~ loot necron.player:accessory/def
		execute if data storage necron: Accessory.tag.NSD.Status.ATK run loot spawn ~ ~ ~ loot necron.player:accessory/atk
		execute if data storage necron: Accessory.tag.NSD.Status.CritChance run loot spawn ~ ~ ~ loot necron.player:accessory/crit.chance
		execute if data storage necron: Accessory.tag.NSD.Status.CritDamage run loot spawn ~ ~ ~ loot necron.player:accessory/crit.damage
	# 説明を追加
		execute as @e[type=minecraft:item,distance=..0.001] if data entity @s Item.tag.NsdRemove run data modify storage necron: Accessory.tag.display.Lore append from entity @s Item.tag.display.Name
	# アイテムを消す
		execute as @e[type=minecraft:item,distance=..0.001] if data entity @s Item.tag.NsdRemove run kill @s
# アイテムの情報を付ける
	data modify storage necron: Accessory.tag.display.Lore append value '{"text":""}'
	# 部位
		execute if data storage necron: {Accessory:{tag:{NSD:{Slot:["Neck"]}}}} run data modify storage necron: Accessory.tag.display.Lore append value '{"text":"[ネックレス]","color":"gray","italic":false}'
		execute if data storage necron: {Accessory:{tag:{NSD:{Slot:["Wrist"]}}}} run data modify storage necron: Accessory.tag.display.Lore append value '{"text":"[ブレスレット]","color":"gray","italic":false}'
		execute if data storage necron: {Accessory:{tag:{NSD:{Slot:["Finger"]}}}} run data modify storage necron: Accessory.tag.display.Lore append value '{"text":"[リング]","color":"gray","italic":false}'
	# レアリティ
		execute if data storage necron: {Accessory:{tag:{NSD:{Rarity:"Common"}}}} run data modify storage necron: Accessory.tag.display.Lore append value '{"text":"Common","color":"white","bold":true,"italic":false}'
		execute if data storage necron: {Accessory:{tag:{NSD:{Rarity:"Uncommon"}}}} run data modify storage necron: Accessory.tag.display.Lore append value '{"text":"Uncommon","color":"green","bold":true,"italic":false}'
		execute if data storage necron: {Accessory:{tag:{NSD:{Rarity:"Rare"}}}} run data modify storage necron: Accessory.tag.display.Lore append value '{"text":"Rare","color":"blue","bold":true,"italic":false}'
		execute if data storage necron: {Accessory:{tag:{NSD:{Rarity:"Epic"}}}} run data modify storage necron: Accessory.tag.display.Lore append value '{"text":"Epic","color":"yellow","bold":true,"italic":false}'
		execute if data storage necron: {Accessory:{tag:{NSD:{Rarity:"Legendary"}}}} run data modify storage necron: Accessory.tag.display.Lore append value '{"text":"Legendary","color":"red","bold":true,"italic":false}'
# アイテムを返す
	execute store result score $NSD.Slot NSD.Temp run data get storage necron: Accessory.Slot
	data remove storage necron: Accessory.Slot
	data modify storage necron: ReturnItem set from storage necron: Accessory
	execute positioned ~ -3000 ~ run function necron.player:inventory_changed/return.item
# 一時使用Storageをリセット
	data remove storage necron: Accessory
# 一時使用ScoreHolderをリセット
	scoreboard players reset $NSD.Rand.Value
# データを消す
	data remove storage necron: Accessories[0]
# ループ
	execute if data storage necron: Accessories[] run function necron.player:inventory_changed/accessory/give/exchange/loop

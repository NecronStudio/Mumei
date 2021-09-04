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
# レアリティを他の場所に移す(３回Loreを消してるのはミスじゃないﾖ)
	data modify storage necron: Rarity append from storage necron: Accessory.tag.display.Lore[-3]
	data modify storage necron: Rarity append from storage necron: Accessory.tag.display.Lore[-2]
	data modify storage necron: Rarity append from storage necron: Accessory.tag.display.Lore[-1]
	data remove storage necron: Accessory.tag.display.Lore[-1]
	data remove storage necron: Accessory.tag.display.Lore[-1]
	data remove storage necron: Accessory.tag.display.Lore[-1]
# 説明を追加
	# 説明を書いたアイテムを召喚
		execute if data storage necron: Accessory.tag.NsdStatus.HP run loot spawn ~ ~ ~ loot necron.player:accessory/hp
		execute if data storage necron: Accessory.tag.NsdStatus.HPRcvrPer run loot spawn ~ ~ ~ loot necron.player:accessory/hp_rcvr_per
		execute if data storage necron: Accessory.tag.NsdStatus.MP run loot spawn ~ ~ ~ loot necron.player:accessory/mp
		execute if data storage necron: Accessory.tag.NsdStatus.MPRcvrPer run loot spawn ~ ~ ~ loot necron.player:accessory/mp_rcvr_per
		execute if data storage necron: Accessory.tag.NsdStatus.DEF run loot spawn ~ ~ ~ loot necron.player:accessory/def
		execute if data storage necron: Accessory.tag.NsdStatus.ATK run loot spawn ~ ~ ~ loot necron.player:accessory/atk
	# 説明を追加
		execute as @e[type=minecraft:item,distance=..0.001] if data entity @s Item.tag.NsdRemove run data modify storage necron: Accessory.tag.display.Lore append from entity @s Item.tag.display.Name
	# アイテムを消す
		execute as @e[type=minecraft:item,distance=..0.001] if data entity @s Item.tag.NsdRemove run kill @s
# レアリティを元に戻す
	data modify storage necron: Accessory.tag.display.Lore append from storage necron: Rarity[]
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

#> necron.player:inventory_changed/armor/chest/
#
# 胸当に装備をしていたら
#
# @within function necron.player:inventory_changed/

# 
#> Tag
#@within function necron.player:inventory_changed/**
 #declare tag NSD.Wearing.Chest
# 体力
	## 増加が無かったら
	execute if entity @s[scores={NSD.HP.Add.Chest=..2147483647}] unless data storage necron: ItemsCopy[{Slot:102b}].tag.NsdStatus.HP run function necron.player:inventory_changed/armor/chest/hp/remove
	## 値を取得
	execute if data storage necron: ItemsCopy[{Slot:102b}].tag.NsdStatus.HP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:102b}].tag.NsdStatus.HP
	## 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:102b}].tag.NsdStatus.HP unless score @s NSD.HP.Add.Chest = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/chest/hp/add
# 魔力
	## 増加が無かったら
	execute if entity @s[scores={NSD.MP.Add.Chest=..2147483647}] unless data storage necron: ItemsCopy[{Slot:102b}].tag.NsdStatus.MP run function necron.player:inventory_changed/armor/chest/mp/remove
	## 値を取得
	execute if data storage necron: ItemsCopy[{Slot:102b}].tag.NsdStatus.MP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:102b}].tag.NsdStatus.MP
	## 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:102b}].tag.NsdStatus.MP unless score @s NSD.MP.Add.Chest = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/chest/mp/add
# 防御力
	## 増加が無かったら
	execute if entity @s[scores={NSD.DEF.Add.Cest=..2147483647}] unless data storage necron: ItemsCopy[{Slot:102b}].tag.NsdStatus.DEF run function necron.player:inventory_changed/armor/chest/def/remove
	## 値を取得
	execute if data storage necron: ItemsCopy[{Slot:102b}].tag.NsdStatus.DEF store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:102b}].tag.NsdStatus.DEF
	## 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:102b}].tag.NsdStatus.DEF unless score @s NSD.DEF.Add.Cest = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/chest/def/add
# Tagを付ける
	tag @s add NSD.Wearing.Chest

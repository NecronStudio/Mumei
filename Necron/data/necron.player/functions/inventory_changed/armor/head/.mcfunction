#> necron.player:inventory_changed/armor/head/
#
# 頭に装備をしていたら
#
# @within function necron.player:inventory_changed/

# 
#> Tag
#@within function necron.player:inventory_changed/**
 #declare tag NSD.Wearing.Head
# 体力
	## 値を取得
	execute if data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.HP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.HP
	## 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.HP unless score @s NSD.HP.Add.Head = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/head/hp/add
	## 増加が無かったら
	execute if entity @s[scores={NSD.HP.Add.Head=..2147483647}] unless data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.HP run function necron.player:inventory_changed/armor/head/hp/remove
# 魔力
	## 値を取得
	execute if data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.MP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.MP
	## 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.MP unless score @s NSD.MP.Add.Head = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/head/mp/add
	## 増加が無かったら
	execute if entity @s[scores={NSD.MP.Add.Head=..2147483647}] unless data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.MP run function necron.player:inventory_changed/armor/head/mp/remove
# 防御力
	## 値を取得
	execute if data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.DEF store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.DEF
	## 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.DEF unless score @s NSD.DEF.Add.Head = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/head/def/add
	## 増加が無かったら
	execute if entity @s[scores={NSD.DEF.Add.Head=..2147483647}] unless data storage necron: ItemsCopy[{Slot:103b}].tag.NsdStatus.DEF run function necron.player:inventory_changed/armor/head/def/remove
# Tagを付ける
	tag @s add NSD.Wearing.Head

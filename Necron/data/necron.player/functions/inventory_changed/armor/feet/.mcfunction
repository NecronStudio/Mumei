#> necron.player:inventory_changed/armor/feet/
#
# 足に装備をしていたら
#
# @within function necron.player:inventory_changed/

# 
#> Tag
#@within function necron.player:inventory_changed/**
 #declare tag NSD.Wearing.Feet
# 体力
	## 値を取得
	execute if data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.HP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.HP
	## 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.HP unless score @s NSD.HP.Add.Feet = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/feet/hp/add
	## 増加が無かったら
	execute if entity @s[scores={NSD.HP.Add.Feet=..2147483647}] unless data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.HP run function necron.player:inventory_changed/armor/feet/hp/remove
# 魔力
	## 値を取得
	execute if data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.MP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.MP
	## 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.MP unless score @s NSD.MP.Add.Feet = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/feet/mp/add
	## 増加が無かったら
	execute if entity @s[scores={NSD.MP.Add.Feet=..2147483647}] unless data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.MP run function necron.player:inventory_changed/armor/feet/mp/remove
# 防御力
	## 値を取得
	execute if data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.DEF store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.DEF
	## 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.DEF unless score @s NSD.DEF.Add.Feet = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/feet/def/add
	## 増加が無かったら
	execute if entity @s[scores={NSD.DEF.Add.Feet=..2147483647}] unless data storage necron: ItemsCopy[{Slot:100b}].tag.NsdStatus.DEF run function necron.player:inventory_changed/armor/feet/def/remove
# Tagを付ける
	tag @s add NSD.Wearing.Feet

#> necron.player:inventory_changed/armor/legs/
#
# 脚に装備をしていたら
#
# @within function necron.player:inventory_changed/

# 
#> Tag
#@within function necron.player:inventory_changed/**
 #declare tag NSD.Wearing.Legs
# 体力
	## 値を取得
	execute if data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.HP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.HP
	## 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.HP unless score @s NSD.HP.Add.Legs = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/legs/hp/add
	## 増加が無かったら
	execute if entity @s[scores={NSD.HP.Add.Legs=..2147483647}] unless data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.HP run function necron.player:inventory_changed/armor/legs/hp/remove
# 魔力
	## 値を取得
	execute if data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.MP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.MP
	## 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.MP unless score @s NSD.MP.Add.Legs = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/legs/mp/add
	## 増加が無かったら
	execute if entity @s[scores={NSD.MP.Add.Legs=..2147483647}] unless data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.MP run function necron.player:inventory_changed/armor/legs/mp/remove
# 防御力
	## 値を取得
	execute if data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.DEF store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.DEF
	## 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.DEF unless score @s NSD.DEF.Add.Legs = $NSD.Amount NSD.Temp run function necron.player:inventory_changed/armor/legs/def/add
	## 増加が無かったら
	execute if entity @s[scores={NSD.DEF.Add.Legs=..2147483647}] unless data storage necron: ItemsCopy[{Slot:101b}].tag.NsdStatus.DEF run function necron.player:inventory_changed/armor/legs/def/remove
# Tagを付ける
	tag @s add NSD.Wearing.Legs

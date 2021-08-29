#> necron.player:weapon/mainhand/
#
# メインハンドに武器を持っていたら
#
# @within function necron.player:tick

# 
#> Tag
#@within function necron.player:weapon/mainhand/**
#@within function necron.player:tick
 #declare tag NSD.Having.Mainhand
# メインハンドをコピー
	data modify storage necron: ItemsCopy set from entity @s SelectedItem
# 体力
	## 値を取得
	execute if data storage necron: ItemsCopy.tag.NsdStatus.HP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy.tag.NsdStatus.HP
	## 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy.tag.NsdStatus.HP unless score @s NSD.HP.Add.Main = $NSD.Amount NSD.Temp run function necron.player:weapon/mainhand/hp/add
	## 増加が無かったら
	execute if entity @s[scores={NSD.HP.Add.Main=..2147483647}] unless data storage necron: ItemsCopy.tag.NsdStatus.HP run function necron.player:weapon/mainhand/hp/remove
# 魔力
	## 値を取得
	execute if data storage necron: ItemsCopy.tag.NsdStatus.MP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy.tag.NsdStatus.MP
	## 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy.tag.NsdStatus.MP unless score @s NSD.MP.Add.Main = $NSD.Amount NSD.Temp run function necron.player:weapon/mainhand/mp/add
	## 増加が無かったら
	execute if entity @s[scores={NSD.MP.Add.Main=..2147483647}] unless data storage necron: ItemsCopy.tag.NsdStatus.MP run function necron.player:weapon/mainhand/mp/remove
# 防御力
	## 値を取得
	execute if data storage necron: ItemsCopy.tag.NsdStatus.ATK store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy.tag.NsdStatus.ATK
	## 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy.tag.NsdStatus.ATK unless score @s NSD.ATK.Add.Main = $NSD.Amount NSD.Temp run function necron.player:weapon/mainhand/atk/add
	## 増加が無かったら
	execute if entity @s[scores={NSD.ATK.Add.Main=..2147483647}] unless data storage necron: ItemsCopy.tag.NsdStatus.ATK run function necron.player:weapon/mainhand/atk/remove
# Tagを付ける
	tag @s add NSD.Having.Mainhand
# 総合処理
	function necron.player:weapon/last

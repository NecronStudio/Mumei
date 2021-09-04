#> necron.player:inventory_changed/armor/head/reset
#
# ステータス増加を元に戻す
#
# @within function necron.player:inventory_changed/

# 
	# 最大体力
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.HP store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.HP
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.HP run scoreboard players operation @s NSD.HP.Max -= $NSD.Value NSD.Temp
	# 最大魔力
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.MP store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.MP
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.MP run scoreboard players operation @s NSD.MP.Max -= $NSD.Value NSD.Temp
	# 防御力
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.DEF store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.DEF
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head.DEF run scoreboard players operation @s NSD.DEF -= $NSD.Value NSD.Temp
# データを消す
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Armor.Head
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1

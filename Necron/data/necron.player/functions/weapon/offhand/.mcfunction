#> necron.player:weapon/offhand/
#
# オフハンドに武器を持っていたら
#
# @within function necron.player:tick

# メインハンドをコピー
	data modify storage necron: ItemsCopy set from entity @s Inventory[{Slot:-106b}]
# 最大体力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.HP store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.HP
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.HP unless data storage necron: ItemsCopy.tag.NsdStatus.HP run function necron.player:weapon/offhand/hp/remove
	# 値を取得
	execute if data storage necron: ItemsCopy.tag.NsdStatus.HP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy.tag.NsdStatus.HP
	# 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy.tag.NsdStatus.HP unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:weapon/offhand/hp/add
# 最大魔力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.MP store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.MP
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.MP unless data storage necron: ItemsCopy.tag.NsdStatus.MP run function necron.player:weapon/offhand/mp/remove
	# 値を取得
	execute if data storage necron: ItemsCopy.tag.NsdStatus.MP store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy.tag.NsdStatus.MP
	# 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy.tag.NsdStatus.MP unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:weapon/offhand/mp/add
# 防御力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.ATK store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.ATK
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.ATK unless data storage necron: ItemsCopy.tag.NsdStatus.ATK run function necron.player:weapon/offhand/atk/remove
	# 値を取得
	execute if data storage necron: ItemsCopy.tag.NsdStatus.ATK store result score $NSD.Amount NSD.Temp run data get storage necron: ItemsCopy.tag.NsdStatus.ATK
	# 前に持っていた値より大きかったら
	execute if data storage necron: ItemsCopy.tag.NsdStatus.ATK unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:weapon/offhand/atk/add
# 最後の処理
	function necron.player:weapon/last
# 一時使用ScoreHolderをリセット
	execute if score $NSD.Value NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Value

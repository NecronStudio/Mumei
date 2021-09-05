#> necron.player:weapon/offhand/
#
# オフハンドに武器を持っていたら
#
# @within function necron.player:tick

# メインハンドをコピー
	data modify storage necron: Items set from entity @s Inventory[{Slot:-106b}]
# 最大体力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.HPMax store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.HPMax
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.HPMax unless data storage necron: Items.tag.NSD.Status.HPMax run function necron.player:weapon/offhand/hp.max/remove
	# 値を取得
	execute if data storage necron: Items.tag.NSD.Status.HPMax store result score $NSD.Amount NSD.Temp run data get storage necron: Items.tag.NSD.Status.HPMax
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items.tag.NSD.Status.HPMax unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:weapon/offhand/hp.max/add
# 最大魔力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.MPMax store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.MPMax
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.MPMax unless data storage necron: Items.tag.NSD.Status.MPMax run function necron.player:weapon/offhand/mp.max/remove
	# 値を取得
	execute if data storage necron: Items.tag.NSD.Status.MPMax store result score $NSD.Amount NSD.Temp run data get storage necron: Items.tag.NSD.Status.MPMax
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items.tag.NSD.Status.MPMax unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:weapon/offhand/mp.max/add
# 攻撃力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.ATK store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.ATK
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand.ATK unless data storage necron: Items.tag.NSD.Status.ATK run function necron.player:weapon/offhand/atk/remove
	# 値を取得
	execute if data storage necron: Items.tag.NSD.Status.ATK store result score $NSD.Amount NSD.Temp run data get storage necron: Items.tag.NSD.Status.ATK
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items.tag.NSD.Status.ATK unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:weapon/offhand/atk/add
# 最後の処理
	function necron.player:weapon/last
# 一時使用ScoreHolderをリセット
	execute if score $NSD.Value NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Value

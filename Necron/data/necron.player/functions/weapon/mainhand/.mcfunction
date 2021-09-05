#> necron.player:weapon/mainhand/
#
# メインハンドに武器を持っていたら
#
# @within function necron.player:tick

# メインハンドをコピー
	data modify storage necron: Items set from entity @s SelectedItem
# 最大体力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.HPMax store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.HPMax
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.HPMax unless data storage necron: Items.tag.NSD.Status.HPMax run function necron.player:weapon/mainhand/hp.max/remove
	# 値を取得
	execute if data storage necron: Items.tag.NSD.Status.HPMax store result score $NSD.Amount NSD.Temp run data get storage necron: Items.tag.NSD.Status.HPMax
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items.tag.NSD.Status.HPMax unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:weapon/mainhand/hp.max/add
# 最大魔力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.MPMax store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.MPMax
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.MPMax unless data storage necron: Items.tag.NSD.Status.MPMax run function necron.player:weapon/mainhand/mp.max/remove
	# 値を取得
	execute if data storage necron: Items.tag.NSD.Status.MPMax store result score $NSD.Amount NSD.Temp run data get storage necron: Items.tag.NSD.Status.MPMax
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items.tag.NSD.Status.MPMax unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:weapon/mainhand/mp.max/add
# 攻撃力
	# 追加値を取得
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.ATK store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.ATK
	# 増加が無かったら
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.ATK unless data storage necron: Items.tag.NSD.Status.ATK run function necron.player:weapon/mainhand/atk/remove
	# 値を取得
	execute if data storage necron: Items.tag.NSD.Status.ATK store result score $NSD.Amount NSD.Temp run data get storage necron: Items.tag.NSD.Status.ATK
	# 前に持っていた値より大きかったら
	execute if data storage necron: Items.tag.NSD.Status.ATK unless score $NSD.Value NSD.Temp = $NSD.Amount NSD.Temp run function necron.player:weapon/mainhand/atk/add
# 最後の処理
	function necron.player:weapon/last
# 一時使用ScoreHolderをリセット
	execute if score $NSD.Value NSD.Temp matches ..2147483647 run scoreboard players reset $NSD.Value

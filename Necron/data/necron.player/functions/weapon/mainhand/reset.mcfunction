#> necron.player:weapon/mainhand/reset
#
# ステータス増加を元に戻す
#
# @within function necron.player:tick

# 
	# 最大体力
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.HP store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.HP
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.HP run scoreboard players operation @s NSD.HP.Max -= $NSD.Value NSD.Temp
	# 最大魔力
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.MP store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.MP
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.MP run scoreboard players operation @s NSD.MP.Max -= $NSD.Value NSD.Temp
	# 防御力
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.ATK store result score $NSD.Value NSD.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.ATK
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand.ATK run scoreboard players operation @s NSD.ATK -= $NSD.Value NSD.Temp
# データを消す
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand
# 変えたことを記録
	execute unless score $NSD.Success NSD.Temp matches 1 run scoreboard players set $NSD.Success NSD.Temp 1
# 最後の処理
	function necron.player:weapon/last

#> necron.player:tick
#
# プレイヤーで常時実行
#
# @within function necron.core:tick

# 個人ストレージを呼ぶ
	function oh_my_dat:please
# 初期化
	execute if entity @s[tag=!NSD.Player] run function necron.player:init
# ステータスを表示
	execute if predicate necron.player:sneak if entity @s[x_rotation=-90] unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Sneak run function necron.player:show.status
# インベントリーを更新したら
	execute if entity @s[advancements={necron.player:inventory_changed=true}] run function necron.player:inventory_changed/
# 体力を回復
	execute if score @s NSD.HP < @s NSD.HP.Max run scoreboard players add @s NSD.HP.Reg.Tmr 1
	execute if score @s NSD.HP.Reg.Tmr >= @s NSD.HP.Reg.Dur run function necron.player:regenerate/hp
# 魔力を回復
	execute if score @s NSD.MP < @s NSD.MP.Max run scoreboard players add @s NSD.MP.Reg.Tmr 1
	execute if score @s NSD.MP.Reg.Tmr >= @s NSD.MP.Reg.Dur run function necron.player:regenerate/mp
# 武器
	## 持っていたら
		execute if data entity @s {SelectedItem:{tag:{NSD:{Slot:["Mainhand"]}}}} run function necron.player:weapon/mainhand/
		execute if data entity @s {Inventory:[{Slot:-106b,tag:{NSD:{Slot:["Offhand"]}}}]} run function necron.player:weapon/offhand/
	## 持っていなかったら
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Mainhand unless data entity @s {SelectedItem:{tag:{NSD:{Slot:["Mainhand"]}}}} run function necron.player:weapon/mainhand/reset
		execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Weapon.Offhand unless data entity @s {Inventory:[{Slot:-106b,tag:{NSD:{Slot:["Offhand"]}}}]} run function necron.player:weapon/offhand/reset
# スニークをしていない状態にする
	execute unless predicate necron.player:sneak if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Sneak run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NSD.Sneak

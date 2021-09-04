#> necron.player:tick
#
# プレイヤーで常時実行
#
# @within function necron.core:tick

# 個人ストレージを呼ぶ
	function oh_my_dat:please
# 初期化
	execute if entity @s[tag=!NSD.Player] run function necron.player:init
# インベントリーを更新したら
	execute if entity @s[advancements={necron.player:inventory_changed=true}] run function necron.player:inventory_changed/
# 体力を回復
	execute if score @s NSD.HP < @s NSD.HP.Max run scoreboard players add @s NSD.HP.Rcvr.Tmr 1
	execute if score @s NSD.HP.Rcvr.Tmr >= @s NSD.HP.Rcvr.Dur run function necron.player:recover/hp
# 魔力を回復
	execute if score @s NSD.MP < @s NSD.MP.Max run scoreboard players add @s NSD.MP.Rcvr.Tmr 1
	execute if score @s NSD.MP.Rcvr.Tmr >= @s NSD.MP.Rcvr.Dur run function necron.player:recover/mp
# 武器
	## 持っていたら
		execute if data entity @s SelectedItem.tag.NsdWeapon run function necron.player:weapon/mainhand/
	## 持っていなかったら
		execute if entity @s[tag=NSD.Having.Mainhand] unless data entity @s SelectedItem.tag.NsdWeapon run function necron.player:weapon/mainhand/reset

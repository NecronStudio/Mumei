#> necron.player:tick
#
# プレイヤーで常時実行
#
# @within function necron.core:tick

# 個人ストレージを呼ぶ
	function oh_my_dat:please
# 初期化
	execute if entity @s[tag=!NSD.Player] run function necron.player:init
# 体力を回復
	execute if score @s NSD.HP < @s NSD.HP.Max run scoreboard players add @s NSD.HP.Rcvr.Tmr 1
	execute if score @s NSD.HP.Rcvr.Tmr >= @s NSD.HP.Rcvr.Dur run function necron.player:recover.hp
# 魔力を回復
	execute if score @s NSD.MP < @s NSD.MP.Max run scoreboard players add @s NSD.MP.Rcvr.Tmr 1
	execute if score @s NSD.MP.Rcvr.Tmr >= @s NSD.MP.Rcvr.Dur run function necron.player:recover.mp

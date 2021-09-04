#> necron.core:init
#
# 初期化
#
# @within function necron.core:load

# 
#> Storage
#@public
 #declare storage necron:
 #declare storage oh_my_dat:
# 初期化完了
	data modify storage necron: Once set value 1b
# 
#> Scoreboard
#@public
	scoreboard objectives add NSD.Global dummy
	scoreboard objectives add NSD.Temp dummy
	scoreboard objectives add NSD.Const dummy
	## ステータス
		scoreboard objectives add NSD.Lv dummy
		### 体力
			scoreboard objectives add NSD.HP dummy
			scoreboard objectives add NSD.HP.Max dummy
			scoreboard objectives add NSD.HP.Rcvr.Tmr dummy
			scoreboard objectives add NSD.HP.Rcvr.Dur dummy
			scoreboard objectives add NSD.HP.Rcvr.Per dummy
			scoreboard objectives add NSD.HP.Add.Head dummy
			scoreboard objectives add NSD.HP.Add.Chest dummy
			scoreboard objectives add NSD.HP.Add.Legs dummy
			scoreboard objectives add NSD.HP.Add.Feet dummy
			scoreboard objectives add NSD.HP.Add.Main dummy
			scoreboard objectives add NSD.HP.Add.Off dummy
		### 魔力
			scoreboard objectives add NSD.MP dummy
			scoreboard objectives add NSD.MP.Max dummy
			scoreboard objectives add NSD.MP.Rcvr.Tmr dummy
			scoreboard objectives add NSD.MP.Rcvr.Dur dummy
			scoreboard objectives add NSD.MP.Rcvr.Per dummy
			scoreboard objectives add NSD.MP.Add.Head dummy
			scoreboard objectives add NSD.MP.Add.Chest dummy
			scoreboard objectives add NSD.MP.Add.Legs dummy
			scoreboard objectives add NSD.MP.Add.Feet dummy
			scoreboard objectives add NSD.MP.Add.Main dummy
			scoreboard objectives add NSD.MP.Add.Off dummy
		### 攻撃力
			scoreboard objectives add NSD.ATK dummy
			scoreboard objectives add NSD.ATK.Add.Main dummy
			scoreboard objectives add NSD.ATK.Add.Off dummy
		### 防御力
			scoreboard objectives add NSD.DEF dummy
			scoreboard objectives add NSD.DEF.Add.Head dummy
			scoreboard objectives add NSD.DEF.Add.Cest dummy
			scoreboard objectives add NSD.DEF.Add.Legs dummy
			scoreboard objectives add NSD.DEF.Add.Feet dummy
# 
#> ScoreHolder
#@public
 #declare score_holder $NSD.10
 #declare score_holder $NSD.100
 #declare score_holder $NSD.31743
 #declare score_holder $NSD.2^16
	scoreboard players set $NSD.10 NSD.Const 10
	scoreboard players set $NSD.100 NSD.Const 100
	scoreboard players set $NSD.31743 NSD.Const 31743
	scoreboard players set $NSD.2^16 NSD.Const 65536
# Random
	execute in minecraft:overworld run forceload add 512 512
	schedule function necron.core:random/init 3t
# Gamerule
	gamerule maxCommandChainLength 2147483647

#> necron.core:init
#
# 初期化
#
# @within function necron.core:load

# 
#> Storage
#@public
 #declare storage necron:
# 初期化完了
	data modify storage necron: Once set value 1b
# 
#> Scoreboard
#@public
	scoreboard objectives add NSD.Temp dummy
	scoreboard objectives add NSD.Const dummy
	## プレイヤーの行動
		scoreboard objectives add NSD.LeaveGame minecraft.custom:minecraft.leave_game
	## ステータス
		scoreboard objectives add NSD.Lv dummy
		### 体力
			scoreboard objectives add NSD.HP dummy
			scoreboard objectives add NSD.HP.Max dummy
			scoreboard objectives add NSD.HP.Rcvr.Tmr dummy
			scoreboard objectives add NSD.HP.Rcvr.Dur dummy
			scoreboard objectives add NSD.HP.Add.Head dummy
			scoreboard objectives add NSD.HP.Add.Chest dummy
			scoreboard objectives add NSD.HP.Add.Legs dummy
			scoreboard objectives add NSD.HP.Add.Feet dummy
		### 魔力
			scoreboard objectives add NSD.MP dummy
			scoreboard objectives add NSD.MP.Max dummy
			scoreboard objectives add NSD.MP.Rcvr.Tmr dummy
			scoreboard objectives add NSD.MP.Rcvr.Dur dummy
			scoreboard objectives add NSD.MP.Add.Head dummy
			scoreboard objectives add NSD.MP.Add.Chest dummy
			scoreboard objectives add NSD.MP.Add.Legs dummy
			scoreboard objectives add NSD.MP.Add.Feet dummy
		### 攻撃力
			scoreboard objectives add NSD.ATK dummy
		### 防御力
			scoreboard objectives add NSD.DEF dummy
			scoreboard objectives add NSD.DEF.Add.Head dummy
			scoreboard objectives add NSD.DEF.Add.Cest dummy
			scoreboard objectives add NSD.DEF.Add.Legs dummy
			scoreboard objectives add NSD.DEF.Add.Feet dummy
# 
#> ScoreHolder
#@public
 #declare score_holder $NSD.100
	scoreboard players set $NSD.100 NSD.Const 100

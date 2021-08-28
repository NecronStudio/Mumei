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
	## プレイヤーのステータス
		### 体力
			scoreboard objectives add NSD.HP dummy
			scoreboard objectives add NSD.HP.Max dummy
			scoreboard objectives add NSD.HP.Rcvr.Tmr dummy
			scoreboard objectives add NSD.HP.Rcvr.Dur dummy
		### 魔力
			scoreboard objectives add NSD.MP dummy
			scoreboard objectives add NSD.MP.Max dummy
			scoreboard objectives add NSD.MP.Rcvr.Tmr dummy
			scoreboard objectives add NSD.MP.Rcvr.Dur dummy

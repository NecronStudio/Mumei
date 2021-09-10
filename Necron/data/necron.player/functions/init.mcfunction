#> necron.player:init
#
# プレイヤーを初期化
#
# @within function necron.player:tick

# 
#> Tag
#@public
 #declare tag NSD.Player
# プレイヤーのステータス
	scoreboard players set @s NSD.Lv 1
	## 体力
		execute store result score @s NSD.HP.Max run scoreboard players set @s NSD.HP 100
		scoreboard players set @s NSD.HP.Reg.Dur 40
		scoreboard players set @s NSD.HP.Reg.Per 5
		scoreboard players set @s NSD.Crit.Chance 0
		scoreboard players set @s NSD.Crit.Damage 100
	## 魔力
		execute store result score @s NSD.MP.Max run scoreboard players set @s NSD.MP 100
		scoreboard players set @s NSD.MP.Reg.Dur 40
		scoreboard players set @s NSD.MP.Reg.Per 5
	## 攻撃力
		scoreboard players set @s NSD.ATK 1
	## 防御力
		scoreboard players set @s NSD.DEF 0
# 表示を更新
	function necron.core:2s.tick
# 初期化完了
	tag @s add NSD.Player

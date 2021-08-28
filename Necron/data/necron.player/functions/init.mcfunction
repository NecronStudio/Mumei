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
		scoreboard players set @s NSD.HP.Rcvr.Dur 40
	## 魔力
		execute store result score @s NSD.MP.Max run scoreboard players set @s NSD.MP 100
		scoreboard players set @s NSD.MP.Rcvr.Dur 40
	## 個人ストレージに保存するもの
		data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NsdStatus set value {HPRcvrPer:5,MPRcvrPer:5,PhyATK:1,MgcATK:{},PhyDEF:0,MgcDEF:{}}
# 初期化完了
	tag @s add NSD.Player

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
		### 魔力
			scoreboard objectives add NSD.MP dummy
			scoreboard objectives add NSD.MP.Max dummy
			scoreboard objectives add NSD.MP.Rcvr.Tmr dummy
			scoreboard objectives add NSD.MP.Rcvr.Dur dummy
			scoreboard objectives add NSD.MP.Rcvr.Per dummy
			scoreboard objectives add NSD.INT dummy
		### 攻撃力
			scoreboard objectives add NSD.ATK dummy
			scoreboard objectives add NSD.Crit.Damage dummy
			scoreboard objectives add NSD.Crit.Chance dummy
		### 防御力
			scoreboard objectives add NSD.DEF dummy
			scoreboard objectives add NSD.Crossbow.Use minecraft.used:minecraft.crossbow
		#### Immersive Citizens Weapon Throwing
			scoreboard objectives add NSD.WT.Sneak minecraft.custom:minecraft.sneak_time
			scoreboard objectives add NSD.S dummy
			
	## Immersive Citizens Damage Taken
		scoreboard objectives add NSD.Health.0 dummy
		scoreboard objectives add NSD.Attribute.0 dummy
		scoreboard objectives add NSD.Attribute.1 dummy
		scoreboard objectives add NSD.Damaged.0 minecraft.custom:minecraft.damage_taken
		scoreboard objectives add NSD.Damaged.1 dummy
		scoreboard objectives add NSD.Protection.0 dummy
		scoreboard objectives add NSD.Protection.1 dummy
		scoreboard objectives add NSD.ActiveEffect dummy
		scoreboard objectives add NSD.GotDamaged dummy
		scoreboard objectives add NSD.Fuse dummy
		
	## Immersive Citizens Attack Dealt
		scoreboard objectives add NSD.Dealt.0 minecraft.custom:minecraft.damage_dealt
		scoreboard objectives add NSD.Detection.0 dummy
		scoreboard objectives add NSD.Detection.1 dummy
		scoreboard objectives add NSD.Detection.2 dummy
		scoreboard objectives add NSD.Bow.Use minecraft.used:minecraft.bow

	## Ultimate Combat
		scoreboard objectives add NSD.UC.Dealt.0 minecraft.custom:minecraft.damage_dealt
		scoreboard objectives add NSD.UC.Count.0 dummy
		scoreboard objectives add NSD.UC.Time.0 dummy
		scoreboard objectives add NSD.UC.Jump.0 minecraft.custom:minecraft.jump
	## Immersive Citizens Difficult
		scoreboard objectives add NSD.Difficulty dummy

	## Colorful Magic
		scoreboard objectives add NSD.Magic.Right minecraft.used:minecraft.carrot_on_a_stick
		scoreboard objectives add NSD.Magic.Time.0 dummy
#> ScoreHolder
#@public
 #declare score_holder $NSD.-1
 #declare score_holder $NSD.-2
 #declare score_holder $NSD.10
 #declare score_holder $NSD.100
 #declare score_holder $NSD.1000
 #declare score_holder $NSD.31743
 #declare score_holder $NSD.1000000
 #declare score_holder $NSD.100000000
 #declare score_holder $NSD.1000000000
 #declare score_holder $NSD.2000000000
 #declare score_holder $NSD.2^16
	scoreboard players set $NSD.-1 NSD.Const -1
	scoreboard players set $NSD.-2 NSD.Const -2
	scoreboard players set $NSD.10 NSD.Const 10
	scoreboard players set $NSD.100 NSD.Const 100
	scoreboard players set $NSD.1000 NSD.Const 1000
	scoreboard players set $NSD.31743 NSD.Const 31743
	scoreboard players set $NSD.2^16 NSD.Const 65536
	scoreboard players set $NSD.1000000 NSD.Const 1000000
	scoreboard players set $NSD.100000000 NSD.Const 100000000
	scoreboard players set $NSD.1000000000 NSD.Const 1000000000
	scoreboard players set $NSD.2000000000 NSD.Const 2000000000
# Random
	execute in minecraft:overworld run forceload add 0 0
	schedule function necron.core:random/init 3t
# Gamerule
	gamerule maxCommandChainLength 2147483647

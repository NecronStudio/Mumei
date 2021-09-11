#> necron.player:item.throwing/damage
#
# Entityに攻撃
#
# @within function necron.player:item.throwing/tick

# ダメージ表示をする
	effect give @s minecraft:wither 1 1 true
# 攻撃力を取得
	execute store result score $NSD.ATK NSD.Temp run data get entity @e[type=minecraft:armor_stand,tag=NSD.This,distance=..1,limit=1] HandItems[0].tag.NSD.Status.ATK
# HPを減らす
	function necron.entity:damage/damage
# アイテム表示のためのASを消す
	execute as @e[type=minecraft:armor_stand,tag=NSD.This,distance=..1] at @s run function necron.player:item.throwing/kill

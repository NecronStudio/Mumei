#> necron.player:item.throwing/tick
#
# アイテムを投げている
#
# @within function necron.core:tick

# 
#> Tag
#@within function necron.player:item.throwing/*
 #declare tag NSD.Item
## Citizens of Thown Weapon
# スコアを増加
	scoreboard players add @s NSD.Global 1
# 腕の向きを変える
	execute store result entity @s Pose.RightArm[0] float 72 run scoreboard players get @s NSD.Global
# パーテクルを表示
	particle minecraft:crit ~ ~1.2 ~ 0 0 0 0 1 force
# Entityに攻撃
	tag @s add NSD.This
	execute as @e[type=#necron.entity:living,type=!minecraft:player,distance=..1,limit=1] at @s run function necron.player:item.throwing/damage
	tag @s remove NSD.This
# 時間が経過したら、消す
	execute if entity @s[scores={NSD.Global=15..}] unless entity @e[type=#necron.entity:living,type=!minecraft:player,distance=..1] if data entity @s {OnGround:1b} run function necron.player:item.throwing/kill

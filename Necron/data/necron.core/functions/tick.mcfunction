#> necron.core:tick
#
# 常時実行
#
# @within tag/function minecraft:tick

# Entityを初期化
	execute as @e[type=#necron.entity:living,type=!minecraft:player,tag=!NSD.Entity] run function necron.entity:init
# プレイヤーで常時実行
	execute as @a at @s run function necron.player:tick
# アイテムを投げている
	execute as @e[type=minecraft:armor_stand,tag=NSD.IT] at @s run function necron.player:item.throwing/tick

#  闇の一党
	execute as @a at @s run function necron.player:damage.taken/protection
	execute as @e[type=arrow] at @s run function necron.player:damage.taken/arrow
	execute as @e[type=creeper] at @s run function necron.player:damage.taken/creeper
	execute as @a at @s run function necron.player:damage.taken/damage.taken.0

# 攻撃
	execute as @a at @s run function necron.player:attack/attack.0

# Ultimate Combat	
	execute as @a at @s run function necron.player:ultimate.combat/ultimate.combat
	
# Colorful Magic
	execute as @a at @s run function necron.player:necron.magic/necron.magic

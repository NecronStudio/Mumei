#> necron.core:tick
#
# 常時実行
#
# @within tag/function minecraft:tick

#  闇の一党
execute as @e[type=arrow] at @s run function necron.player:damage.taken/arrow
execute as @e[type=creeper] at @s run function necron.player:damage.taken/creeper
execute as @a at @s run function necron.player:damage.taken/protection
execute as @a at @s run function necron.player:damage.taken/damage.taken.0
execute as @a at @s run function necron.player:attack/attack.0


# プレイヤーで常時実行
	execute as @a run function necron.player:tick

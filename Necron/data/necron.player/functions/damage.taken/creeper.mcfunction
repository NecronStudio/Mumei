#> necron.player:damage.taken/creeper
#
# 常時実行
#
# @within function necron.core:tick

execute store result entity @s ExplosionRadius int 1 run data get entity @s ArmorItems[3].tag.ATK 0.01
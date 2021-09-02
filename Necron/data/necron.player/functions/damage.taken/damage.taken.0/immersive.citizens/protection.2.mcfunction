#> necron.player:damage.taken/damage.taken.0/immersive.citizens/protection.2
#
# 
#
# @within function necron.player:damage.taken/protection

# gswsqf
item replace entity @e[tag=Hclb,limit=1] armor.chest from entity @s armor.chest
execute as @e[tag=Hclb,limit=1] at @s run data modify entity @s ArmorItems[2].tag.Protection set from entity @s ArmorItems[2].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute as @e[tag=Hclb,limit=1] at @s run data modify entity @s ArmorItems[2].tag.Protection set from entity @s ArmorItems[2].tag.Enchantments[{id:"minecraft:protection"}].lvl
data remove entity @e[tag=Hclb,limit=1] ArmorItems[2].tag.Enchantments
item replace entity @s armor.chest from entity @e[tag=Hclb,limit=1] armor.chest
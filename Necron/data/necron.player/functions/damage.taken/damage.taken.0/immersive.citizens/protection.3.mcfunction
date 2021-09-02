#> necron.player:damage.taken/damage.taken.0/immersive.citizens/protection.3
#
# 
#
# @within function necron.player:damage.taken/protection

# gswsqf
item replace entity @e[tag=Hclb,limit=1] armor.head from entity @s armor.head
execute as @e[tag=Hclb,limit=1] at @s run data modify entity @s ArmorItems[3].tag.Protection set from entity @s ArmorItems[3].tag.Enchantments[{id:"minecraft:protection"}].lvl
data remove entity @e[tag=Hclb,limit=1] ArmorItems[3].tag.Enchantments
item replace entity @s armor.head from entity @e[tag=Hclb,limit=1] armor.head
#> necron.player:damage.taken/damage.taken.0/immersive.citizens/protection.0
#
# 
#
# @within function necron.player:damage.taken/protection

# gswsqf
item replace entity @e[tag=Hclb,limit=1] armor.feet from entity @s armor.feet
execute as @e[tag=Hclb,limit=1] at @s run data modify entity @s ArmorItems[0].tag.Protection set from entity @s ArmorItems[0].tag.Enchantments[{id:"minecraft:protection"}].lvl
execute as @e[tag=Hclb,limit=1] at @s run data modify entity @s ArmorItems[0].tag.Protection set from entity @s ArmorItems[0].tag.Enchantments[{id:"minecraft:protection"}].lvl
data remove entity @e[tag=Hclb,limit=1] ArmorItems[0].tag.Enchantments
item replace entity @s armor.feet from entity @e[tag=Hclb,limit=1] armor.feet
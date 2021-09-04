#> necron.player:damage.taken/damage.taken.0/immersive.citizens/protection.1
#
# 
#
# @within function necron.player:damage.taken/protection

# gswsqf
item replace entity @e[tag=Hclb,limit=1] armor.legs from entity @s armor.legs
execute as @e[tag=Hclb,limit=1] at @s run data modify entity @s ArmorItems[1].tag.Protection set from entity @s ArmorItems[1].tag.Enchantments[{id:"minecraft:protection"}].lvl
data remove entity @e[tag=Hclb,limit=1] ArmorItems[1].tag.Enchantments
item replace entity @s armor.legs from entity @e[tag=Hclb,limit=1] armor.legs
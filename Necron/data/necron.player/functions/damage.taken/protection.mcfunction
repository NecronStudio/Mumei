 #declare tag Hclb
execute as @a at @s unless entity @e[tag=Hclb] run summon armor_stand ~ ~100 ~ {Tags:["Hclb"],NoGravity:1b,Marker:1b,Invisible:1b}

scoreboard players reset @s NSD.Protection.0
attribute @p minecraft:generic.armor_toughness base set -2147483648
attribute @p minecraft:generic.armor base set -2147483648

# fvsfqsqswsqf
execute if data entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:protection"}].lvl run function necron.player:damage.taken/damage.taken.0/immersive.citizens/protection.3
execute if data entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:protection"}].lvl run function necron.player:damage.taken/damage.taken.0/immersive.citizens/protection.2
execute if data entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:protection"}].lvl run function necron.player:damage.taken/damage.taken.0/immersive.citizens/protection.1
execute if data entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:protection"}].lvl run function necron.player:damage.taken/damage.taken.0/immersive.citizens/protection.0

# jtfbde
data remove entity @e[tag=Hclb,limit=1] ArmorItems[]

# fzsgwjed

execute if data entity @s Inventory[{Slot:103b}].tag.Protection store result score @s NSD.Protection.1 run data get entity @s Inventory[{Slot:103b}].tag.Protection
execute if data entity @s Inventory[{Slot:103b}].tag.Protection store result score @s NSD.Protection.0 run scoreboard players operation @s NSD.Protection.0 += @s NSD.Protection.1
execute if data entity @s Inventory[{Slot:102b}].tag.Protection store result score @s NSD.Protection.1 run data get entity @s Inventory[{Slot:102b}].tag.Protection
execute if data entity @s Inventory[{Slot:102b}].tag.Protection store result score @s NSD.Protection.0 run scoreboard players operation @s NSD.Protection.0 += @s NSD.Protection.1
execute if data entity @s Inventory[{Slot:101b}].tag.Protection store result score @s NSD.Protection.1 run data get entity @s Inventory[{Slot:101b}].tag.Protection
execute if data entity @s Inventory[{Slot:101b}].tag.Protection store result score @s NSD.Protection.0 run scoreboard players operation @s NSD.Protection.0 += @s NSD.Protection.1
execute if data entity @s Inventory[{Slot:100b}].tag.Protection store result score @s NSD.Protection.1 run data get entity @s Inventory[{Slot:100b}].tag.Protection
execute if data entity @s Inventory[{Slot:100b}].tag.Protection store result score @s NSD.Protection.0 run scoreboard players operation @s NSD.Protection.0 += @s NSD.Protection.1
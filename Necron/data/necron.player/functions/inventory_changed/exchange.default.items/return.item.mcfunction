#> necron.player:inventory_changed/exchange.default.items/return.item
#
# アイテムを返す
#
# @within function necron.player:inventory_changed/exchange.default.items/loop

# Slotを取得
	execute store result score $NSD.Slot NSD.Temp run data get storage necron: Armor.Slot
# Slotを消す
	data remove storage necron: Armor.Slot
# チェスト付きトロッコを召喚
	execute unless entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001] run summon minecraft:chest_minecart ~ ~ ~ {Tags:["NSD.ChestMinecart"]}
# アイテムをチェスト付きトロッコに入れる
	execute as @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001] if data entity @s Items[] run data remove entity @s Items
	data modify entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] Items append from storage necron: Armor
# アイテムを返す
	execute if score $NSD.Slot NSD.Temp matches 0 run item replace entity @s hotbar.0 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 1 run item replace entity @s hotbar.1 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 2 run item replace entity @s hotbar.2 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 3 run item replace entity @s hotbar.3 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 4 run item replace entity @s hotbar.4 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 5 run item replace entity @s hotbar.5 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 6 run item replace entity @s hotbar.6 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 7 run item replace entity @s hotbar.7 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 8 run item replace entity @s hotbar.8 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 9 run item replace entity @s inventory.0 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 10 run item replace entity @s inventory.1 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 11 run item replace entity @s inventory.2 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 12 run item replace entity @s inventory.3 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 13 run item replace entity @s inventory.4 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 14 run item replace entity @s inventory.5 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 15 run item replace entity @s inventory.6 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 16 run item replace entity @s inventory.7 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 17 run item replace entity @s inventory.8 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 18 run item replace entity @s inventory.9 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 19 run item replace entity @s inventory.10 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 20 run item replace entity @s inventory.11 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 21 run item replace entity @s inventory.12 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 22 run item replace entity @s inventory.13 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 23 run item replace entity @s inventory.14 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 24 run item replace entity @s inventory.15 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 25 run item replace entity @s inventory.16 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 26 run item replace entity @s inventory.17 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 27 run item replace entity @s inventory.18 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 28 run item replace entity @s inventory.19 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 29 run item replace entity @s inventory.20 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 30 run item replace entity @s inventory.21 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 31 run item replace entity @s inventory.22 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 32 run item replace entity @s inventory.23 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 33 run item replace entity @s inventory.24 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 34 run item replace entity @s inventory.25 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 35 run item replace entity @s inventory.26 from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 103 run item replace entity @s armor.head from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 102 run item replace entity @s armor.chest from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 101 run item replace entity @s armor.legs from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches 100 run item replace entity @s armor.feet from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0
	execute if score $NSD.Slot NSD.Temp matches -106 run item replace entity @s weapon.offhand from entity @e[type=minecraft:chest_minecart,tag=NSD.ChestMinecart,distance=..0.001,limit=1] container.0

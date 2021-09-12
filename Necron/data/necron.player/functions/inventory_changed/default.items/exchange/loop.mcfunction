#> necron.player:inventory_changed/default.items/exchange/loop
#
# アイテムを返す
#
# @within function necron.player:inventory_changed/default.items/
# @private

# 一つ目のアイテムを移す
	data modify storage necron: Item set from storage necron: DamageItems[0]
# アイテムの内容を変える
	# 防具
		execute if data storage necron: {Item:{id:"minecraft:leather_helmet"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Head"],Status:{DEF:5}},display:{Lore:['{"text":"DEF +5","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:leather_chestplate"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Chest"],Status:{DEF:15}},display:{Lore:['{"text":"DEF +15","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:leather_leggings"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Legs"],Status:{DEF:10}},display:{Lore:['{"text":"DEF +10","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:leather_boots"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Feet"],Status:{DEF:5}},display:{Lore:['{"text":"DEF +5","color":"green","italic":false}']}}

		execute if data storage necron: {Item:{id:"minecraft:chainmail_helmet"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Head"],Status:{DEF:10}},display:{Lore:['{"text":"DEF +10","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:chainmail_chestplate"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Chest"],Status:{DEF:25}},display:{Lore:['{"text":"DEF +25","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:chainmail_leggings"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Legs"],Status:{DEF:20}},display:{Lore:['{"text":"DEF +20","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:chainmail_boots"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Feet"],Status:{DEF:5}},display:{Lore:['{"text":"DEF +5","color":"green","italic":false}']}}

		execute if data storage necron: {Item:{id:"minecraft:stone_helmet"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Head"],Status:{DEF:10}},display:{Lore:['{"text":"DEF +10","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:stone_chestplate"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Chest"],Status:{DEF:30}},display:{Lore:['{"text":"DEF +30","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:stone_leggings"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Legs"],Status:{DEF:25}},display:{Lore:['{"text":"DEF +25","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:stone_boots"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Feet"],Status:{DEF:10}},display:{Lore:['{"text":"DEF +10","color":"green","italic":false}']}}

		execute if data storage necron: {Item:{id:"minecraft:diamond_helmet"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Head"],Status:{DEF:15}},display:{Lore:['{"text":"DEF +15","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:diamond_chestplate"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Chest"],Status:{DEF:40}},display:{Lore:['{"text":"DEF +40","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:diamond_leggings"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Legs"],Status:{DEF:30}},display:{Lore:['{"text":"DEF +30","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:diamond_boots"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Feet"],Status:{DEF:15}},display:{Lore:['{"text":"DEF +15","color":"green","italic":false}']}}

		execute if data storage necron: {Item:{id:"minecraft:golden_helmet"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Head"],Status:{DEF:10}},display:{Lore:['{"text":"DEF +10","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:golden_chestplate"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Chest"],Status:{DEF:25}},display:{Lore:['{"text":"DEF +25","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:golden_leggings"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Legs"],Status:{DEF:15}},display:{Lore:['{"text":"DEF +15","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:golden_boots"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[],NSD:{Slot:["Feet"],Status:{DEF:5}},display:{Lore:['{"text":"DEF +5","color":"green","italic":false}']}}

		execute if data storage necron: {Item:{id:"minecraft:netherite_helmet"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:0.1,Slot:"head",AttributeName:"generic.knockback_resistance",Operation:0,UUID:[I;1,0,0,1],Name:"generic.knockback_resistance"}],NSD:{Slot:["Head"],Status:{DEF:15}},display:{Lore:['{"text":"DEF +15","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:netherite_chestplate"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:0.1,Slot:"chest",AttributeName:"generic.knockback_resistance",Operation:0,UUID:[I;1,0,0,2],Name:"generic.knockback_resistance"}],NSD:{Slot:["Chest"],Status:{DEF:40}},display:{Lore:['{"text":"DEF +40","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:netherite_leggings"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:0.1,Slot:"legs",AttributeName:"generic.knockback_resistance",Operation:0,UUID:[I;1,0,0,3],Name:"generic.knockback_resistance"}],NSD:{Slot:["Legs"],Status:{DEF:30}},display:{Lore:['{"text":"DEF +30","color":"green","italic":false}']}}
		execute if data storage necron: {Item:{id:"minecraft:netherite_boots"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:0.1,Slot:"feet",AttributeName:"generic.knockback_resistance",Operation:0,UUID:[I;1,0,0,4],Name:"generic.knockback_resistance"}],NSD:{Slot:["Feet"],Status:{DEF:15}},display:{Lore:['{"text":"DEF +15","color":"green","italic":false}']}}
	# 武器
		execute if data storage necron: {Item:{id:"minecraft:wooden_sword"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:3,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:4}},display:{Lore:['{"text":"ATK +4","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:wooden_axe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:6,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:7}},display:{Lore:['{"text":"ATK +7","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:wooden_pickaxe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:1,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:2}},display:{Lore:['{"text":"ATK +2","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:wooden_shovel"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:2,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:3}},display:{Lore:['{"text":"ATK +3","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:wooden_hoe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:0,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:1}},display:{Lore:['{"text":"ATK +1","color":"red","italic":false}']},HideFlags:2}

		execute if data storage necron: {Item:{id:"minecraft:golden_sword"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:3,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:4}},display:{Lore:['{"text":"ATK +4","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:golden_axe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:6,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:7}},display:{Lore:['{"text":"ATK +7","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:golden_pickaxe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:1,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:2}},display:{Lore:['{"text":"ATK +2","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:golden_shovel"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:2,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:3}},display:{Lore:['{"text":"ATK +3","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:golden_hoe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:0,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:1}},display:{Lore:['{"text":"ATK +1","color":"red","italic":false}']},HideFlags:2}

		execute if data storage necron: {Item:{id:"minecraft:stone_sword"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:4,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:5}},display:{Lore:['{"text":"ATK +5","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:stone_axe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:8,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:9}},display:{Lore:['{"text":"ATK +9","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:stone_pickaxe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:2,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:3}},display:{Lore:['{"text":"ATK +3","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:stone_shovel"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:3,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:4}},display:{Lore:['{"text":"ATK +4","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:stone_hoe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:0,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:1}},display:{Lore:['{"text":"ATK +1","color":"red","italic":false}']},HideFlags:2}

		execute if data storage necron: {Item:{id:"minecraft:iron_sword"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:5,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:6}},display:{Lore:['{"text":"ATK +6","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:iron_axe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:8,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:9}},display:{Lore:['{"text":"ATK +9","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:iron_pickaxe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:3,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:4}},display:{Lore:['{"text":"ATK +4","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:iron_shovel"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:4,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:5}},display:{Lore:['{"text":"ATK +5","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:iron_hoe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:0,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:1}},display:{Lore:['{"text":"ATK +1","color":"red","italic":false}']},HideFlags:2}

		execute if data storage necron: {Item:{id:"minecraft:diamond_sword"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:6,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:7}},display:{Lore:['{"text":"ATK +7","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:diamond_axe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:8,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:9}},display:{Lore:['{"text":"ATK +9","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:diamond_pickaxe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:4,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:5}},display:{Lore:['{"text":"ATK +5","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:diamond_shovel"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:5,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:6}},display:{Lore:['{"text":"ATK +6","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:diamond_hoe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:0,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:1}},display:{Lore:['{"text":"ATK +1","color":"red","italic":false}']},HideFlags:2}

		execute if data storage necron: {Item:{id:"minecraft:netherite_sword"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:7,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:8}},display:{Lore:['{"text":"ATK +8","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:netherite_axe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:9,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:10}},display:{Lore:['{"text":"ATK +10","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:netherite_pickaxe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:5,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:6}},display:{Lore:['{"text":"ATK +6","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:netherite_shovel"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:6,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:7}},display:{Lore:['{"text":"ATK +7","color":"red","italic":false}']},HideFlags:2}
		execute if data storage necron: {Item:{id:"minecraft:netherite_hoe"}} run data modify storage necron: Item.tag merge value {AttributeModifiers:[{Amount:0,Slot:"mainhand",AttributeName:"generic.attack_damage",Operation:0,UUID:[I;2,0,0,1],Name:"generic.attack_damage"}],NSD:{Slot:["Mainhand"],Status:{ATK:1}},display:{Lore:['{"text":"ATK +1","color":"red","italic":false}']},HideFlags:2}
# アイテムを返す
	execute store success score $NSD.Success NSD.Temp run data modify storage necron: DamageItems[0] set from storage necron: Item
	execute if score $NSD.Success NSD.Temp matches 1 positioned ~ -3000 ~ run function necron.player:inventory_changed/default.items/exchange/return.item
# データを消す
	data remove storage necron: DamageItems[0]
# ループ
	execute if data storage necron: DamageItems[0] run function necron.player:inventory_changed/default.items/exchange/loop

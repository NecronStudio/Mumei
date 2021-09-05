#> necron.player:inventory_changed/default.items/exchange/loop
#
# アイテムを返す
#
# @within function necron.player:inventory_changed/default.items/
# @private

# 一つ目のアイテムを移す
	data modify storage necron: Armor set from storage necron: DamageItems[0]
# アイテムの内容を変える
	execute if data storage necron: {Armor:{id:"minecraft:leather_helmet"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Head"],Status:{DEF:5}},display:{Lore:['{"text":"DEF +5","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:leather_chestplate"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Chest"],Status:{DEF:15}},display:{Lore:['{"text":"DEF +15","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:leather_leggings"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Legs"],Status:{DEF:10}},display:{Lore:['{"text":"DEF +10","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:leather_boots"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Feet"],Status:{DEF:5}},display:{Lore:['{"text":"DEF +5","color":"green","italic":false}']}}

	execute if data storage necron: {Armor:{id:"minecraft:chainmail_helmet"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Head"],Status:{DEF:10}},display:{Lore:['{"text":"DEF +10","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:chainmail_chestplate"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Chest"],Status:{DEF:25}},display:{Lore:['{"text":"DEF +25","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:chainmail_leggings"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Legs"],Status:{DEF:20}},display:{Lore:['{"text":"DEF +20","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:chainmail_boots"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Feet"],Status:{DEF:5}},display:{Lore:['{"text":"DEF +5","color":"green","italic":false}']}}

	execute if data storage necron: {Armor:{id:"minecraft:iron_helmet"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Head"],Status:{DEF:10}},display:{Lore:['{"text":"DEF +10","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:iron_chestplate"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Chest"],Status:{DEF:30}},display:{Lore:['{"text":"DEF +30","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:iron_leggings"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Legs"],Status:{DEF:25}},display:{Lore:['{"text":"DEF +25","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:iron_boots"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Feet"],Status:{DEF:10}},display:{Lore:['{"text":"DEF +10","color":"green","italic":false}']}}

	execute if data storage necron: {Armor:{id:"minecraft:diamond_helmet"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Head"],Status:{DEF:15}},display:{Lore:['{"text":"DEF +15","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:diamond_chestplate"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Chest"],Status:{DEF:40}},display:{Lore:['{"text":"DEF +40","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:diamond_leggings"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Legs"],Status:{DEF:30}},display:{Lore:['{"text":"DEF +30","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:diamond_boots"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Feet"],Status:{DEF:15}},display:{Lore:['{"text":"DEF +15","color":"green","italic":false}']}}

	execute if data storage necron: {Armor:{id:"minecraft:golden_helmet"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Head"],Status:{DEF:10}},display:{Lore:['{"text":"DEF +10","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:golden_chestplate"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Chest"],Status:{DEF:25}},display:{Lore:['{"text":"DEF +25","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:golden_leggings"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Legs"],Status:{DEF:15}},display:{Lore:['{"text":"DEF +15","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:golden_boots"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[],NSD:{Slot:["Feet"],Status:{DEF:5}},display:{Lore:['{"text":"DEF +5","color":"green","italic":false}']}}

	execute if data storage necron: {Armor:{id:"minecraft:netherite_helmet"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[{Amount:0.1,Slot:"head",AttributeName:"generic.knockback_resistance",Operation:0,UUID:[I;1,0,0,1],Name:"generic.knockback_resistance"}],NSD:{Slot:["Head"],Status:{DEF:15}},display:{Lore:['{"text":"DEF +15","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:netherite_chestplate"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[{Amount:0.1,Slot:"chest",AttributeName:"generic.knockback_resistance",Operation:0,UUID:[I;1,0,0,2],Name:"generic.knockback_resistance"}],NSD:{Slot:["Chest"],Status:{DEF:40}},display:{Lore:['{"text":"DEF +40","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:netherite_leggings"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[{Amount:0.1,Slot:"legs",AttributeName:"generic.knockback_resistance",Operation:0,UUID:[I;1,0,0,3],Name:"generic.knockback_resistance"}],NSD:{Slot:["Legs"],Status:{DEF:30}},display:{Lore:['{"text":"DEF +30","color":"green","italic":false}']}}
	execute if data storage necron: {Armor:{id:"minecraft:netherite_boots"}} run data modify storage necron: Armor.tag merge value {AttributeModifiers:[{Amount:0.1,Slot:"feet",AttributeName:"generic.knockback_resistance",Operation:0,UUID:[I;1,0,0,4],Name:"generic.knockback_resistance"}],NSD:{Slot:["Feet"],Status:{DEF:15}},display:{Lore:['{"text":"DEF +15","color":"green","italic":false}']}}
# アイテムを返す
	execute store success score $NSD.Success NSD.Temp run data modify storage necron: DamageItems[0] set from storage necron: Armor
	execute if score $NSD.Success NSD.Temp matches 1 positioned ~ -3000 ~ run function necron.player:inventory_changed/default.items/exchange/return.item
# データを消す
	data remove storage necron: DamageItems[0]
# ループ
	execute if data storage necron: DamageItems[0] run function necron.player:inventory_changed/default.items/exchange/loop

#> necron.player:necron.magic/magics/lahab/tick
#
# 
#
# @within function necron.player:necron.magic/necron.magic
 #declare tag NSD.Lahab.Main

# アマスタ本体 召喚
execute if data entity @s {SelectedItem:{tag:{NSD:{Magic:["lahab"]}}}} if score @s NSD.Magic.Right matches 1.. if score @s NSD.MP matches 10.. run function necron.player:necron.magic/magics/lahab/set
execute if data entity @s {Inventory:[{Slot:-106b,tag:{NSD:{Magic:["lahab"]}}}]} if score @s NSD.Magic.Right matches 1.. if score @s NSD.MP matches 10.. run function necron.player:necron.magic/magics/lahab/set
# アマスタの動き
execute as @e[type=armor_stand,tag=NSD.Lahab.Main] at @s run function necron.player:necron.magic/magics/lahab/move

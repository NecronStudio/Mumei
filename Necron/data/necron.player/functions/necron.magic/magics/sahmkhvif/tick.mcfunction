#> necron.player:necron.magic/magics/sahmkhvif/tick
#
# 
#
# @within function necron.player:necron.magic/necron.magic
 #declare tag NSD.SahmKhvif.Main

# アマスタ本体 召喚
execute if data entity @s {SelectedItem:{tag:{NSD:{Magic:["sahmkhvif"]}}}} if score @s NSD.Magic.Right matches 1.. if score @s NSD.MP matches 10.. run function necron.player:necron.magic/magics/sahmkhvif/set
execute if data entity @s {Inventory:[{Slot:-106b,tag:{NSD:{Magic:["sahmkhvif"]}}}]} if score @s NSD.Magic.Right matches 1.. if score @s NSD.MP matches 10.. run function necron.player:necron.magic/magics/sahmkhvif/set
# アマスタの動き
execute as @e[type=armor_stand,tag=NSD.SahmKhvif.Main] at @s run function necron.player:necron.magic/magics/sahmkhvif/move

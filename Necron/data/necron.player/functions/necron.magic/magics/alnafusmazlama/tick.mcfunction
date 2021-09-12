#> necron.player:necron.magic/magics/alnafusmazlama/tick
#
# 
#
# @within function necron.player:necron.magic/necron.magic
 #declare tag NSD.Alnafusmazlama.Main

# アマスタ本体 召喚
execute if data entity @s {SelectedItem:{tag:{NSD:{Magic:["alnafusmazlama"]}}}} if score @s NSD.Magic.Right matches 1.. if score @s NSD.MP matches 10.. run function necron.player:necron.magic/magics/alnafusmazlama/set
execute if data entity @s {Inventory:[{Slot:-106b,tag:{NSD:{Magic:["alnafusmazlama"]}}}]} if score @s NSD.Magic.Right matches 1.. if score @s NSD.MP matches 10.. run function necron.player:necron.magic/magics/alnafusmazlama/set
# アマスタの動き
execute as @e[type=armor_stand,tag=NSD.Alnafusmazlama.Main] at @s run function necron.player:necron.magic/magics/alnafusmazlama/move

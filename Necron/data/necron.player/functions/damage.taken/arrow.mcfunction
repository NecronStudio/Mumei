execute if data entity @s {ShotFromCrossbow:0b} unless score @s NSD.ActiveEffect matches -2147483648.. store result score @s NSD.ActiveEffect run data get entity @e[type=skeleton,distance=..2,sort=nearest,limit=1] ArmorItems[3].tag.ATK
execute if data entity @s {ShotFromCrossbow:0b} unless score @s NSD.ActiveEffect matches -2147483648.. store result score @s NSD.ActiveEffect run data get entity @e[type=wither_skeleton,distance=..2,sort=nearest,limit=1] ArmorItems[3].tag.ATK
execute if data entity @s {ShotFromCrossbow:1b} unless score @s NSD.ActiveEffect matches -2147483648.. store result score @s NSD.ActiveEffect run data get entity @e[type=pillager,distance=..2,sort=nearest,limit=1] ArmorItems[3].tag.ATK
execute if data entity @s {ShotFromCrossbow:1b} unless score @s NSD.ActiveEffect matches -2147483648.. store result score @s NSD.ActiveEffect run data get entity @e[type=stray,distance=..2,sort=nearest,limit=1] ArmorItems[3].tag.ATK
execute if data entity @s {ShotFromCrossbow:1b} unless score @s NSD.ActiveEffect matches -2147483648.. store result score @s NSD.ActiveEffect run data get entity @e[type=piglin,distance=..2,sort=nearest,limit=1] ArmorItems[3].tag.ATK

data modify entity @s damage set value 0.001
execute if score @s NSD.ActiveEffect matches 1.. store result entity @s CustomPotionEffects[{Id:20b}].Duration int 1 run scoreboard players get @s NSD.ActiveEffect
execute if score @s NSD.ActiveEffect matches 1.. if data entity @s {inGround:1b} run kill @s
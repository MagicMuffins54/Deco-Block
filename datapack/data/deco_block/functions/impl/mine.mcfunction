data remove storage deco_block:data root.tool
data modify storage deco_block:data root.tool set from entity @s SelectedItem
execute store success score #silk_touch deco_block.mine if data storage deco_block:data root.tool.tag.Enchantments[{id:"minecraft:silk_touch"}]
execute as @e[type=item_display,tag=deco_block,distance=..10] at @s run function deco_block:impl/block/tick
scoreboard players reset @s deco_block.mine
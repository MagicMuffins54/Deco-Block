data modify storage deco_block:data root.drop set from entity @s item.tag.deco_block.drop
execute if data storage deco_block:data root.tool.tag.Enchantments[{id:"minecraft:silk_touch"}]
execute as @e[type=item,predicate=deco_block:is_custom_block,distance=..4] run function deco_block:impl/block/drops
kill @s
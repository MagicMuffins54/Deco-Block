data modify storage deco_block:data root.item.crop set from entity @s item.tag.deco_block.crop
execute store result score deco_block:data root.item.age run scoreboard players get @s deco_block.crop
function #deco_block:crop/drops
execute if entity @s[tag=!deco_block.crop_beetroot] run kill @e[type=item,predicate=deco_block:is_beetroot,distance=..5]
kill @s
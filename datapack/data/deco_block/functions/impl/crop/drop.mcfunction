data modify storage deco_block:data root.crop.id set from entity @s item.tag.deco_block.crop
execute store result storage deco_block:data root.crop.age int 1 run scoreboard players get @s deco_block.crop
function #deco_block:crop/drops
execute if entity @s[tag=!deco_block.crop_beetroot] run kill @e[type=item,predicate=deco_block:is_beetroot,distance=..5]
kill @s
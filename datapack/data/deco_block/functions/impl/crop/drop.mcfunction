data modify storage deco_block:data root.item.crop set from entity @s item.tag.deco_block.crop
execute store result score deco_block:data root.item.age run scoreboard players get @s deco_block.crop

kill @e[type=item,nbt={Item:{id:"minecraft:beetroot"},Age:0s}]
kill @s
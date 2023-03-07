data merge entity @s {Tags:["deco_block.crop"],transformation:{translation:[0f, -0.0625f, 0f], scale:[1f, 1f, 1f], left_rotation:[0.0f, 0.0f, 0.0f, 1.0f], right_rotation:[0f, 0f, 0f, 1.0f]}}
data modify entity @s item set from storage deco_block:data root.item
setblock ~ ~ ~ beetroots[age=0]
scoreboard players set @s deco_block.crop 0
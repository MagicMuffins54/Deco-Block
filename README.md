# How to use CUSTOM BLOCK:
1) add to your pack the function tag at `...\data\deco_block\tags\functions\block\drops.json`, which calls a function that runs a command like

```haskell
execute if data storage deco_block:data root{drop:"namespace:cool_ore"} run loot spawn ~ ~ ~ loot namespace:cool_ore
```

2) create a loot table with a format as follows:
```json
{
    "pools": [
      {
        "rolls": 1,
        "entries": [
          {
            "type": "minecraft:item",
            "name": "minecraft:furnace",
            "functions": [
              {
                "function": "minecraft:set_nbt",
                "tag": "{BlockEntityTag:{Items:[{id:\"minecraft:furnace\",Count:1b,Slot:0b,tag:{CustomModelData:<cmd of the displayed block goes here>,smithed:{block:{id:\"deco_block\"}},deco_block:{drop:\"<tag to check for which block you mined (namespacing suggested)>\"}}}]}}"
              }
            ]
          }
        ]
      }
    ]
  }
```
`tag.BlockEntityTag.Items[0].tag.deco_block.drop` is where the check for the mined block id occurs
3) Install smithed.custom_block if you haven't aready. https://wiki.smithed.dev/libraries/custom-block/

# Extras

score `#silk_touch deco_block.mine` will be `1` when the tool used to break the block is enchanted with silk touch
storage `deco_block:data root.tool` contains the nbt of the tool used to mine the block
support for looting enchant coming soon

# How to use CUSTOM CROP:
1) add to your pack the function tag at `...\data\deco_block\tags\functions\crops\drops.json`, which calls a function that runs a command like

```haskell
execute if data storage deco_block:data root.crop{id:"example:banana"} run loot spawn ~ ~ ~ loot example:banana
```

2) create a loot table with a format as follows:
```json
{
    "pools": [
      {
        "rolls": 1,
        "entries": [
          {
            "type": "minecraft:item",
            "name": "minecraft:item_frame",
            "functions": [
              {
                "function": "minecraft:set_nbt",
                "tag": "{smithed:{id:\"deco_block\"},CustomModelData:880004,EntityTag:{Invulnerable:1b,Invisible:1b,Fixed:1b,Rotation:1b,Tags:[\"deco_block\"],Item:{id:\"minecraft:beetroot\",Count:1b,tag:{CustomModelData:880004,deco_block:{crop:\"example:banana\",CustomModelData:[880005,880006,880007]}}}}}"
              }
            ]
          }
        ]
      }
    ]
  }
```
# Extras
`deco_block:data root.crop.age` stores the age at which the crop was broken

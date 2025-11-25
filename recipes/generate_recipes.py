

import os
import PIL.Image as Image
import re
import json

resource_pack_path = "C:/Users/caleb/AppData/Roaming/.minecraft/versions/1.21.10/assets"
recipe_file = "recipes/potions.json"
effect_path = f"{resource_pack_path}/minecraft/textures/mob_effect/"

img_bottom_edge = Image.open("recipes/bottom_edge.png").convert("RGBA")
img_top_edge = Image.open("recipes/top_edge.png").convert("RGBA")
img_left_edge = Image.open("recipes/left_edge.png").convert("RGBA")
img_right_edge = Image.open("recipes/right_edge.png").convert("RGBA")

img_bottom_left_corner = Image.open("recipes/bottom_left_corner.png").convert("RGBA")
img_bottom_right_corner = Image.open("recipes/bottom_right_corner.png").convert("RGBA")
img_top_left_corner = Image.open("recipes/top_left_corner.png").convert("RGBA")
img_top_right_corner = Image.open("recipes/top_right_corner.png").convert("RGBA")

img_container = Image.open("recipes/container.png").convert("RGBA")
img_arrow = Image.open("recipes/arrow.png").convert("RGBA")
img_equals = Image.open("recipes/equals.png").convert("RGBA")
img_redirect = Image.open("recipes/redirect.png").convert("RGBA")

img_time = Image.open("recipes/time.png").convert("RGBA")
img_potency = Image.open("recipes/potency.png").convert("RGBA")

ending_line = r"^\n?$"
transmutation_start = r"^.*\"transmutations\".*$"
base_name = r"^.*\"transmutations\".*$"
item_line = r"^.*\"item\": ?\"minecraft:sugar\".*$"

def get_effect_texture(name: str):
    effect = name.split(":")[1]
    return Image.open(f"{resource_pack_path}/minecraft/textures/mob_effect/{effect}.png").convert("RGBA")
    
local_textures =  {
    "minecraft:enchanted_golden_apple": "enchanted_golden_apple.png",
    "minecraft:wither_skeleton_skull": "wither.png",
    "minecraft:sculk_shrieker": "sculk_shrieker.png"
}
def get_item_texture(name: str):
    splt = name.split(":")
    namespace = splt[0]
    item = splt[1]

    cwd = os.getcwd()

    try:
        
        os.chdir(resource_pack_path)

        os.chdir(f"{namespace}/textures")
        item_path = f"item/{item}.png"
        block_path = f"block/{item}.png"

        if os.path.exists(item_path):
            return Image.open(item_path).convert("RGBA")
        elif os.path.exists(block_path):
            return Image.open(block_path).convert("RGBA")
        elif name in local_textures.keys():
            return Image.open(f"C:/Users/caleb/AppData/Roaming/.minecraft/saves/Creative 1_21_10/datapacks/CauldronBrewing - 1.21.10/recipes/{local_textures[name]}").convert("RGBA")
        else:
            # Last-ditch effort to pattern-match the name
            matching = [block for block in os.listdir("block") if re.match(rf"$.*{block}.*.png^")]

            if matching:
                return Image.open(matching[0]).convert("RGBA")

    except:
        pass
    finally:
        os.chdir(cwd)
    
    return None


file_contents = ""
with open(recipe_file, "r") as file:
    file_contents = "".join(file.readlines())
recipes = json.loads(file_contents)

# Preprocessing to get initial values
named = {}
for recipe in recipes["recipes"]:
    named[recipe["base"]] = recipe
    item_texture = get_item_texture(recipe["item"])
    if not item_texture:
        item_texture = Image.open(f"{resource_pack_path}/minecraft/textures/item/barrier.png").convert("RGBA")
    recipe["texture"] = item_texture


all_recipes = []

for recipe in recipes["recipes"]:

    if recipe["item"] == "minecraft:none":
        continue
    recipe = named[recipe["base"]]
    effects_width = (img_container.width * 2) + (img_container.width * len(recipe["effects"]))
    transmutation_width = 0
    if len(recipe["transmutations"]):
        transmutation_width = (img_container.width) * (3 + max([len(named[transm["target"]]["effects"]) for transm in recipe["transmutations"]])) 
    size = [img_left_edge.width + img_right_edge.width + max(effects_width, transmutation_width), img_top_edge.height + img_bottom_edge.height + img_container.height]

    if len(recipe["transmutations"]):
        size[1] += img_container.height
    
    img = Image.new("RGBA", size, "#8B8B8B")

    # Edges
    img.paste(img_top_edge, (0, 0))
    img.paste(img_left_edge, (0, img_top_edge.height))
    img.paste(img_bottom_edge, (0, img.height - img_bottom_edge.height))
    img.paste(img_right_edge, (img.width - img_right_edge.width, img_top_edge.height))

    # Corner
    img.paste(img_top_left_corner, (0, 0))
    img.paste(img_top_right_corner, (img.width - img_top_right_corner.width, 0))
    img.paste(img_bottom_left_corner, (0, img.height - img_bottom_left_corner.height))
    img.paste(img_bottom_right_corner, (img.width - img_bottom_right_corner.width, img.height - img_bottom_right_corner.height))

    # Containers
    item_texture = recipe["texture"]
    img.paste(img_container, (img_top_left_corner.width, img_top_left_corner.height))
    img.paste(item_texture, (img_top_left_corner.width + 1, img_top_left_corner.height + 1), item_texture)

    img.paste(img_arrow, (img_top_left_corner.width + img_container.width, img_top_left_corner.height))

    index = 0
    for effect in recipe["effects"]:
        effect_texture = get_effect_texture(effect["effect"])
        img.paste(img_container, (img_top_left_corner.width + img_container.width * (2 + index), img_top_left_corner.height))
        img.paste(effect_texture, (img_top_left_corner.width + img_container.width * (2 + index), img_top_left_corner.height), effect_texture)
        index += 1

    index = 0
    if len(recipe["transmutations"]):
        transmutation = recipe["transmutations"][index]
        img.paste(img_redirect, (img_top_left_corner.width, img_top_left_corner.height + img_container.height * (1 + index)))

        item_texture = get_item_texture(transmutation["item"])
        if not item_texture:
            item_texture = Image.open(f"{resource_pack_path}/minecraft/textures/item/barrier.png").convert("RGBA")
        img.paste(img_container, (img_top_left_corner.width + (img_container.width * 1), img_top_left_corner.height + img_container.height * (1 + index)))
        img.paste(item_texture, (img_top_left_corner.width + (img_container.width * 1) + 1, img_top_left_corner.height + img_container.height * (1 + index) + 1), item_texture)
        
        img.paste(img_equals, (img_top_left_corner.width + (img_container.width * 2), img_top_left_corner.height + img_container.height * (1 + index)))

        effect = named[transmutation["target"]]
        effect_index = 0
        for target_effect in effect["effects"]:
            effect_texture = get_effect_texture(target_effect["effect"])
            img.paste(img_container, (img_top_left_corner.width + (img_container.width * 3 + effect_index), img_top_left_corner.height + img_container.height * (1 + index)))
            img.paste(effect_texture, (img_top_left_corner.width + (img_container.width * 3 + effect_index), img_top_left_corner.height + img_container.height * (1 + index)), effect_texture)
            effect_index += 1

        index += 1
        
    for i in range(recipe["maximums"]["duration"]):
        img.paste(img_time, (img_top_left_corner.width - 2 + (i * (img_time.width + 1)), img_top_left_corner.height - 2), img_time)
        
    for i in range(recipe["maximums"]["potency"]):
        img.paste(img_potency, (img_top_left_corner.width - 2 + (i * (img_time.width + 1)), item_texture.height + img_top_left_corner.height - 1), img_potency)


    all_recipes.append(img)



bounds = [0, 0]
for recipe in all_recipes:
    bounds[0] = max(bounds[0], recipe.width)
    bounds[1] += recipe.height

img = Image.new("RGBA", bounds, "#00000000")
coll = 0
for recipe in all_recipes:
    img.paste(recipe, (int((img.width - recipe.width) / 2), coll))
    coll += recipe.height

img.show()


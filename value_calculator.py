
raw_json = """
# _name_
data modify storage cauldronbrewing:data potion_modifiers append value {\\
    "base": "cauldronbrewing:_base_",\\
    "item": "minecraft:_item_",\\
    "potency_duration_exclusive": true,\\
    "color": _color_,\\
    "name": {"text":"_potionname_","italic": false},\\
    "transmutations":[\_transmutations_
    ],\\
    "maximums": {\\
        "duration": 1,\\
        "potency": 1\\
    },\\
    "effects": [\\_effects_
    ]\\
}"""

effects_json = """
        {\\
            "effect": "minecraft:_effect_",\\
            "hide_particles": _hideeffects_,\\
            "base": {\\
                "potency": _basepot_f,\\
                "duration": _basedur_\\
            },\\
            "potency_modifier": {\\
                "bonus": _potmodpot_f,\\
                "penalty": _potmoddur_\\
            },\\
            "duration_modifier": {\\
                "bonus": _durmoddur_,\\
                "penalty": _durmodpot_f\\
            },\\
            "splash_modifier": {\\
                "duration_penalty": {\\
                    "static": 0,\\
                    "potency": 0,\\
                    "duration": 0\\
                },\\
                "potency_penalty": {\\
                    "static": 0.0f,\\
                    "potency": 0.0f,\\
                    "duration": 0.0f\\
                }\\
            },\\
            "lingering_modifier": {\\
                "duration_penalty": {\\
                    "static": 0,\\
                    "potency": 0,\\
                    "duration": 0\\
                },\\
                "potency_penalty": {\\
                    "static": 0.0f,\\
                    "potency": 0.0f,\\
                    "duration": 0.0f\\
                }\\
            }\\
        }\\"""

transmutations_json = """
        {\\
            "item": "minecraft:_item_",\\
            "target": "cauldronbrewing:_effect_"\\
        }\\"""


import os
import PIL.Image as Image


def ensure_dir(directory):
    if not os.path.exists(directory):
        os.mkdir(directory)


def replace_values(value, dictionary: dict):
    for key in dictionary.keys():
        value = value.replace(key, dictionary[key])
    return value


def replace_file(filepath, dictionary: dict, destination = None):
    if not destination:
        destination = replace_values(filepath, dictionary)
    
    lines = []
    with open(filepath, "r") as file:
        lines = [replace_values(line, dictionary) for line in file.readlines()]
    with open(destination, "w") as file:
        file.writelines(lines)


def replace_propagate(directory, dictionary, destination = None):
    if not destination:
        destination = replace_values(directory, dictionary)
    if not os.path.exists(destination):
        os.mkdir(destination)

    # Replace files
    for filename in [name for name in os.listdir(directory) if os.path.isfile(directory + "/" + name)]:
        replace_file(filename, dictionary)
    
    # Propagate through directories
    for dirname in [name for name in os.listdir(directory) if os.path.isdir(directory + "/" + name)]:
        new_dirname = replace_values(dirname, dictionary)
        new_destination = destination + "/" + new_dirname
        os.mkdir(new_destination)

        replace_propagate(directory + "/" + dirname, dictionary, new_destination)


def replace_palette(img: Image.Image, old_palette: list, new_palette: list):
    for x in range(img.size[0]):
        for y in range(img.size[1]):
            pixel = img.getpixel((x, y))
            if pixel in old_palette:
                index = old_palette.index(pixel)
                img.putpixel((x, y), new_palette[index])
    return img

def fit_image(img: Image.Image):
    size = [int(img.width), int(img.height)]

    end_size = [int(img.width), int(img.height)]

    not_snug = False
    for x in range(size[0]):
        if not_snug:
            break
        for y in range(size[1]):
            pixel = img.getpixel((x, y))
            if pixel[3] == 0:
                not_snug = True
                break
    
    if not_snug:
        for x in range(size[0]):
            pixel = img.getpixel((x, 0))
            if pixel[3] != 0:
                end_size[0] = size[0] - 2*x
                break
        for y in range(size[1]):
            pixel = img.getpixel((0, y))
            if pixel[3] != 0:
                end_size[1] = size[1] - 2*y
                break

        return img.crop(((size[0] - end_size[0])/2, (size[1] - end_size[1])/2, (size[0] - end_size[0])/2 + end_size[0], (size[1] - end_size[1])/2 + end_size[1]))
    return img


def convert_time(raw_time: str):
    splt = raw_time.split(":")
    minute = int(splt[0])
    seconds = int(splt[1])

    return str(int(20 * (seconds + (minute * 60))))


replacements = {}

name = input("Name: ")
replacements["_base_"] = name.replace(" ", "_")
name = name.title()
replacements["_name_"] = name

potion_name = input(f"Potion name (blank for \"Potion of {name}\"): ")
if not len(potion_name):
    potion_name = f"Potion of {name}"
replacements["_potionname_"] = potion_name

replacements["_color_"] = input("Color: ")

item = input(f"Item (Leave blank for none): ")
if not len(item):
    item = "none"

transmutation_item = input("Transmutation item (Leave blank for no more): ")
transmutation_coll = []
while transmutation_item:
    transmutation_target = input("Target: ")

    replacements["_item_"] = transmutation_item
    replacements["_effect_"] = transmutation_target

    transmutation_coll.append(replace_values(transmutations_json, replacements))

    transmutation_item = input("Transmutation item (Leave blank for no more): ")

replacements["_transmutations_"] = ",".join(transmutation_coll)
replacements["_item_"] = item

effect_name = input("Effect (Leave blank for no more effects): ")
effect_coll = []
while effect_name:
    replacements["_effect_"] = effect_name

    hide_effects = input("hide_effects (Leave blank for false): ")
    if not hide_effects:
        hide_effects = "false"
    replacements["_hideeffects_"] = hide_effects

    basedur = convert_time(input("Plain time: "))
    basepot = input("Plain amplification (Leave blank for 0): ")
    if not basepot:
        basepot = "0"
    
    boosted = convert_time(input("Boosted time: "))
    amped_duration = convert_time(input("Amplified duration: "))
    amped = input("Amplified value: ")

    replacements["_basepot_"] = str(round(float(basepot), 1))
    replacements["_basedur_"] = basedur
    
    replacements["_potmodpot_"] = str(round(float(amped) - float(basepot), 1))
    replacements["_potmoddur_"] = str(int(amped_duration) - int(basedur))
    replacements["_durmodpot_"] = "0.0"
    replacements["_durmoddur_"] = str(int(boosted) - int(basedur))

    effect_coll.append(replace_values(effects_json, replacements))
    effect_name = input("Effect (Leave blank for no more effects): ")

replacements["_effects_"] = ",".join(effect_coll)

print(replace_values(raw_json, replacements))




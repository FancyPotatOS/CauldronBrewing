

# Potion Format

This document is to generalize the potion brewing system to include all the possible modifiers and potion effects


## Format

### Potion Dictionary

This is stored within the storage array _**cauldronbrewing:data potion_modifiers**_

A quick FYI: The **potency** modifier is a float, and is rounded down after the final value is calculated and are set to 0 if the value is negative

- **base** (string)
    - The identifier for the base type of this potion
    - This will be the reference kept in the potion's custom_data component

- **item** (string)
    - The item that selects this potion
        - This item must be in the _cauldronbrewing:effect_ item tag to take effect

- **hide_particles** (boolean)
    - Whether to hide the particle effects

- **potency_duration_exclusive** (boolean)
    - A boolean value indicating whether potency and duration cannot be applied at the same time

- **color** (int)
    - The integer value of the potion color

- **maximums**
    - A compound describing the maximum modifiers that can be applied

    - **potency** (int)
        - The maximum number of times potency can be applied to the potion
        - Vanilla potions like Strength would have a value of 1, and Wind Charging would have a value of 0

    - **duration** (int)
        - The maximum number of times duration can be applied to the potion
        - Vanilla potions like Strength would have a value of 1, and Wind Charging would have a value of 0

- **name** (string or compound)
    - The name of the potion
    - This is in the nbt string format if you want

- **transmutations**
    - A list of compounds describing how the potion can be changed to other types
    - The only vanilla example of this is Fermented Spider Eyes
    - This may convert the potion to a type in which this potion does not respect _potency_duration_exclusive_. In this case, the _duration_modifier_ values are not lost, but will be unused

    - **item** (string)
        - The item that matches with this transmutation
        - This item must be in the _cauldronbrewing:modifiers/transmutor_ item tag to take effect
    - **target** (string)
        - The identifier that this potion is converted to

- **effects**
    - A list of compounds for each potion effect and their modifiers

    - **effect** (string)
        - The actual potion effect value

    - **base**
        - A compound describing the base values of the potion

        - **potency** (float)
            - The amplifier level
        - **duration** (int)
            - The duration in ticks

    - **potency_modifier**
        - A compound describing how the potion reacts to modifiers that affect its potency

        - **bonus** (float)
            - The increase of amplifier levels per modifier value
        - **penalty** (int)
            - The penalty of duration in ticks per modifier level

    - **duration_modifier**
        - A compound describing how the potion reacts to modifiers that affect its duration

        - **bonus** (int)
            - The increase of duration in ticks per modifier value
        - **penalty** (float)
            - The penalty of amplifier levels per modifier level
            - Usually is 0.0

    - **splash_modifier**
        - A compound describing how the potion reacts to the potion being set to a splash potion
            
        - **potency_penalty**
            - A compound describing how the splash modifier affects the amplifier levels

            - **static** (float)
                - The static penalty of amplifier levels
            
            - **potency** (float)
                - The penalty of amplifier levels per potency modifier level
            
            - **duration** (float)
                - The penalty of amplifier levels per duration modifier level

        - **duration_penalty**
            - A compound describing how the splash modifier affects the duration
            
            - **static** (int)
                - The static penalty of duration in ticks
            
            - **potency** (int)
                - The penalty of duration in ticks per potency modifier level
            
            - **duration** (int)
                - The penalty of duration in ticks per duration modifier level

    - **lingering_modifier**
        - A compound describing how the potion reacts to the potion being set to a lingering potion
        - Keep in mind that Minecraft 1/4's the duration and 1/2's the effectiveness of the potion after it's been calculated

        - **duration_penalty**
            - A compound describing how the lingering modifier affects the duration
            
            - **static** (int)
                - The static penalty of duration in ticks
            
            - **potency** (int)
                - The penalty of duration in ticks per potency modifier level
            
            - **duration** (int)
                - The penalty of duration in ticks per duration modifier level
            
        - **potency_penalty**
            - A compound describing how the lingering modifier affects the amplifier levels

            - **static** (float)
                - The static penalty of amplifier levels
            
            - **potency** (float)
                - The penalty of amplifier levels per potency modifier level
            
            - **duration** (float)
                - The penalty of amplifier levels per duration modifier level

#### Example


Potion of Swiftness:
An entry within storage list _**cauldronbrewing:data potion_modifiers**_
```
{
    "base": "cauldronbrewing:speed",
    "item": "minecraft:sugar",
    "potency_duration_exclusive": true,
    "color": 8171462,
    "name": {"text":"Potion of Swiftness","italic": false},
    "transmutations":[
        {
            "item": "minecraft:fermented_spider_eye",
            "target": "cauldronbrewing:slowness"
        }
    ],
    "maximums": {
        "duration": 1,
        "potency": 1
    },
    "effects": [
        {
            "effect": "minecraft:speed",
            "hide_particles": false,
            "base": {
                "potency": 1,
                "duration": 3600
            },
            "potency_modifier": {
                "max_value": 1,
                "bonus": 1.0f,
                "penalty": -1800
            },
            "duration_modifier": {
                "max_value": 1,
                "bonus": 6000,
                "penalty": 0.0f
            },
            "splash_modifier": {
                "duration_penalty": {
                    "static": 0,
                    "potency": 0,
                    "duration": 0
                },
                "potency_penalty": {
                    "static": 0.0f,
                    "potency": 0.0f,
                    "duration": 0.0f
                }
            },
            "lingering_modifier": {
                "duration_penalty": {
                    "static": 0,
                    "potency": 0,
                    "duration": 0
                },
                "potency_penalty": {
                    "static": 0.0f,
                    "potency": 0.0f,
                    "duration": 0.0f
                }
            }
        }
    ]
}
```

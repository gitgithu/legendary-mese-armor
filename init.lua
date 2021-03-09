local S

if minetest.get_translator ~= nil then
    S = minetest.get_translator(minetest.get_current_modname())
else
    S = function(str)
        return(str)
    end
end

--
-- Armor
--

if minetest.get_modpath("3d_armor") then
    armor:register_armor("legendary_mese_armor:helmet", {
        description = S("Legendary Mese Helmet"),
        inventory_image = "leg_mese_helmet_inv.png",
        light_source = 7, -- Texture will have a glow when dropped
        groups = {armor_head=1, armor_heal=15, armor_use=200, armor_fire=5},
        armor_groups = {fleshy=20},
        damage_groups = {cracky=2, snappy=1, level=3},
        wear = 0,
    })

    armor:register_armor("legendary_mese_armor:chestplate", {
        description = S("Legendary Mese Chestplate"),
        inventory_image = "leg_mese_chestplate_inv.png",
        light_source = 7, -- Texture will have a glow when dropped
        groups = {armor_torso=1, armor_heal=15, armor_use=200, armor_fire=5},
        armor_groups = {fleshy=20},
        damage_groups = {cracky=2, snappy=1, level=3},
        wear = 0,
    })

    armor:register_armor("legendary_mese_armor:leggings", {
        description = S("Legendary Mese Leggings"),
        inventory_image = "leg_mese_leggings_inv.png",
        light_source = 7, -- Texture will have a glow when dropped
        groups = {armor_legs=1, armor_heal=15, armor_use=200, armor_fire=5},
        armor_groups = {fleshy=20},
        damage_groups = {cracky=2, snappy=1, level=3},
        wear = 0,
    })

    armor:register_armor("legendary_mese_armor:boots", {
        description = S("Legendary Mese Boots"),
        inventory_image = "leg_mese_boots_inv.png",
        light_source = 7, -- Texture will have a glow when dropped
        groups = {armor_feet=1, armor_heal=15, armor_use=200, armor_fire=5, physics_jump=0.85, physics_speed = 1.75},
        armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=3},
        wear = 0,
    })

    armor:register_armor("legendary_mese_armor:shield", {
        description = S("Legendary Mese Shield"),
        inventory_image = "leg_mese_shield_inv.png",
        light_source = 7, -- Texture will have a glow when dropped
        groups = {armor_shield=1, armor_heal=20, armor_use=200, armor_fire=10},
        armor_groups = {fleshy=20},
        damage_groups = {cracky=2, snappy=1, level=3},
        wear = 0,
    })
end


--
-- Armor Crafts
--

if minetest.get_modpath("3d_armor") then
    minetest.register_craft({
        output = "legendary_mese_armor:helmet",
        recipe = {
            {"legendary_mese_armor:ingot", "legendary_mese_armor:ingot", "legendary_mese_armor:ingot"},
            {"legendary_mese_armor:ingot", "", "legendary_mese_armor:ingot"},
            {"", "", ""},
        }
    })

    minetest.register_craft({
        output = "legendary_mese_armor:chestplate",
        recipe = {
            {"legendary_mese_armor:ingot", "", "legendary_mese_armor:ingot"},
            {"legendary_mese_armor:ingot", "legendary_mese_armor:ingot", "legendary_mese_armor:ingot"},
            {"legendary_mese_armor:ingot", "legendary_mese_armor:ingot", "legendary_mese_armor:ingot"},
        }
    })

    minetest.register_craft({
        output = "legendary_mese_armor:leggings",
        recipe = {
            {"legendary_mese_armor:ingot", "legendary_mese_armor:ingot", "legendary_mese_armor:ingot"},
            {"legendary_mese_armor:ingot", "", "legendary_mese_armor:ingot"},
            {"legendary_mese_armor:ingot", "", "legendary_mese_armor:ingot"},
        }
    })

    minetest.register_craft({
        output = "legendary_mese_armor:boots",
        recipe = {
            {"legendary_mese_armor:ingot", "", "legendary_mese_armor:ingot"},
            {"legendary_mese_armor:ingot", "", "legendary_mese_armor:ingot"},
        }
    })

    minetest.register_craft({
        output = "legendary_mese_armor:shield",
        recipe = {
            {"legendary_mese_armor:ingot", "legendary_mese_armor:ingot", "legendary_mese_armor:ingot"},
            {"legendary_mese_armor:ingot", "legendary_mese_armor:ingot", "legendary_mese_armor:ingot"},
            {"", "legendary_mese_armor:ingot", ""},
        }
    })
end

--
-- Tools
--
if minetest.get_modpath("default") then
    minetest.register_tool("legendary_mese_armor:pickaxe", {
        description = S("Legendary Mese Pickaxe"),
        inventory_image = "leg_mese_pick.png",
        tool_capabilities = {
            full_punch_interval = 0.5,
            max_drop_level=1,
            groupcaps={
                cracky = {times={[3]=0.25, [2]=0.65, [1]=1}, uses=215, maxlevel=3},
            },
            damage_groups = {fleshy=2},
        },
        sound = {breaks = "default_tool_breaks"},
        groups = {pickaxe = 5, }
    })
    
    minetest.register_tool("legendary_mese_armor:shovel", {
        description = S("Legendary Mese Shovel"),
        inventory_image = "leg_mese_shovel.png",
        tool_capabilities = {
            full_punch_interval = 0.5,
            max_drop_level=1,
            groupcaps={
                crumbly = {times={[1]=0.5, [2]=0.25, [3]=0}, uses=200, maxlevel=3},
            },
            damage_groups = {fleshy=2},
        },
        sound = {breaks = "default_tool_breaks"},
        groups = {shovel = 5}
    })
    
    minetest.register_tool("legendary_mese_armor:axe", {
        description = S("Legendary Mese Axe"),
        inventory_image = "leg_mese_axe.png",
        tool_capabilities = {
            full_punch_interval = 0.5,
            max_drop_level=1,
            groupcaps={
                choppy = {times={[1]=0.5, [2]=0.25, [3]=0}, uses=200, maxlevel=3},
            },
            damage_groups = {fleshy=2},
        },
        sound = {breaks = "default_tool_breaks"},
        groups = {axe = 5}
    })
    
    minetest.register_tool("legendary_mese_armor:sword", {
        description = S("Legendary Mese Sword"),
        inventory_image = "leg_mese_sword.png",
        tool_capabilities = {
            full_punch_interval = .5,
            max_drop_level=1,
            groupcaps={
                snappy={times={[1]=0.0125, [2]=0.0, [3]=0}, uses=200, maxlevel=3},
            },
            damage_groups = {fleshy=15, burn=2},
        },
        sound = {breaks = "default_tool_breaks"},
        groups = {sword = 5}
    })
    
end

--
-- Tool Crafts
--
if minetest.get_modpath("default") then
    minetest.register_craft({
        output = "legendary_mese_armor:pickaxe",
        recipe = {
            {"legendary_mese_armor:ingot", "legendary_mese_armor:ingot", "legendary_mese_armor:ingot"},
            {"", "default:stick", ""},
            {"", "default:stick", ""},
        }
    })
    
    minetest.register_craft({
        output = "legendary_mese_armor:axe",
        recipe = {
            {"legendary_mese_armor:ingot", "legendary_mese_armor:ingot", ""},
            {"legendary_mese_armor:ingot", "default:stick", ""},
            {"", "default:stick", ""},
        }
    })
    
    minetest.register_craft({
        output = "legendary_mese_armor:shovel",
        recipe = {
            {"", "legendary_mese_armor:ingot", ""},
            {"", "default:stick", ""},
            {"", "default:stick", ""},
        }
    })
    
    minetest.register_craft({
        output = "legendary_mese_armor:sword",
        recipe = {
            {"", "legendary_mese_armor:ingot", ""},
            {"", "legendary_mese_armor:ingot", ""},
            {"", "default:stick", ""},
        }
    })
    
end

--
-- Ingots
--

if minetest.get_modpath("default") then
    minetest.register_craftitem("legendary_mese_armor:ingot", {
        description = "Legendary Mese Ingot",
        inventory_image = "leg_mese_ingot.png",
    })

end


--
-- Ingots Crafts
--
if minetest.get_modpath("default") then
    minetest.register_craft({
        type = "shapeless",
        output = "legendary_mese_armor:ingot 8",
        recipe = {"more_mese:legendary_mese", "more_mese:legendary_mese"}
    })
end



function restoreAllBodyParts(player)
    print("restoreAllBodyParts function called.")
    if not player then
        print("Player object not valid in restoreAllBodyParts.")
        return
    end

    local bodyDamage = player:getBodyDamage();
    if not bodyDamage then
        print("BodyDamage object not found.")
        return
    end

    -- Clear general infection parameters
    print("Setting infection parameters to false/zero.")
    bodyDamage:setInfected(false);
    bodyDamage:setInfectionLevel(0);
    bodyDamage:setInfectionGrowthRate(0);
    bodyDamage:setFakeInfectionLevel(0);

    local bodyParts = bodyDamage:getBodyParts();
    if not bodyParts then
        print("BodyParts object not found.")
        return
    end

    print("Iterating over body parts.")
    for i = 0, bodyParts:size() - 1 do
        local bodyPart = bodyParts:get(i);
        if bodyPart then
            print("Restoring body part at index: " .. tostring(i))
            bodyPart:RestoreToFullHealth();
        else
            print("Body part not found at index: " .. tostring(i))
        end
    end
end

function OnDrink_HealthPotion(player)
    print("OnDrink_HealthPotion function called.")
    local player = getPlayer()  -- Retrieve the current player performing the action
    if player then
        print("Player object found. Calling restoreAllBodyParts.")
        restoreAllBodyParts(player)
    else
        print("Invalid player object in OnDrink_HealthPotion.")
    end
end


HealthPotionRecipe = {
    name = "CraftHealthPotion",
    usedItems = {
        ["Base.Bandage"] = 1,
        ["Base.AlcoholWipes"] = 1,
    },
    result = "NUZ.NukaColaZed",
    time = 200,
}

function CraftHealthPotion(player)
    local inventory = player:getInventory()

    for itemCode, neededItemsCount in pairs(HealthPotionRecipe.usedItems) do
        local items = inventory:getAllType(itemCode)
        for i = 1, neededItemsCount do
            inventory:RemoveOneOf(itemCode)
        end
    end

    inventory:AddItem(HealthPotionRecipe.result)
    player:Say("Crafted a Nuka Cola Zed!")
end

function addHealthPotionCraftingToMenu(player, context, worldobjects)
    print("addHealthPotionCraftingToMenu called")
    local character = getSpecificPlayer(player)

    if character then
        print("Character found for context menu.")
        local hasMaterials = true
        for itemCode, neededItemsCount in pairs(HealthPotionRecipe.usedItems) do
            if character:getInventory():getItemCount(itemCode) < neededItemsCount then
                hasMaterials = false
                print("Not enough materials for: " .. itemCode)
                break
            end
        end

        if hasMaterials then
            context:addOption("Craft Nuka Cola Zed", worldobjects, function()
                CraftHealthPotion(character)
            end)
            print("Crafting option added")
        else
            print("Not adding crafting option, insufficient materials")
        end
    else
        print("Character not found for context menu.")
    end
end

Events.OnFillWorldObjectContextMenu.Add(addHealthPotionCraftingToMenu)


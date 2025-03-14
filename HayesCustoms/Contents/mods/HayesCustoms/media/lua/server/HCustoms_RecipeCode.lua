-- This file is dedicated towards the recipe functions that the recipe scripts call upon. 
require "Recipecode"
require "XpSystem/XpUpdate"


Recipe = Recipe or {};
Recipe.OnCreate = Recipe.OnCreate or {};


function Recipe.OnCreate.RemoveDustGoggles(items, result, player)
    player:getInventory():AddItems("HCustoms.Glasses_DustGoggles", 1)
end

function Tailoring03(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Tailoring, 3);
end

function Tailoring05(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Tailoring, 5);
end

function Tailoring10(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Tailoring, 10);
end

function Give20TailoringXP(recipe, ingredients, result, player)
    player:getXp():AddXP(Perks.Tailoring, 15);
end

function KeepColor(item, resultItem, player)
	local player_Inventory = player:getInventory();
	local transferred_Items = {}; 
	local RecipeItem;
	local texture;
	
	for i = 0, (item:size()-1) do 
		RecipeItem = item:get(i); 
		
		if RecipeItem:getCategory() == "Container" then 
		texture = RecipeItem:getTexture()
			if player:getClothingItem_Back() == RecipeItem then 
				player:setClothingItem_Back(nil);
			end
			if player:getPrimaryHandItem() == RecipeItem then 
				player:setPrimaryHandItem(nil);
			end
			if player:getSecondaryHandItem() == RecipeItem then 
				player:setSecondaryHandItem(nil); 
			end
			RecipeInv = RecipeItem:getInventory(); 
			newInv= resultItem:getInventory(); 
			RecipeInvItems = RecipeInv:getItems(); 
			if RecipeInvItems:size() >= 1 then 
				for i2 = 0, (RecipeInvItems:size()-1) do
					invItem = RecipeInvItems:get(i2);
					table.insert(transferred_Items, invItem) 
				end
			end
		end
	end
	
	for i3, k3 in ipairs(transferred_Items) do
		RecipeInv:Remove(k3); 
		newInv:AddItem(k3); 
	end
	resultItem:setTexture(texture);
end

function KeepContents(item, resultItem, player)
	local player_Inventory = player:getInventory();
	local transferred_Items = {}; 
	local RecipeItem;
	
	for i = 0, (item:size()-1) do 
		RecipeItem = item:get(i); 
		
		if RecipeItem:getCategory() == "Container" then 
			if player:getClothingItem_Back() == RecipeItem then 
				player:setClothingItem_Back(nil);
			end
			if player:getPrimaryHandItem() == RecipeItem then 
				player:setPrimaryHandItem(nil);
			end
			if player:getSecondaryHandItem() == RecipeItem then 
				player:setSecondaryHandItem(nil); 
			end
			RecipeInv = RecipeItem:getInventory(); 
			newInv= resultItem:getInventory(); 
			RecipeInvItems = RecipeInv:getItems(); 
			if RecipeInvItems:size() >= 1 then 
				for i2 = 0, (RecipeInvItems:size()-1) do
					invItem = RecipeInvItems:get(i2);
					table.insert(transferred_Items, invItem) 
				end
			end
		end
	end
	
	for i3, k3 in ipairs(transferred_Items) do
		RecipeInv:Remove(k3); 
		newInv:AddItem(k3); 
	end
end

function onKeepWeaponStats_OnCreate(items, result, player, firstHand, secondHand)
	local inv = player:getInventory();
	for i=0,items:size()-1 do
		local item = items:get(i)
		if item:getCategory() == "Weapon" then
			local modData = result:getModData()
			for k,v in pairs(item:getModData()) do
				modData[k] = v
			end
			local condition = item:getCondition()
			local repaired = item:getHaveBeenRepaired()
			if condition then
				result:setCondition(condition)
				end
			if repaired then
				result:setHaveBeenRepaired(repaired)
				end
			if secondHand or firstHand then
	        player:setSecondaryHandItem(result);
	        if not player:getPrimaryHandItem() then
	            player:setPrimaryHandItem(result);
	        end
	    end
			return
		end
    end
end

-- When creating item in result box of crafting panel.
function Recipe.OnCreate.HCustoms_TorchBatteryRemoval(items, result, player)
	for i=0, items:size()-1 do
		local item = items:get(i)
		-- we found the battery, we change his used delta according to the battery
		if item:getType() == "AntiqueMilitaryFlashlight" or item:getType() == "ClipFlashlight" or item:getType() == "ReconFlashlight" then
			result:setUsedDelta(item:getUsedDelta());
			-- then we empty the torch used delta (his energy)
			item:setUsedDelta(0);
		end
	end
end

-- Return true if recipe is valid, false otherwise
function Recipe.OnTest.HCustoms_TorchBatteryInsert(sourceItem, result)
	if sourceItem:getType() == "AntiqueMilitaryFlashlight" or sourceItem:getType() == "ClipFlashlight" or sourceItem:getType() == "ReconFlashlight" then
		return sourceItem:getUsedDelta() == 0; -- Only allow the battery inserting if the flashlight has no battery left in it.
	end
	return true -- the battery
end

-- When creating item in result box of crafting panel.
function Recipe.OnCreate.HCustoms_TorchBatteryInsert(items, result, player)
    for i=0, items:size()-1 do
        -- we found the battery, we change his used delta according to the battery
        if items:get(i):getType() == "Battery" then
            result:setUsedDelta(items:get(i):getUsedDelta());
        end
    end
end

function Recipe.OnCreate.HCustoms_DismantleFlashlight(items, result, player)
	for i=1,items:size() do
		local item = items:get(i-1)
		if item:getType() == "AntiqueMilitaryFlashlight" or item:getType() == "ClipFlashlight" or item:getType() == "ReconFlashlight" then
			if item:getUsedDelta() > 0 then
				local battery = player:getInventory():AddItem("Base.Battery")
				if battery then
					battery:setUsedDelta(item:getUsedDelta())
				end
			end
			break
		end
	end
end


function HCustoms_OnTest_KeepColor(item)
    if instanceof(item, "Clothing") then
        item:getModData().onTestDataIsEquipped = item:isEquipped();
    end
    return true;
end

function Recipe.OnCreate.KeepClothingColor(items, result, player)
    for i = 0, items:size() - 1 do
        local item = items:get(i)
        if instanceof(item, "Clothing") and instanceof(result, "Clothing") then
            local baseVisual = item:getVisual()
            local resultVisual = result:getVisual()

            -- Copy color and visual attributes
            resultVisual:setTint(baseVisual:getTint(item:getClothingItem()))
            resultVisual:setBaseTexture(baseVisual:getBaseTexture())
            resultVisual:setTextureChoice(baseVisual:getTextureChoice())
            resultVisual:setDecal(baseVisual:getDecal(item:getClothingItem()))
            result:setColor(item:getColor())

            -- Copy other relevant data
            resultVisual:copyDirt(baseVisual)
            resultVisual:copyBlood(baseVisual)
            resultVisual:copyHoles(baseVisual)
            resultVisual:copyPatches(baseVisual)
            result:synchWithVisual()

            -- Maintain condition and other attributes
            result:setCondition(item:getCondition())
            result:setFavorite(item:isFavorite())

            -- Copy mod data if exists
            if item:hasModData() then
                result:copyModData(item:getModData())
            end

            -- Handle re-equipping based on the mod data stored in OnTest
            if result:getModData().onTestDataIsEquipped then
                result:getModData().onTestDataIsEquipped = nil;  -- Clear the flag

                if result:getBodyLocation() ~= "" then
                    player:setWornItem(result:getBodyLocation(), result)
                end
                triggerEvent("OnClothingUpdated", player)
            end

            break
        end
    end
end
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
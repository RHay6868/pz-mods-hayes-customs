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


require 'NPCs/BodyLocations'
--***********************************************************
--**                    THE INDIE STONE                    **
--***********************************************************

-- Locations must be declared in render-order.
-- Location IDs must match BodyLocation= and CanBeEquipped= values in items.txt.
local group = BodyLocations.getGroup("Human")

group:getOrCreateLocation("668")
group:getOrCreateLocation("686")
group:getOrCreateLocation("714")
group:getOrCreateLocation("741")
group:getOrCreateLocation("888")
group:getOrCreateLocation("898")
group:getOrCreateLocation("TorsoExtraVest")
group:getOrCreateLocation("TorsoRigPlus2")

--group:setHideModel("686")
--group:setHideModel("668")
--group:setHideModel("741")
--group:setHideModel("714")
--group:setHideModel("TorsoExtraVest")
--group:setHideModel("TorsoRigPlus2")
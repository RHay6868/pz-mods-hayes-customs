local HCustoms = HCustoms or {}

local sVars = SandboxVars.HCustoms
sVars.ClothesHoles = sVars.ClothesHoles or false
sVars.ClothesRepair = sVars.ClothesRepair or false
sVars.NerfSuits = sVars.NerfSuits or true
sVars.NerfPlateArmor = sVars.NerfPlateArmor or true
sVars.ClothesBaseStats = sVars.ClothesBaseStats or 0


local itemParamsSuits = {
    ["HCustoms.DarkFormSuit"] = { bloodLocation = "Jumper;Shoes;Groin", scratchDefense = 20, biteDefense = 15, bulletDefense = 10},
    ["HCustoms.WraithSuit"] = { bloodLocation = "Jumper;Shoes;Groin", scratchDefense = 20, biteDefense = 15, bulletDefense = 10},
    ["HCustoms.BigFootSuit"] = { bloodLocation = "Jumper;Shoes;Groin", scratchDefense = 20, biteDefense = 15, bulletDefense = 10},
    ["HCustoms.YetiSuit"] = { bloodLocation = "Jumper;Shoes;Groin", scratchDefense = 20, biteDefense = 15, bulletDefense = 10},
}

local function nerfSuits()
    if sVars.NerfSuits then 
        for itemName, params in pairs(itemParamsSuits) do
            local item = ScriptManager.instance:getItem(itemName)
            if item then 
                item:DoParam("BloodLocation = " .. tostring(params.bloodLocation))
                item:DoParam("ScratchDefense = " .. params.scratchDefense) 
                item:DoParam("BiteDefense = " .. params.biteDefense) 
                item:DoParam("BulletDefense = " .. params.bulletDefense) 
            end
        end
    end
end

local itemParamsPlateArmor= {
    ["HCustoms.Gloves_PlateArmorBracers"] = { scratchDefense = 40, biteDefense = 30, bulletDefense = 20},
    ["HCustoms.PlateArmorChausses"] = { scratchDefense = 50, biteDefense = 30, bulletDefense = 25},
    ["HCustoms.PlateArmorCuirass"] = { scratchDefense = 40, biteDefense = 30, bulletDefense = 20},
    ["HCustoms.Shoes_PlateArmorGreaves"] = { scratchDefense = 100, biteDefense = 100, bulletDefense = 30},
    ["HCustoms.Hat_PlateArmorHelm"] = { scratchDefense = 100, biteDefense = 100, bulletDefense = 40},
}

local function nerfPlateArmor()
    if sVars.NerfPlateArmor then 
        for itemName, params in pairs(itemParamsPlateArmor) do
            local item = ScriptManager.instance:getItem(itemName)
            if item then 
                item:DoParam("ScratchDefense = " .. params.scratchDefense) 
                item:DoParam("BiteDefense = " .. params.biteDefense) 
                item:DoParam("BulletDefense = " .. params.bulletDefense) 
            end
        end
    end
end

Events.OnGameStart.Add(nerfSuits)
Events.OnGameStart.Add(nerfPlateArmor)
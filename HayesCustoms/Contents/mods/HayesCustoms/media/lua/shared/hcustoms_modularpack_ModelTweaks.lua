local vanillaModels = {
	ToyBear = 0.30,
	Rubberducky = 0.4,
	HandTorch = 0.7,
	HandTorchGround = 0.25,
	TotesBag_Ground = 0.35,
	ToolBox_Ground = 0.3,
	PlasticBag_Ground = 0.30,
	GarbageBag_Ground = 0.35,
}

local AuthenticZModels = {
	WorldItem_BackpackL4DMedkit = 0.9,
	LunchBoxMedic_Ground = 0.35,
	AuthenticCanteenCadetBlue = 0.85,
	AuthenticCanteenDarkGreen = 0.85,
	AuthenticCanteenDarkGrey = 0.85,
	AuthenticCanteenForestGreen = 0.85,
	AuthenticCanteenGrey = 0.85,
	AuthenticCanteenSilver = 0.85,
	Handbag_Ground = 0.35,
	Purse_Ground = 0.35,
	SandBag_Ground = 0.30,
	SeedBag = 0.5,
	LunchBox_Ground = 0.35,
	LunchBox2_Ground = 0.35,
	GunCase_Ground = 0.35,
	NewRope = 0.25,
	SheetRopeAZ = 0.1,
}

local function Tweaker(model,property,value)
	local modelScript = ScriptManager.instance:getModelScript(model)
	if modelScript  then 
		local name = modelScript:getName();
		modelScript:Load(name, "{".. property .. " = " .. value .. ",}");
	end
end

for k,v in pairs(vanillaModels) do 
	Tweaker(k,"scale",v)
end

for k,v in pairs(AuthenticZModels) do 
	Tweaker(k,"scale",v)
end

require "Hotbar/ISHotbarAttachDefinition"
if not ISHotbarAttachDefinition then
    return
end

------------------- Leg Holster ----------------------------------------------

local LegHolsterRight = {
	type = "LegHolsterRight",
	name = "Leg Holster Right",
	animset = "holster right",
	attachments = {
		Holster = "Leg Holster Right",
	},
}
table.insert(ISHotbarAttachDefinition, LegHolsterRight);

local LegHolsterLeft = {
	type = "LegHolsterLeft",
	name = "Leg Holster Left",
	animset = "holster left",
	attachments = {
		Holster = "Leg Holster Left",
	},
}
table.insert(ISHotbarAttachDefinition, LegHolsterLeft);

local LegHolsterRight2 = {
	type = "LegHolsterRight2",
	name = "Leg Holster Right",
	animset = "holster Right",
	attachments = {
		Holster = "Leg Holster Right 2",
	},
}
table.insert(ISHotbarAttachDefinition, LegHolsterRight2);

------------------- Calf Holster ----------------------------------------------

local CalfHolsterLeft = {
	type = "CalfHolsterLeft",
	name = "Calf Holster Left",
	animset = "back",
	attachments = {
		Knife	= "Calf Knife Holster Left",	
	},
}
table.insert(ISHotbarAttachDefinition, CalfHolsterLeft);

------------------- Chest Rig Attachments ----------------------------------------------

local ChestRigSlot1 = {
	type = "ChestRigSlot1",
	name = "Chest Rig Slot 1", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script				
		FlareGun 			= "Chest Rig FlareGun Slot 1",
		GasMask 			= "Chest Rig GasMask Slot 1",		
		Hammer 				= "Chest Rig Hammer Slot 1",
		Screwdriver 		= "Chest Rig Screwdriver Slot 1",
		Knife			 	= "Chest Rig Knife Slot 1",	
		Wrench 				= "Chest Rig Wrench Slot 1",		
		MeatCleaver 		= "Chest Rig Cleaver Slot 1",
		MaskRH 				= "Chest Rig Mask RH Slot 1",	
		PackExtraModular	= "Chest Rig PackExtra Slot 1",
		ModFirstAidKit 		= "Chest Rig ModFirstAidKit Slot 1",	
		FirstAidKit 		= "Chest Rig FirstAidKit Slot 1",	
		Bag_L4DeadMedkit 	= "Chest Rig Bag_L4DeadMedkit Slot 1",	
	},
}
table.insert(ISHotbarAttachDefinition, ChestRigSlot1);

local ChestRigSlot2 = {
	type = "ChestRigSlot2",
	name = "Chest Rig Slot 2", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script			
		FlareGun 			= "Chest Rig FlareGun Slot 2",
		GasMask 			= "Chest Rig GasMask Slot 2",		
		Hammer 				= "Chest Rig Hammer Slot 2",
		Screwdriver 		= "Chest Rig Screwdriver Slot 2",
		Knife			 	= "Chest Rig Knife Slot 2",	
		Wrench 				= "Chest Rig Wrench Slot 2",		
		MeatCleaver 		= "Chest Rig Cleaver Slot 2",
		MaskRH 				= "Chest Rig Mask RH Slot 2",	
		Canteen 			= "Chest Rig Canteen Slot 2",
		CanteenModular 		= "Chest Rig CanteenModular Slot 2",
	},
}
table.insert(ISHotbarAttachDefinition, ChestRigSlot2);

local ChestRigFlashlight = {
	type = "ChestRigFlashlight",
	name = "Flashlight Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Flashlight = "Chest Rig Flashlight",
		HandTorchSmall = "Chest Rig Flashlight",
		HandTorch = "Chest Rig Flashlight",
		PrepperFlashlight = "Chest Rig Prepper Flashlight",
		MilitaryFlashlight = "Chest Rig Military Flashlight",
	},
}
table.insert(ISHotbarAttachDefinition, ChestRigFlashlight);

local ChestRigFlashlight2 = {
	type = "ChestRigFlashlight2",
	name = "Flashlight Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Flashlight = "Chest Rig Flashlight 2",
		HandTorchSmall = "Chest Rig Flashlight 2",
		HandTorch = "Chest Rig Flashlight 2",
		PrepperFlashlight = "Chest Rig Prepper Flashlight 2",
		MilitaryFlashlight = "Chest Rig Military Flashlight 2",
	},
}
table.insert(ISHotbarAttachDefinition, ChestRigFlashlight2);

local ChestRigWalkie = {
	type = "ChestRigWalkie",
	name = "Walkie Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Walkie 				= "Chest Rig Walkie Slot",
	},
}
table.insert(ISHotbarAttachDefinition, ChestRigWalkie);

local ChestRigWalkie2 = {
	type = "ChestRigWalkie2",
	name = "Walkie Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Walkie 				= "Chest Rig Walkie Slot 2",
	},
}
table.insert(ISHotbarAttachDefinition, ChestRigWalkie2);

local ChestRigHolster = {
	type = "ChestRigHolster",
	name = "Chest Rig Holster",
	animset = "holster left",
	attachments = {
		Holster = "Chest Rig Holster",
	},
}
table.insert(ISHotbarAttachDefinition, ChestRigHolster);

------------------- Modular Bag Attachments ----------------------------------------------

local ModularPackContainer = {
	type = "ModularPackContainer",
	name = "Container Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Plasticbag 	 = "ModularPack Plasticbag Bag", -- defined in AttachedLocations.lua
		Garbagebag 	 = "ModularPack Garbage Bag",
		Totebag 	 = "ModularPack Tote Bag",
		Purse 		 = "ModularPack Purse",	
		EmptySandbag = "ModularPack EmptySandbag",
		Seedbag = "ModularPack Seedbag",			
		Handbag = "ModularPack Handbag",
		Toolbox = "ModularPack Toolbox",
		Lunchbox = "ModularPack Lunchbox",
		PistolCase = "ModularPack PistolCase",
		PackExtraModular = "ModularPack PackExtra",
		ECBPack = "ModularPack ECBPack",
		Container = "ModularPack Container",
		ContainerSeed = "ModularPack ContainerSeed",
		ContainerTool = "ModularPack ContainerTool",
		ContainerCooler = "ModularPack ContainerCooler",
		ContainerTote = "ModularPack ContainerTote",
		ContainerTrash = "ModularPack ContainerTrash",
		ContainerSack = "ModularPack ContainerSack",
		Bag_L4DeadMedkit = "ModularPack ContainerMk"
	},
}
table.insert(ISHotbarAttachDefinition, ModularPackContainer);

local ModularPackRight = {
	type = "ModularPackRight",
	name = "Right Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script	
		WaterBottle = "ModularPack Waterbottle Right",
		Canteen = "ModularPack Canteen Right",
		CanteenModular = "ModularPack CanteenModular Right",
		Sodacan = "ModularPack Sodacan Right",		
		PillBottle = "ModularPack PillBottle Right",
		Bottle = "ModularPack Bottle Right",		
	},
}
table.insert(ISHotbarAttachDefinition, ModularPackRight);

local ModularPackLeft = {
	type = "ModularPackLeft",
	name = "Left Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script
		WaterBottle = "ModularPack Waterbottle Left",
		Canteen = "ModularPack Canteen Left",
		CanteenModular = "ModularPack CanteenModular Left",
		Sodacan = "ModularPack Sodacan Left",		
		PillBottle = "ModularPack PillBottle Left",		
		Bottle = "ModularPack Bottle Left",	
	},
}
table.insert(ISHotbarAttachDefinition, ModularPackLeft);

local ModularPackUtilitySlot1 = {
	type = "ModularPackUtilitySlot1",
	name = "Utility Slot 1", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Rope 				= "ModularPack Rope Slot 1",
		SheetRope			= "ModularPack SheetRope Slot 1",			
		FlareGun 			= "ModularPack FlareGun Slot 1",
		Explosive 			= "ModularPack Explosive Slot 1",
		AuthenticExplosive  = "ModularPack AuthenticExplosive Slot 1",		
		GasMask 			= "ModularPack GasMask Slot 1",		
		Walkie 				= "ModularPack Walkie Slot 1",
		Hammer 				= "ModularPack Hammer Slot 1",
		Screwdriver 		= "ModularPack Screwdriver Slot 1",
		Knife			 	= "ModularPack Knife Slot 1",	
		Saucepan 			= "ModularPack Saucepan Slot 1",	
		Pan 				= "ModularPack Pan Slot 1",	
		Wrench 				= "ModularPack Wrench Slot 1",		
		MeatCleaver 		= "ModularPack Cleaver Slot 1",
		Gear 				= "ModularPack Walkie Slot 1",		
		MaskRH 				= "ModularPack MaskRH Slot 1",	
	},
}
table.insert(ISHotbarAttachDefinition, ModularPackUtilitySlot1);

local ModularPackUtilitySlot2 = {
	type = "ModularPackUtilitySlot2",
	name = "Utility Slot 2", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Rope 				= "ModularPack Rope Slot 2",
		SheetRope			= "ModularPack SheetRope Slot 2",			
		FlareGun 			= "ModularPack FlareGun Slot 2",
		Explosive 			= "ModularPack Explosive Slot 2",
		AuthenticExplosive  = "ModularPack AuthenticExplosive Slot 2",
		GasMask 			= "ModularPack GasMask Slot 2",		
		Walkie 				= "ModularPack Walkie Slot 2",
		Hammer 				= "ModularPack Hammer Slot 2",
		Screwdriver 		= "ModularPack Screwdriver Slot 2",
		Knife			 	= "ModularPack Knife Slot 2",	
		Saucepan 			= "ModularPack Saucepan Slot 2",	
		Pan 				= "ModularPack Pan Slot 2",		
		Wrench 				= "ModularPack Wrench Slot 2",		
		MeatCleaver 		= "ModularPack Cleaver Slot 2",
		Gear 				= "ModularPack Explosive Slot 2",		
		MaskRH 				= "ModularPack MaskRH Slot 2",		
	},
}
table.insert(ISHotbarAttachDefinition, ModularPackUtilitySlot2);

local ModularPackUtilitySlot3 = {
	type = "ModularPackUtilitySlot3",
	name = "Utility Slot 3", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Rope 				= "ModularPack Rope Slot 3",
		SheetRope			= "ModularPack SheetRope Slot 3",			
		FlareGun 			= "ModularPack FlareGun Slot 3",
		Explosive 			= "ModularPack Explosive Slot 3",
		AuthenticExplosive  = "ModularPack AuthenticExplosive Slot 3",
		GasMask 			= "ModularPack GasMask Slot 3",		
		Walkie 				= "ModularPack Walkie Slot 3",
		Hammer 				= "ModularPack Hammer Slot 3",
		Screwdriver 		= "ModularPack Screwdriver Slot 3",
		Knife			 	= "ModularPack Knife Slot 3",	
		Wrench 				= "ModularPack Wrench Slot 3",		
		MeatCleaver 		= "ModularPack Cleaver Slot 3",
		Gear 				= "ModularPack Walkie Slot 3",		
		MaskRH 				= "ModularPack MaskRH Slot 3",	
	},
}
table.insert(ISHotbarAttachDefinition, ModularPackUtilitySlot3);

local ModularPackUtilitySlot4 = {
	type = "ModularPackUtilitySlot4",
	name = "Utility Slot 4", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Rope				= "ModularPack Rope Slot 4",
		SheetRope			= "ModularPack SheetRope Slot 4",
		FlareGun 			= "ModularPack FlareGun Slot 4",			
		Explosive 			= "ModularPack Explosive Slot 4",
		AuthenticExplosive 	= "ModularPack AuthenticExplosive Slot 4",		
		Walkie 				= "ModularPack Walkie Slot 4",
		Hammer 				= "ModularPack Hammer Slot 4",
		Screwdriver 		= "ModularPack Screwdriver Slot 4",
		Knife			 	= "ModularPack Knife Slot 4",			
		Wrench 				= "ModularPack Wrench Slot 4",		
		MeatCleaver 		= "ModularPack Cleaver Slot 4",
		Gear 				= "ModularPack Walkie Slot 4",			
		BiggerBlade			= "ModularPack Big Blade Slot 4",
	},
}
table.insert(ISHotbarAttachDefinition, ModularPackUtilitySlot4);


local ModularPackFlashlight = {
	type = "ModularPackFlashlight",
	name = "Flashlight Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script	
		Flashlight = "ModularPack Flashlight",
		HandTorchSmall = "ModularPack Flashlight",
		HandTorch = "ModularPack Flashlight",
		Torchb = "ModularPack Big Flashlight",
		PrepperFlashlight = "ModularPack Prepper Flashlight",
		MilitaryFlashlight = "ModularPack Military Flashlight",
		Lantern = "ModularPack Lantern"
	},
}
table.insert(ISHotbarAttachDefinition, ModularPackFlashlight);

local ModularPackPlushie1 = {
	type = "ModularPackPlushie1",
	name = "Plushie Right Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		SpiffoPlushie = "ModularPack Plushie SpiffoR",
		Doll = "ModularPack Plushie DollR",
		TeddyBear = "ModularPack Plushie TeddyBearR",
		RubberDucky = "ModularPack Plushie RubberDuckR",
	},
}
table.insert(ISHotbarAttachDefinition, ModularPackPlushie1);

local ModularPackPlushie2 = {
	type = "ModularPackPlushie2",
	name = "Plushie Left Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		SpiffoPlushie = "ModularPack Plushie SpiffoL",
		Doll = "ModularPack Plushie DollL",
		TeddyBear = "ModularPack Plushie TeddyBearL",
		RubberDucky = "ModularPack Plushie RubberDuckL",
	},
}
table.insert(ISHotbarAttachDefinition, ModularPackPlushie2);

local ModularPackFirstAid = {
	type = "ModularPackFirstAid",
	name = "First Aid Kit Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		ModFirstAidKit = "ModularPack ModFirstAidKit",	
		FirstAidKit = "ModularPack FirstAidKit",	
		Bag_L4DeadMedkit = "ModularPack Bag_L4DeadMedkit",	
	},
}
table.insert(ISHotbarAttachDefinition, ModularPackFirstAid);

local ModularPackPatch= {
	type = "ModularPackPatch",
	name = "Patch Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		BagPatch = "ModularPack Bag Patch",
		VestPatch = "Vest Patch",
	},
}
table.insert(ISHotbarAttachDefinition, ModularPackPatch);

local ModularPackBedroll= {
	type = "ModularPackBedroll",
	name = "Bedroll", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Bedroll = "ModularPack Bedroll",
	},
}
table.insert(ISHotbarAttachDefinition, ModularPackBedroll);

local ModularPackSling= {
	type = "ModularPackSling",
	name = "Bag Sling Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Holster = "ModularPack Handgun Slot",
		Rifle = "ModularPack Rifle Slot",
		BiggerBlade = "ModularPack Bigger Blade Slot",
		BigWeapon = "ModularPack Big Weapon Slot",
		BigBlade = "ModularPack Big Blade Slot",
		Shovel = "ModularPack Shovel Slot",
	},
}
table.insert(ISHotbarAttachDefinition, ModularPackSling);

------------------- ECB Bag ----------------------------------------------

local ECBContainer = {
	type = "ECBContainer",
	name = "Container Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Lunchbox = "ECB Lunchbox",
		PistolCase = "ECB PistolCase",
		PackExtraModular = "ECB PackExtra",
		ECBPack = "ECBPack",
		Container = "ECB Container",
		ContainerSeed = "ECB ContainerSeed",
		ContainerTool = "ECB ContainerTool",
		ContainerCooler = "ECB ContainerCooler",
		ContainerTote = "ECB ContainerTote",
		ContainerTrash = "ECB ContainerTrash",
		ContainerSack = "ECB ContainerSack",
		Bag_L4DeadMedkit = "ECB ContainerMk"
	},
}
table.insert(ISHotbarAttachDefinition, ECBContainer);

local ECBRight = {
	type = "ECBRight",
	name = "Right Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script	
		WaterBottle = "ECB Waterbottle Right",
		Canteen = "ECB Canteen Right",
		CanteenModular = "ECB CanteenModular Right",
		Sodacan = "ECB Sodacan Right",		
		PillBottle = "ECB PillBottle Right",		
		Bottle = "ECB Bottle Right",	
	},
}
table.insert(ISHotbarAttachDefinition, ECBRight);

local ECBLeft = {
	type = "ECBLeft",
	name = "Left Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script
		WaterBottle = "ECB Waterbottle Left",
		Canteen = "ECB Canteen Left",
		CanteenModular = "ECB CanteenModular Left",
		Sodacan = "ECB Sodacan Left",		
		PillBottle = "ECB PillBottle Left",	
		Bottle = "ECB Bottle Left",		
	},
}
table.insert(ISHotbarAttachDefinition, ECBLeft);

local ECBUtilitySlot1 = {
	type = "ECBUtilitySlot1",
	name = "Utility Slot 1", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Rope 				= "ECB Rope Slot 1",
		SheetRope			= "ECB SheetRope Slot 1",			
		FlareGun 			= "ECB FlareGun Slot 1",
		Explosive 			= "ECB Explosive Slot 1",
		AuthenticExplosive  = "ECB AuthenticExplosive Slot 1",		
		GasMask 			= "ECB GasMask Slot 1",		
		Walkie 				= "ECB Walkie Slot 1",
		Hammer 				= "ECB Hammer Slot 1",
		Screwdriver 		= "ECB Screwdriver Slot 1",
		Knife			 	= "ECB Knife Slot 1",	
		Wrench 				= "ECB Wrench Slot 1",		
		MeatCleaver 		= "ECB Cleaver Slot 1",	
		MaskRH 				= "ECB MaskRH Slot 1",	
	},
}
table.insert(ISHotbarAttachDefinition, ECBUtilitySlot1);

local ECBUtilitySlot2 = {
	type = "ECBUtilitySlot2",
	name = "Utility Slot 2", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Rope 				= "ECB Rope Slot 2",
		SheetRope			= "ECB SheetRope Slot 2",			
		FlareGun 			= "ECB FlareGun Slot 2",
		Explosive 			= "ECB Explosive Slot 2",
		AuthenticExplosive  = "ECB AuthenticExplosive Slot 2",	
		Walkie 				= "ECB Walkie Slot 2",
		Hammer 				= "ECB Hammer Slot 2",
		Screwdriver 		= "ECB Screwdriver Slot 2",
		Knife			 	= "ECB Knife Slot 2",	
		Wrench 				= "ECB Wrench Slot 2",		
		MeatCleaver 		= "ECB Cleaver Slot 2",		
	},
}
table.insert(ISHotbarAttachDefinition, ECBUtilitySlot2);

local ECBSling= {
	type = "ECBSling",
	name = "Bag Sling Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Holster = "ECB Handgun Slot",
		Rifle = "ECB Rifle Slot",
	},
}
table.insert(ISHotbarAttachDefinition, ECBSling);

local ECBFlashlight = {
	type = "ECBFlashlight",
	name = "Flashlight Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Flashlight = "ECB Flashlight",
		HandTorchSmall = "ECB Flashlight",
		HandTdorch = "ECB Flashlight",
		Torchb = "ECB Big Flashlight",
		PrepperFlashlight = "ECB Prepper Flashlight",
		MilitaryFlashlight = "ECB Military Flashlight",
		Lantern = "ECB Lantern"
	},
}
table.insert(ISHotbarAttachDefinition, ECBFlashlight);

local ECBPatch= {
	type = "ECBPatch",
	name = "Patch Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		BagPatch = "ECB Bag Patch",
	},
}
table.insert(ISHotbarAttachDefinition, ECBPatch);

local ECBPlushie1 = {
	type = "ECBPlushie1",
	name = "Plushie Right Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		SpiffoPlushie = "ECB Plushie SpiffoR",
		Doll = "ECB Plushie DollR",
		TeddyBear = "ECB Plushie TeddyBearR",
		RubberDucky = "ECB Plushie RubberDuckR",
	},
}
table.insert(ISHotbarAttachDefinition, ECBPlushie1);

local ECBPlushie2 = {
	type = "ECBPlushie2",
	name = "Plushie Left Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		SpiffoPlushie = "ECB Plushie SpiffoL",
		Doll = "ECB Plushie DollL",
		TeddyBear = "ECB Plushie TeddyBearL",
		RubberDucky = "ECB Plushie RubberDuckL",
	},
}
table.insert(ISHotbarAttachDefinition, ECBPlushie2);

local ECBBedroll= {
	type = "ECBBedroll",
	name = "Bedroll", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Bedroll = "ECB Bedroll",
	},
}
table.insert(ISHotbarAttachDefinition, ECBBedroll);


------------------- Medical Backpack Attachments ----------------------------------------------


local MedicalBackpackContainer = {
	type = "MedicalBackpackContainer",
	name = "Container Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		PackExtraModular = "Medical Backpack PackExtra",
		Lunchbox = "Medical Backpack Lunchbox",
		PistolCase = "Medical Backpack PistolCase",
		ECBPack = "Medical Backpack ECBPack",
	},
}
table.insert(ISHotbarAttachDefinition, MedicalBackpackContainer);

local MedicalBackpackUtilitySlot1 = {
	type = "MedicalBackpackUtilitySlot1",
	name = "Utility Slot 1", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Rope 				= "Medical Backpack Rope Slot 1",
		SheetRope			= "Medical Backpack SheetRope Slot 1",			
		FlareGun 			= "Medical Backpack FlareGun Slot 1",
		Explosive 			= "Medical Backpack Explosive Slot 1",
		AuthenticExplosive  = "Medical Backpack AuthenticExplosive Slot 1",		
		GasMask 			= "Medical Backpack GasMask Slot 1",		
		Walkie 				= "Medical Backpack Walkie Slot 1",
		MaskRH 				= "Medical Backpack MaskRH Slot 1",	
		Gear 				= "Medical Backpack Gear Slot 1",	
	},
}
table.insert(ISHotbarAttachDefinition, MedicalBackpackUtilitySlot1);

local MedicalBackpackUtilitySlot2 = {
	type = "MedicalBackpackUtilitySlot2",
	name = "Utility Slot 2", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Rope 				= "Medical Backpack Rope Slot 2",		
		Explosive 			= "Medical Backpack Explosive Slot 2",
		AuthenticExplosive  = "Medical Backpack AuthenticExplosive Slot 2",	
		Walkie 				= "Medical Backpack Walkie Slot 2",
		Hammer 				= "Medical Backpack Hammer Slot 2",
		Screwdriver 		= "Medical Backpack Screwdriver Slot 2",
		Knife			 	= "Medical Backpack Knife Slot 2",	
		Wrench 				= "Medical Backpack Wrench Slot 2",		
		MeatCleaver 		= "Medical Backpack Cleaver Slot 2",	
		Gear 				= "Medical Backpack Gear Slot 2",		
	},
}	
table.insert(ISHotbarAttachDefinition, MedicalBackpackUtilitySlot2);

local MedicalBackpackUtilitySlot3 = {
	type = "MedicalBackpackUtilitySlot3",
	name = "Utility Slot 3", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Explosive 			= "Medical Backpack Explosive Slot 3",
		AuthenticExplosive  = "Medical Backpack AuthenticExplosive Slot 3",		
		Walkie 				= "Medical Backpack Walkie Slot 3",
		Hammer 				= "Medical Backpack Hammer Slot 3",
		Screwdriver 		= "Medical Backpack Screwdriver Slot 3",
		Knife			 	= "Medical Backpack Knife Slot 3",	
		MeatCleaver 		= "Medical Backpack Cleaver Slot 3",			
	},
}
table.insert(ISHotbarAttachDefinition, MedicalBackpackUtilitySlot3);

local MedicalBackpackRight = {
	type = "MedicalBackpackRight",
	name = "Right Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script	
		WaterBottle = "Medical Backpack Waterbottle Right",
		Canteen = "Medical Backpack Canteen Right",
		CanteenModular = "Medical Backpack CanteenModular Right",
		Sodacan = "Medical Backpack Sodacan Right",		
		PillBottle = "Medical Backpack PillBottle Right",	
		Bottle = "Medical Backpack Bottle Right",	
	},
}
table.insert(ISHotbarAttachDefinition, MedicalBackpackRight);

local MedicalBackpackLeft = {
	type = "MedicalBackpackLeft",
	name = "Left Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script
		WaterBottle = "Medical Backpack Waterbottle Left",
		Canteen = "Medical Backpack Canteen Left",
		CanteenModular = "Medical Backpack CanteenModular Left",
		Sodacan = "Medical Backpack Sodacan Left",		
		PillBottle = "Medical Backpack PillBottle Left",	
		Bottle = "Medical Backpack Bottle Left",	
	},
}
table.insert(ISHotbarAttachDefinition, MedicalBackpackLeft);

local MedicalBackpackPlushie1 = {
	type = "MedicalBackpackPlushie1",
	name = "Plushie Right Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		SpiffoPlushie = "Medical Backpack Plushie SpiffoR",
		Doll = "Medical Backpack Plushie DollR",
		TeddyBear = "Medical Backpack Plushie TeddyBearR",
		RubberDucky = "Medical Backpack Plushie RubberDuckR",
	},
}
table.insert(ISHotbarAttachDefinition, MedicalBackpackPlushie1);

local MedicalBackpackPlushie2 = {
	type = "MedicalBackpackPlushie2",
	name = "Plushie Left Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		SpiffoPlushie = "Medical Backpack Plushie SpiffoL",
		Doll = "Medical Backpack Plushie DollL",
		TeddyBear = "Medical Backpack Plushie TeddyBearL",
		RubberDucky = "Medical Backpack Plushie RubberDuckL",
	},
}
table.insert(ISHotbarAttachDefinition, MedicalBackpackPlushie2);

local MedicalBackpackFirstAid = {
	type = "MedicalBackpackFirstAid",
	name = "First Aid Kit Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		ModFirstAidKit = "Medical Backpack ModFirstAidKit",	
		FirstAidKit = "Medical Backpack FirstAidKit",	
		Bag_L4DeadMedkit = "Medical Backpack Bag_L4DeadMedkit",	
	},
}
table.insert(ISHotbarAttachDefinition, MedicalBackpackFirstAid);

local MedicalBackpackFlashlight = {
	type = "MedicalBackpackFlashlight",
	name = "Flashlight Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Flashlight = "Medical Backpack FlashlightZ",
		HandTorchSmall = "Medical Backpack Small Flashlight",
		HandTorch = "Medical Backpack Flashlight",
		Torchb = "Medical Backpack Big Flashlight",
		PrepperFlashlight = "Medical Backpack Prepper Flashlight",
		MilitaryFlashlight = "Medical Backpack Military Flashlight",
	},
}
table.insert(ISHotbarAttachDefinition, MedicalBackpackFlashlight);

------------------- Golf Bag Attachments ----------------------------------------------

local GolfBagUtilitySlot1 = {
	type = "GolfBagUtilitySlot1",
	name = "Utility Slot 1", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Rope 				= "Golf Bag Rope Slot 1",  
		SheetRope			= "Golf Bag SheetRope Slot 1",		 	
		FlareGun 			= "Golf Bag FlareGun Slot 1",  
		Explosive 			= "Golf Bag Explosive Slot 1", 
		AuthenticExplosive  = "Golf Bag AuthenticExplosive Slot 1", 	
		GasMask 			= "Golf Bag GasMask Slot 1", 		
		Walkie 				= "Golf Bag Walkie Slot 1", 		
		MaskRH 				= "Golf Bag MaskRH Slot 1", 
		BigBlade			= "Golf Bag Big Blade Slot 1",
		Shovel				= "Golf Bag Shovel Slot 1",	
	},
}
table.insert(ISHotbarAttachDefinition, GolfBagUtilitySlot1);

local GolfBagUtilitySlot2 = {
	type = "GolfBagUtilitySlot2",
	name = "Utility Slot 2", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Explosive 			= "Golf Bag Explosive Slot 2",
		AuthenticExplosive  = "Golf Bag AuthenticExplosive Slot 2",		
		Walkie 				= "Golf Bag Walkie Slot 2",
		Hammer 				= "Golf Bag Hammer Slot 2",
		Screwdriver 		= "Golf Bag Screwdriver Slot 2",
		Knife			 	= "Golf Bag Knife Slot 2",	
		Wrench 				= "Golf Bag Wrench Slot 2",
		MeatCleaver 		= "Golf Bag Cleaver Slot 2",	
		Gear 				= "Golf Bag Gear Slot 2",	
		BigBlade			= "Golf Bag Big Blade Slot 2",	
		Shovel				= "Golf Bag Shovel Slot 2",	
	},
}
table.insert(ISHotbarAttachDefinition, GolfBagUtilitySlot2);

local GolfBagUtilitySlot3 = {
	type = "GolfBagUtilitySlot3",
	name = "Utility Slot 3", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Explosive 			= "Golf Bag Explosive Slot 3",
		AuthenticExplosive  = "Golf Bag AuthenticExplosive Slot 3",		
		Walkie 				= "Golf Bag Walkie Slot 3",
		Hammer 				= "Golf Bag Hammer Slot 3",
		Screwdriver 		= "Golf Bag Screwdriver Slot 3",
		Knife			 	= "Golf Bag Knife Slot 3",	
		Wrench 				= "Golf Bag Wrench Slot 3",
		MeatCleaver 		= "Golf Bag Cleaver Slot 3",
		Gear 				= "Golf Bag Gear Slot 3",	
		BigBlade			= "Golf Bag Big Blade Slot 3",
		Shovel				= "Golf Bag Shovel Slot 3",	
	},
}
table.insert(ISHotbarAttachDefinition, GolfBagUtilitySlot3);

local GolfBagDrink = {
	type = "GolfBagDrink",
	name = "Drink Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script
		WaterBottle 		= "Golf Bag Waterbottle",
		Canteen 			= "Golf Bag Canteen",
		CanteenModular 		= "Golf Bag CanteenModular",
		Sodacan 			= "Golf Bag Sodacan",		
		Bottle 				= "Golf Bag Bottle",	
	},
}
table.insert(ISHotbarAttachDefinition, GolfBagDrink);

local GolfBagPlushie = {
	type = "GolfBagPlushie",
	name = "Plushie Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		SpiffoPlushie 		= "Golf Bag Plushie Spiffo",
		Doll 				= "Golf Bag Plushie Doll",
		TeddyBear 			= "Golf Bag Plushie TeddyBear",
		RubberDucky 		= "Golf Bag Plushie RubberDuck",
	},
}
table.insert(ISHotbarAttachDefinition, GolfBagPlushie);

local GolfBagSling1= {
	type = "GolfBagSling1",
	name = "Bag Sling Slot 1", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Holster 			= "Golf Bag Handgun Slot 1",
		Rifle 				= "Golf Bag Rifle Slot 1",
	},
}
table.insert(ISHotbarAttachDefinition, GolfBagSling1);

local GolfBagSling2= {
	type = "GolfBagSling2",
	name = "Bag Sling Slot 2", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Holster 			= "Golf Bag Handgun Slot 2",
		Rifle 				= "Golf Bag Rifle Slot 2",
	},
}
table.insert(ISHotbarAttachDefinition, GolfBagSling2);

local GolfBagFlashlight = {
	type = "GolfBagFlashlight",
	name = "Flashlight Slot", -- Name shown in the slot icon
	animset = "back",
	attachments = { -- list of possible item category and their modelAttachement group, the item category is defined in the item script		
		Flashlight 			= "Golf Bag FlashlightZ",
		HandTorchSmall 		= "Golf Bag Small Flashlight",
		HandTorch 			= "Golf Bag Flashlight",
		Torchb 				= "Golf Bag Big Flashlight",
		PrepperFlashlight 	= "Golf Bag Prepper Flashlight",
		MilitaryFlashlight 	= "Golf Bag Military Flashlight",
	},
}
table.insert(ISHotbarAttachDefinition, GolfBagFlashlight);
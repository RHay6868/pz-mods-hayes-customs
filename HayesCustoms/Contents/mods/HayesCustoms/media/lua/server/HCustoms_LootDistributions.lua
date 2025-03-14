require "Items/ItemPicker"
require "Items/SuburbsDistributions"
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"

HCustoms = HCustoms or {};

function HCustoms:addDistributions(itemsAndChances, locations)
	for item, chance in pairs(itemsAndChances)
	do
		for i, location in ipairs(locations)
		do
			if ProceduralDistributions.list[location] and ProceduralDistributions.list[location].items
			then
				table.insert(ProceduralDistributions.list[location].items, item);
				table.insert(ProceduralDistributions.list[location].items, chance);
			end
		end
	end
end


local function updateDistributionsHCustoms()

    local sVars = SandboxVars.HCustoms;
    sVars.Loot = sVars.Loot or 1;
    sVars.GasMasks = sVars.GasMasks or 3;
    sVars.Accessories = sVars.Accessories or 3;
    sVars.Spiffo = sVars.Spiffo or 3;
    sVars.Plushies = sVars.Plushies or 3;
    sVars.CazadorSpawn = sVars.CazadorSpawn or true;
    sVars.PlushiesSpawn = sVars.PlushiesSpawn or true; 
    sVars.BagsSpawn = sVars.BagsSpawn or false; 

    local GasMaskLowRarity = sVars.GasMasks * sVars.Loot * 0.1;
    local GasMaskMidRarity = sVars.GasMasks * sVars.Loot * 0.01;
    local GasMaskHighRarity = sVars.GasMasks * sVars.Loot * 0.001;
    local AccessoriesCommon = sVars.Accessories * sVars.Loot * 1.0;
    local AccessoriesLowRarity = sVars.Accessories * sVars.Loot * 0.1;
    local AccessoriesMidRarity = sVars.Accessories * sVars.Loot * 0.01;
    local AccessoriesHighRarity = sVars.Accessories * sVars.Loot * 0.01;
    local SpiffoRarity = sVars.Spiffo * sVars.Loot * 0.001;
    local PlushieRarity = sVars.Plushies * sVars.Loot * 0.001;

    if sVars.BagsSpawn then
        HCustoms:addDistributions({
            --Backpacks
            ["HCustoms.ModularPackBlackMaxLite"] = AccessoriesHighRarity,
            ["HCustoms.ModularPackBlueMaxLite"] = AccessoriesHighRarity,
            ["HCustoms.ModularPackRedMaxLite"] = AccessoriesHighRarity,
            ["HCustoms.ModularPackLeatherMaxLite"] = AccessoriesHighRarity,
            ["HCustoms.ModularPackOliveMaxLite"] = AccessoriesHighRarity,
            ["HCustoms.ModularPackPinkMaxLite"] = AccessoriesHighRarity,
            ["HCustoms.ModularPackTanMaxLite"] = AccessoriesHighRarity,
            ["HCustoms.ModularPackWoodlandMaxLite"] = AccessoriesHighRarity,
            ["HCustoms.Bag_EliteCombatLiteGraffiti"] = AccessoriesHighRarity,
            ["HCustoms.EliteCombatSmallPackGraffiti"] = AccessoriesHighRarity,
            ["HCustoms.Bag_EliteCombatLiteRetro"] = AccessoriesHighRarity,
            ["HCustoms.EliteCombatSmallPackRetro"] = AccessoriesHighRarity,
            ["HCustoms.Bag_EliteCombatLiteSunrise"] = AccessoriesHighRarity,
            ["HCustoms.EliteCombatSmallPackSunrise"] = AccessoriesHighRarity,
            ["HCustoms.Bag_EliteCombatLiteCeladon"] = AccessoriesHighRarity,
            ["HCustoms.EliteCombatSmallPackCeladon"] = AccessoriesHighRarity,
            ["HCustoms.Bag_EliteCombatLiteGamboge"] = AccessoriesHighRarity,
            ["HCustoms.EliteCombatSmallPackGamboge"] = AccessoriesHighRarity,
            ["HCustoms.Bag_EliteCombatLiteWatchet"] = AccessoriesHighRarity,
            ["HCustoms.EliteCombatSmallPackWatchet"] = AccessoriesHighRarity,
            ["HCustoms.Bag_EliteCombatLiteLaguna"] = AccessoriesHighRarity,
            ["HCustoms.EliteCombatSmallPackLaguna"] = AccessoriesHighRarity,
            ["HCustoms.Bag_MedicalBackpackNew"] = AccessoriesHighRarity,
            ["HCustoms.Bag_GolfBagUpgrade"] = AccessoriesHighRarity,
        }, {
            "ArmySurplusBackpacks",
            "CampingLockers",
            "CampingStoreBackpacks",
            "CrateCamping",
            "Hiker",
            "HuntingLockers",
            "SurvivalGear",
        });
    else
        HCustoms:addDistributions({
            --Backpacks
            ["HCustoms.ModularPackBlackMaxLite"] = AccessoriesHighRarity,
            ["HCustoms.ModularPackBlueMaxLite"] = AccessoriesHighRarity,
            ["HCustoms.ModularPackRedMaxLite"] = AccessoriesHighRarity,
            ["HCustoms.ModularPackLeatherMaxLite"] = AccessoriesHighRarity,
            ["HCustoms.ModularPackOliveMaxLite"] = AccessoriesHighRarity,
            ["HCustoms.ModularPackPinkMaxLite"] = AccessoriesHighRarity,
            ["HCustoms.ModularPackTanMaxLite"] = AccessoriesHighRarity,
            ["HCustoms.ModularPackWoodlandMaxLite"] = AccessoriesHighRarity,
            ["HCustoms.Bag_EliteCombatLiteGraffiti"] = AccessoriesHighRarity,
            ["HCustoms.EliteCombatSmallPackGraffiti"] = AccessoriesHighRarity,
            ["HCustoms.Bag_EliteCombatLiteRetro"] = AccessoriesHighRarity,
            ["HCustoms.EliteCombatSmallPackRetro"] = AccessoriesHighRarity,
            ["HCustoms.Bag_EliteCombatLiteSunrise"] = AccessoriesHighRarity,
            ["HCustoms.EliteCombatSmallPackSunrise"] = AccessoriesHighRarity,
            ["HCustoms.Bag_EliteCombatLiteCeladon"] = AccessoriesHighRarity,
            ["HCustoms.EliteCombatSmallPackCeladon"] = AccessoriesHighRarity,
            ["HCustoms.Bag_EliteCombatLiteGamboge"] = AccessoriesHighRarity,
            ["HCustoms.EliteCombatSmallPackGamboge"] = AccessoriesHighRarity,
            ["HCustoms.Bag_EliteCombatLiteWatchet"] = AccessoriesHighRarity,
            ["HCustoms.EliteCombatSmallPackWatchet"] = AccessoriesHighRarity,
            ["HCustoms.Bag_EliteCombatLiteLaguna"] = AccessoriesHighRarity,
            ["HCustoms.EliteCombatSmallPackLaguna"] = AccessoriesHighRarity,
            ["HCustoms.Bag_MedicalBackpackNew"] = AccessoriesHighRarity,
            ["HCustoms.Bag_GolfBagUpgrade"] = AccessoriesHighRarity,
        }, {
        });
    end

    HCustoms:addDistributions({
        --Flashlights
        ["HCustoms.AntiqueMilitaryFlashlight"] = AccessoriesMidRarity,
        ["HCustoms.ClipFlashlight"] = AccessoriesMidRarity,
        ["HCustoms.ReconFlashlight"] = AccessoriesMidRarity,
    }, {
        "ArmyHangarTools",
        "ArmyStorageElectronics",
        "ArmySurplusMisc",
        "ClosetShelfGeneric",
        "ControlRoomCounter",
        "CrateElectronics",
        "ElectronicStoreMisc",
        "GeneratorRoom",
    });

    HCustoms:addDistributions({
        --Ties
        ["HCustoms.Tie_BowTieFancy"] = AccessoriesMidRarity,
        ["HCustoms.Tie_TieFullFancy"] = AccessoriesMidRarity,
    }, {
        "ClothingStoresJacketsFormal",
        "ClothingStoresShirtsFormal",
        "LockerClassy",
        "WardrobeWomanClassy",
        "WardrobeManClassy",
    });


    HCustoms:addDistributions({
        --Eyewear
        ["HCustoms.Glasses_3DGlasses"] = AccessoriesHighRarity,
        ["HCustoms.Glasses_BlackoutWrap"] = AccessoriesLowRarity,
        ["HCustoms.Glasses_ButterflySunglasses"] = AccessoriesLowRarity,
        ["HCustoms.Glasses_CatEyeRetro"] = AccessoriesCommon,
        ["HCustoms.Glasses_CatEyeSunglasses"] = AccessoriesLowRarity,
        ["HCustoms.Glasses_CircleFlower"] = AccessoriesLowRarity,
        ["HCustoms.Glasses_CircleFrames"] = AccessoriesLowRarity,
        ["HCustoms.Glasses_DoubleRimmedAviators"] = AccessoriesLowRarity,
        ["HCustoms.Glasses_FancyShutter"] = AccessoriesMidRarity,
        ["HCustoms.Glasses_HeartSunglasses"] = AccessoriesLowRarity,
        ["HCustoms.Glasses_HexagonGlasses"] = AccessoriesLowRarity,
        ["HCustoms.Glasses_KeyholeSunglasses"] = AccessoriesLowRarity,
        ["HCustoms.Glasses_KittyGlasses"] = AccessoriesMidRarity,
        ["HCustoms.Glasses_ShieldSunglasses"] = AccessoriesLowRarity,
        ["HCustoms.Glasses_StrikerSunglasses"] = AccessoriesLowRarity,
        ["HCustoms.Glasses_VintageSquare"] = AccessoriesLowRarity,
        ["HCustoms.Glasses_VisorSunglasses"] = AccessoriesMidRarity,
        ["HCustoms.Glasses_Wayfarer"] = AccessoriesCommon,
    }, {
        "BedroomSideTable",
        "ClothingStoresEyewear",
        "OptometristGlasses",
        "VacationStuff",
    });

    HCustoms:addDistributions({
        --Eyepatches
        ["HCustoms.Glasses_FancyEyepatch_Left"] = AccessoriesHighRarity,
        ["HCustoms.Glasses_MedallionEyepatch_Left"] = AccessoriesHighRarity,
        ["HCustoms.Glasses_ClothEyepatch_Left"] = AccessoriesHighRarity,
    }, {
        "BedroomSideTable",
        "ClothingStoresEyewear",
        "OptometristGlasses",
        "VacationStuff",
    });


    HCustoms:addDistributions({
        -- GasMasks
        ["HCustoms.Hat_GasMaskPBF"] = GasMaskLowRarity,
        ["HCustoms.Hat_GasMaskPPM88"] = GasMaskLowRarity,
        ["HCustoms.Hat_GasMaskPMK1"] = GasMaskLowRarity,
        ["HCustoms.Hat_GasMaskRebreather"] = GasMaskLowRarity,
        ["HCustoms.Hat_ChemicalMask"] = GasMaskLowRarity,
        ["HCustoms.Hat_AviationGasMask"] = GasMaskLowRarity,
        ["HCustoms.Hat_GasMaskRebreatherSkull"] = GasMaskLowRarity,
    }, {
        "ArmySurplusHeadwear", 
        "ArmyHangarOutfit",
        "ArmyStorageOutfit",
    });

    HCustoms:addDistributions({
        -- GasMasks
        ["HCustoms.Hat_GasMaskPBF"] = GasMaskMidRarity,
        ["HCustoms.Hat_GasMaskPPM88"] = GasMaskMidRarity,
        ["HCustoms.Hat_GasMaskPMK1"] = GasMaskMidRarity,
        ["HCustoms.Hat_GasMaskRebreather"] = GasMaskMidRarity,
        ["HCustoms.Hat_ChemicalMask"] = GasMaskMidRarity,
        ["HCustoms.Hat_AviationGasMask"] = GasMaskLowRarity,
        ["HCustoms.Hat_GasMaskRebreatherSkull"] = GasMaskLowRarity,
    }, {
        "ArmyStorageMedical", 
        "MedicalStorageOutfit",
        "SafehouseMedical",
        "ClothingStorageHeadwear",
    });

    HCustoms:addDistributions({
        -- Hats
        ["HCustoms.RibbonHeadbandBlue"] = AccessoriesLowRarity,
        ["HCustoms.RibbonHeadbandBlack"] = AccessoriesLowRarity,
        ["HCustoms.RibbonHeadbandWhite"] = AccessoriesLowRarity,
        ["HCustoms.RibbonHeadbandPink"] = AccessoriesLowRarity,
        ["HCustoms.LittleHatHeadbandRed"] = AccessoriesLowRarity,
        ["HCustoms.LittleHatHeadbandBlack"] = AccessoriesLowRarity,
        ["HCustoms.Hat_HolidayTopHatRed"] = AccessoriesLowRarity,
        ["HCustoms.Hat_HolidayTopHatBlack"] = AccessoriesLowRarity,
        ["HCustoms.Hat_WesternSheriffHatBrown"] = AccessoriesLowRarity,
        ["HCustoms.Hat_WesternSheriffHatBlack"] = AccessoriesLowRarity,
        ["HCustoms.Hat_SteampunkTopHat"] = AccessoriesLowRarity,
        ["HCustoms.Hat_BuckleHat"] = AccessoriesLowRarity,
        ["HCustoms.Hat_CazadorHood"] = AccessoriesLowRarity,
        ["HCustoms.Hat_HeadScarfFull"] = AccessoriesCommon,
        ["HCustoms.Hat_PandaKnitHat"] = AccessoriesLowRarity,
        ["HCustoms.Hat_SpikedHat"] = AccessoriesLowRarity,
        ["HCustoms.Hat_CampingKnitHat"] = AccessoriesCommon,
        ["HCustoms.Hat_DavyCrockettHat"] = AccessoriesLowRarity,
        ["HCustoms.Hat_CowlHood"] = AccessoriesLowRarity,
        ["HCustoms.Scarf_ClothPoncho"] = AccessoriesLowRarity,
        ["HCustoms.Scarf_MilitaryCloak"] = AccessoriesLowRarity,
        ["HCustoms.Scarf_SerapeCloakTINT"] = AccessoriesLowRarity,
        ["HCustoms.Scarf_SerapeCloak"] = AccessoriesLowRarity,
        ["HCustoms.Hat_BrodieHelmet"] = AccessoriesLowRarity,
        ["HCustoms.Hat_SafariHat"] = AccessoriesLowRarity,
        ["HCustoms.Hat_CrocHat"] = AccessoriesLowRarity,
        ["HCustoms.Hat_AntiqueHelmetGoggles"] = AccessoriesLowRarity,
        ["HCustoms.Hat_DerbyHat"] = AccessoriesMidRarity,
        ["HCustoms.Hat_FlowerCrown"] = AccessoriesCommon,
        ["HCustoms.Hat_FlowerWreath"] = AccessoriesCommon,
        ["HCustoms.Hat_MageHat"] = AccessoriesHighRarity,
        ["HCustoms.Hat_SundayHat"] = AccessoriesLowRarity,
        ["HCustoms.Hat_BrimmedHat"] = AccessoriesMidRarity,
        ["HCustoms.Hat_CasquetteCap"] = AccessoriesMidRarity,
        ["HCustoms.Hat_ProperBeret"] = AccessoriesMidRarity,
        ["HCustoms.Hat_OfficialOfficerCap"] = AccessoriesMidRarity,
        ["HCustoms.Hat_LeatherHuntingCap"] = AccessoriesLowRarity,
    }, {
        "ClothingStorageHeadwear", 
        "ClothingStoresHeadwear",
    });


    HCustoms:addDistributions({
        -- Masks
        ["HCustoms.Hat_JawBoneMask"] = AccessoriesLowRarity,
        ["HCustoms.Hat_GuyFawkesMask"] = AccessoriesLowRarity,
        ["HCustoms.Hat_SakaiMask"] = AccessoriesLowRarity,
        ["HCustoms.Glasses_WeldingGogglesOn"] = AccessoriesLowRarity,
        ["HCustoms.Hat_SpikedMask"] = AccessoriesLowRarity,
        ["HCustoms.Hat_SpikedMaskWhite"] = AccessoriesLowRarity,
        ["HCustoms.Hat_SpikedMaskPink"] = AccessoriesLowRarity,
        ["HCustoms.Glasses_MonocleRight"] = AccessoriesLowRarity,
        ["HCustoms.Hat_PiousMask"] = AccessoriesLowRarity,
        ["HCustoms.Hat_NeckGaiter"] = AccessoriesLowRarity,
        ["HCustoms.Hat_ShemScarf"] = AccessoriesLowRarity,
        ["HCustoms.Hat_LegionMask"] = AccessoriesLowRarity,
    }, {
        "ClothingStorageHeadwear", 
        "ClothingStoresHeadwear",
        "ClothingStoresEyewear", 
        "OptometristGlasses",
    });

    HCustoms:addDistributions({
        -- Rare Masks
        ["HCustoms.Hat_OniMask"] = AccessoriesMidRarity,
        ["HCustoms.Hat_TenguMask"] = AccessoriesMidRarity,
        ["HCustoms.Hat_HannyaMask"] = AccessoriesMidRarity,
        ["HCustoms.Hat_KitsuneMask"] = AccessoriesMidRarity,
        ["HCustoms.Hat_CorvoMask"] = AccessoriesMidRarity,
        ["HCustoms.Hat_TikiMask"] = AccessoriesMidRarity,
        ["HCustoms.Hat_ArtificialMask"] = AccessoriesMidRarity,
        ["HCustoms.Hat_VenetianMask"] = AccessoriesMidRarity,
        ["HCustoms.Hat_GolemMask"] = AccessoriesMidRarity,
        ["HCustoms.Hat_MuteMask"] = AccessoriesMidRarity,
        ["HCustoms.Hat_DecrepitMask"] = AccessoriesMidRarity,
        ["HCustoms.Hat_CyberneticMask"] = AccessoriesMidRarity,
        ["HCustoms.Hat_CarnivalMask"] = AccessoriesMidRarity,
    }, {
        "ClothingStorageHeadwear", 
        "ClothingStoresHeadwear",
        "ClothingStoresEyewear", 
        "CrateClothesRandom",
    });

    if sVars.CazadorSpawn then
        HCustoms:addDistributions({
            -- Cazador Outfits
            ["HCustoms.LongCoat_Cazador"] = GasMaskHighRarity,
            ["HCustoms.CazadorChest"] = GasMaskHighRarity,
            ["HCustoms.CazadorPants"] = GasMaskHighRarity,
            ["HCustoms.Shoes_CazadorBoots"] = GasMaskHighRarity,
            ["HCustoms.Gloves_CazadorGloves"] = GasMaskHighRarity,
            ["HCustoms.Bag_CazadorBackpack"] = GasMaskHighRarity,
            ["HCustoms.Hat_CazadorGasMask"] = GasMaskHighRarity,
        }, {
            "CrateClothesRandom", 
            "CrateRandomJunk",
            "ClosetShelfGeneric", 
            "ClothingStorageWinter",
        });
    else
        HCustoms:addDistributions({
            -- Cazador Outfits
            ["HCustoms.LongCoat_Cazador"] = GasMaskHighRarity,
            ["HCustoms.CazadorChest"] = GasMaskHighRarity,
            ["HCustoms.CazadorPants"] = GasMaskHighRarity,
            ["HCustoms.Shoes_CazadorBoots"] = GasMaskHighRarity,
            ["HCustoms.Gloves_CazadorGloves"] = GasMaskHighRarity,
            ["HCustoms.Bag_CazadorBackpack"] = GasMaskHighRarity,
            ["HCustoms.Hat_CazadorGasMask"] = GasMaskHighRarity,
        }, {
        });
    end

    HCustoms:addDistributions({
        -- Rare Outfits
        ["HCustoms.Shirt_HawaiianPurpleCallaLily"] = GasMaskHighRarity,
        ["HCustoms.Shirt_HawaiianGreenStarOrchid"] = GasMaskHighRarity,
        ["HCustoms.Shirt_MuddlefootHawaiian"] = GasMaskHighRarity,
        ["HCustoms.Shirt_IHeartStein"] = GasMaskHighRarity,
        ["HCustoms.Shirt_FOVH"] = GasMaskHighRarity,
        ["HCustoms.Shirt_DotD"] = GasMaskHighRarity,
        ["HCustoms.Shirt_SurvivedTheWipe"] = GasMaskHighRarity,
        ["HCustoms.Shirt_NewPARP"] = GasMaskHighRarity,
        ["HCustoms.Shirt_PodPeople"] = GasMaskHighRarity,
        ["HCustoms.Shirt_ThisIsBull"] = GasMaskHighRarity,
        ["HCustoms.Shirt_SundayDrivers"] = GasMaskHighRarity,
    }, {
        "CrateClothesRandom", 
        "CrateRandomJunk",
        "ClosetShelfGeneric", 
        "ClothingStorageWinter",
    });


    HCustoms:addDistributions({
    -- Spiffo Suit
        ["HCustoms.SpiffoSuit_Stitches"] = SpiffoRarity,
        ["HCustoms.SpiffoTail_Stitches"] = SpiffoRarity,
        ["HCustoms.Hat_Spiffo_Stitches"] = SpiffoRarity,

    }, {
        "CrateSpiffoMerch", 
        "CrateToys",
    });

    if sVars.PlushiesSpawn then
        HCustoms:addDistributions({
        -- Plushies
            ["HCustoms.GnomeAmericanPlushie"] = PlushieRarity,
            ["HCustoms.PinkKittenPlushie"] = PlushieRarity,
            ["HCustoms.ShredderPlushie"] = PlushieRarity,
            ["HCustoms.SplinterPlushie"] = PlushieRarity,
            ["HCustoms.LeonardoPlushie"] = PlushieRarity,
            ["HCustoms.RaphaelPlushie"] = PlushieRarity,
            ["HCustoms.MichelangeloPlushie"] = PlushieRarity,
            ["HCustoms.DonatelloPlushie"] = PlushieRarity,
            ["HCustoms.ShredderPlushie"] = PlushieRarity,
            ["HCustoms.FloppyPlushie"] = PlushieRarity,
            ["HCustoms.UnicornPlushie"] = PlushieRarity,
            ["HCustoms.GoatPlushie"] = PlushieRarity,
            ["HCustoms.HexDollPlushie"] = PlushieRarity,
            ["HCustoms.TurtlePlushie"] = PlushieRarity,
            ["HCustoms.OtterPlushie"] = PlushieRarity,
            ["HCustoms.PuarPlushie"] = PlushieRarity,
            ["HCustoms.PiranhaPlushie"] = PlushieRarity,
            ["HCustoms.Ewok1Plushie"] = PlushieRarity,
            ["HCustoms.Ewok2Plushie"] = PlushieRarity,
            ["HCustoms.Porg1Plushie"] = PlushieRarity,
            ["HCustoms.Porg2Plushie"] = PlushieRarity,
            ["HCustoms.DeadpoolPlushie"] = PlushieRarity,
            ["HCustoms.SpongebobPlushie"] = PlushieRarity,
            ["HCustoms.PatrickStarPlushie"] = PlushieRarity,
            ["HCustoms.SquidwardPlushie"] = PlushieRarity,
            ["HCustoms.MrKrabsPlushie"] = PlushieRarity,
        }, {
            "CrateToys",
            "DaycareShelves", 
            "GigamartToys", 
            "PrisonCellRandom", 
        });
    else
        HCustoms:addDistributions({
        -- Plushies
            ["HCustoms.GnomeAmericanPlushie"] = PlushieRarity,
            ["HCustoms.PinkKittenPlushie"] = PlushieRarity,
            ["HCustoms.ShredderPlushie"] = PlushieRarity,
            ["HCustoms.SplinterPlushie"] = PlushieRarity,
            ["HCustoms.LeonardoPlushie"] = PlushieRarity,
            ["HCustoms.RaphaelPlushie"] = PlushieRarity,
            ["HCustoms.MichelangeloPlushie"] = PlushieRarity,
            ["HCustoms.DonatelloPlushie"] = PlushieRarity,
            ["HCustoms.ShredderPlushie"] = PlushieRarity,
            ["HCustoms.FloppyPlushie"] = PlushieRarity,
            ["HCustoms.UnicornPlushie"] = PlushieRarity,
            ["HCustoms.GoatPlushie"] = PlushieRarity,
            ["HCustoms.HexDollPlushie"] = PlushieRarity,
            ["HCustoms.TurtlePlushie"] = PlushieRarity,
            ["HCustoms.OtterPlushie"] = PlushieRarity,
            ["HCustoms.PuarPlushie"] = PlushieRarity,
            ["HCustoms.PiranhaPlushie"] = PlushieRarity,
            ["HCustoms.Ewok1Plushie"] = PlushieRarity,
            ["HCustoms.Ewok2Plushie"] = PlushieRarity,
            ["HCustoms.Porg1Plushie"] = PlushieRarity,
            ["HCustoms.Porg2Plushie"] = PlushieRarity,
            ["HCustoms.DeadpoolPlushie"] = PlushieRarity,
            ["HCustoms.SpongebobPlushie"] = PlushieRarity,
            ["HCustoms.PatrickStarPlushie"] = PlushieRarity,
            ["HCustoms.SquidwardPlushie"] = PlushieRarity,
            ["HCustoms.MrKrabsPlushie"] = PlushieRarity,
        }, {
        });
    end

    HCustoms:addDistributions({
        --Dresses
        ["HCustoms.Dress_BouffantDress"] = AccessoriesHighRarity,
        ["HCustoms.Dress_CuteDress"] = AccessoriesLowRarity,
        ["HCustoms.Dress_FrilledCheongsam"] = AccessoriesLowRarity,
        ["HCustoms.Dress_DancerDress"] = AccessoriesMidRarity,
        ["HCustoms.Dress_ApronDress"] = AccessoriesLowRarity,
        ["HCustoms.Dress_RockabillyDress"] = AccessoriesLowRarity,
        ["HCustoms.Dress_ShortKimono"] = AccessoriesMidRarity,
        ["HCustoms.Dress_HalterTopDress"] = AccessoriesLowRarity,
        ["HCustoms.Dress_ElegantDress"] = AccessoriesHighRarity,
    }, {
        "ClothingStoresDress",
        "LaundryLoad6",
        "LingerieStoreOutfits",
        "Locker",
        "WardrobeWoman",
        "WardrobeWomanClassy",
    });

    HCustoms:addDistributions({
        --Skirts
        ["HCustoms.Skirt_PunkSkirt"] = AccessoriesMidRarity,
        ["HCustoms.Skirt_SuspendersSkirt"] = AccessoriesMidRarity,
        ["HCustoms.Skirt_PencilSkirt"] = AccessoriesLowRarity,
        ["HCustoms.Skirt_SarongWrapSkirt"] = AccessoriesMidRarity,
    }, {
        "BedroomDresser",
        "ClothingStorageLegwear",
        "ClothingStoresDress",
        "LaundryLoad6",
        "Locker",
        "WardrobeWoman",
        "WardrobeWomanClassy",
    });

    HCustoms:addDistributions({
        --Shirts & Tops
        ["HCustoms.Shirt_CorsetFur"] = AccessoriesMidRarity,
        ["HCustoms.Shirt_TiedFlannel"] = AccessoriesLowRarity,
        ["HCustoms.Shirt_CroppedFurTop"] = AccessoriesMidRarity,
        ["HCustoms.Shirt_ZipCropShirt"] = AccessoriesMidRarity,
        ["HCustoms.Shirt_SarongWrapTop"] = AccessoriesMidRarity,
        ["HCustoms.Shirt_CroppedOffShoulderShirt"] = AccessoriesLowRarity,
        ["HCustoms.Hoodie_CatHoodie"] = AccessoriesHighRarity,
        ["HCustoms.Boilersuit_KarateGi"] = AccessoriesHighRarity,
        ["HCustoms.Shirt_CroppedHolidaySweater"] = AccessoriesMidRarity,
        ["HCustoms.Shirt_CroppedSportsHoodie"] = AccessoriesMidRarity,
    }, {
        "ClothingStorageAllShirts",
        "ClothingStoresShirts",
        "LaundryLoad4",
        "LaundryLoad5",
        "WardrobeMan",
        "WardrobeRedneck",
        "WardrobeWoman",
    });

    HCustoms:addDistributions({
        --Trousers & Bottoms
        ["HCustoms.Trousers_SuspendersSingle"] = AccessoriesMidRarity,
        ["HCustoms.Shorts_ShortJeanShorts"] = AccessoriesLowRarity,
        ["HCustoms.Shorts_CuffedJeanShorts"] = AccessoriesLowRarity,
        ["HCustoms.Trousers_CargoPants"] = AccessoriesLowRarity,
    }, {
        "ClothingStorageLegwear",
        "ClothingStoresPants",
        "LaundryLoad4",
        "LaundryLoad5",
        "WardrobeMan",
        "WardrobeRedneck",
        "WardrobeWoman",
    });

    HCustoms:addDistributions({
        --Jackets
        ["HCustoms.Jacket_WeatheredJacket"] = AccessoriesHighRarity,
        ["HCustoms.Jacket_PunkJacket"] = AccessoriesMidRarity,
        ["HCustoms.Jacket_SheerJacket"] = AccessoriesMidRarity,
    }, {
        "ClothingStorageAllJackets",
        "ClothingStorageWinter",
        "ClothingStoresJackets",
        "WardrobeMan",
        "WardrobeRedneck",
        "WardrobeWoman",
    });

    HCustoms:addDistributions({
    --Other
    ["HCustoms.Gloves_CatGloves"] = AccessoriesHighRarity,
    }, {
        "ClothingStorageWinter",
        "WardrobeMan",
        "WardrobeRedneck",
        "WardrobeWoman",
    });

end

Events.OnPreDistributionMerge.Add(updateDistributionsHCustoms);



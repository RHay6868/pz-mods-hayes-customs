require "Items/ItemPicker"
require "Items/Distributions"
require "Items/SuburbsDistributions"
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"

HCustoms = HCustoms or {};

local sVars = SandboxVars.HCustoms;
sVars.RemoveEyewear = sVars.RemoveEyewear or false;
sVars.RemoveHats = sVars.RemoveHats or false;
sVars.RemoveMasks = sVars.RemoveMasks or false;
sVars.RemovePlushies = sVars.RemovePlushies or false;
sVars.RemoveClothing = sVars.RemoveClothing or false;
sVars.RemoveBags = sVars.RemoveBags or false;

local hCustomsEyewear = {
    "HCustoms.Glasses_3DGlasses", "HCustoms.Glasses_BlackoutWrap",
    "HCustoms.Glasses_ButterflySunglasses", "HCustoms.Glasses_CatEyeRetro", "HCustoms.Glasses_CatEyeSunglasses",
    "HCustoms.Glasses_CircleFlower", "HCustoms.Glasses_CircleFrames", "HCustoms.Glasses_DoubleRimmedAviators", "HCustoms.Glasses_FancyShutter",
    "HCustoms.Glasses_HeartSunglasses", "HCustoms.Glasses_HexagonGlasses", "HCustoms.Glasses_KeyholeSunglasses",
    "HCustoms.Glasses_KittyGlasses", "HCustoms.Glasses_ShieldSunglasses", "HCustoms.Glasses_StrikerSunglasses", 
    "HCustoms.Glasses_VintageSquare", "HCustoms.Glasses_VisorSunglasses", "HCustoms.Glasses_Wayfarer",
    "HCustoms.Glasses_FancyEyepatch_Left", "HCustoms.Glasses_MedallionEyepatch_Left", "HCustoms.Glasses_ClothEyepatch_Left"
}

local hCustomsHats = {
    "HCustoms.RibbonHeadbandBlue", "HCustoms.RibbonHeadbandBlack", "HCustoms.RibbonHeadbandWhite", "HCustoms.RibbonHeadbandPink", "HCustoms.LittleHatHeadbandRed",
    "HCustoms.LittleHatHeadbandBlack", "HCustoms.Hat_HolidayTopHatRed", "HCustoms.Hat_HolidayTopHatBlack", "HCustoms.Hat_WesternSheriffHatBrown", 
    "HCustoms.Hat_WesternSheriffHatBlack", "HCustoms.Hat_SteampunkTopHat", "HCustoms.Hat_BuckleHat", "HCustoms.Hat_CazadorHood",
    "HCustoms.Hat_HeadScarfFull", "HCustoms.Hat_PandaKnitHat", "HCustoms.Hat_SpikedHat", "HCustoms.Hat_CampingKnitHat", 
    "HCustoms.Hat_DavyCrockettHat", "HCustoms.Hat_CowlHood", "HCustoms.Scarf_ClothPoncho", "HCustoms.Scarf_MilitaryCloak",
    "HCustoms.Scarf_SerapeCloakTINT", "HCustoms.Scarf_SerapeCloak", "HCustoms.Hat_BrodieHelmet", "HCustoms.Hat_SafariHat", 
    "HCustoms.Hat_CrocHat", "HCustoms.Hat_AntiqueHelmetGoggles", "HCustoms.Hat_DerbyHat", "HCustoms.Hat_FlowerCrown",
    "HCustoms.Hat_FlowerWreath", "HCustoms.Hat_MageHat", "HCustoms.Hat_SundayHat", "HCustoms.Hat_BrimmedHat", 
    "HCustoms.Hat_CasquetteCap", "HCustoms.Hat_ProperBeret", "HCustoms.Hat_OfficialOfficerCap", "HCustoms.Hat_LeatherHuntingCap"
}

local hCustomsMasks = {
    "HCustoms.Hat_GasMaskPBF", "HCustoms.Hat_GasMaskPPM88", "HCustoms.Hat_GasMaskPMK1", "HCustoms.Hat_GasMaskRebreather",
    "HCustoms.Hat_ChemicalMask", "HCustoms.Hat_AviationGasMask", "HCustoms.Hat_GasMaskRebreatherSkull",
    "HCustoms.Hat_JawBoneMask", "HCustoms.Hat_GuyFawkesMask", "HCustoms.Hat_SakaiMask", 
    "HCustoms.Glasses_WeldingGogglesOn", "HCustoms.Hat_SpikedMask", "HCustoms.Hat_SpikedMaskWhite",
    "HCustoms.Hat_SpikedMaskPink", "HCustoms.Glasses_MonocleRight", "HCustoms.Hat_PiousMask",
    "HCustoms.Hat_NeckGaiter", "HCustoms.Hat_ShemScarf", "HCustoms.Hat_LegionMask", 
    "HCustoms.Hat_OniMask", "HCustoms.Hat_TenguMask", "HCustoms.Hat_HannyaMask", "HCustoms.Hat_KitsuneMask",
    "HCustoms.Hat_CorvoMask", "HCustoms.Hat_TikiMask", "HCustoms.Hat_ArtificialMask",
    "HCustoms.Hat_VenetianMask", "HCustoms.Hat_GolemMask", "HCustoms.Hat_MuteMask", 
    "HCustoms.Hat_DecrepitMask", "HCustoms.Hat_CyberneticMask", "HCustoms.Hat_CarnivalMask", "HCustoms.Hat_CazadorGasMask"
}

local hCustomsPlushies = {
    "HCustoms.GnomeAmericanPlushie", "HCustoms.PinkKittenPlushie", "HCustoms.ShredderPlushie",
    "HCustoms.SplinterPlushie", "HCustoms.LeonardoPlushie", "HCustoms.RaphaelPlushie", "HCustoms.MichelangeloPlushie",
    "HCustoms.DonatelloPlushie", "HCustoms.ShredderPlushie", "HCustoms.FloppyPlushie", "HCustoms.UnicornPlushie", "HCustoms.GoatPlushie",
    "HCustoms.HexDollPlushie", "HCustoms.TurtlePlushie", "HCustoms.OtterPlushie", "HCustoms.PuarPlushie", "HCustoms.PiranhaPlushie", 
    "HCustoms.Ewok1Plushie", "HCustoms.Ewok2Plushie", "HCustoms.Porg1Plushie", "HCustoms.Porg2Plushie", "HCustoms.DeadpoolPlushie", 
    "HCustoms.SpongebobPlushie", "HCustoms.PatrickStarPlushie", "HCustoms.SquidwardPlushie", "HCustoms.MrKrabsPlushie"
}

local hCustomsClothing = {
    "HCustoms.LongCoat_Cazador", "HCustoms.CazadorChest", "HCustoms.Tie_BowTieFancy", "HCustoms.Tie_TieFullFancy",
    "HCustoms.CazadorPants", "HCustoms.Shoes_CazadorBoots", "HCustoms.Gloves_CazadorGloves", "HCustoms.Bag_CazadorBackpack", 
    "HCustoms.Shirt_DotD", "HCustoms.Shirt_HawaiianPurpleCallaLily", "HCustoms.Shirt_HawaiianGreenStarOrchid",
    "HCustoms.Shirt_MuddlefootHawaiian", "HCustoms.Shirt_IHeartStein", "HCustoms.Shirt_FOVH", "HCustoms.Shirt_SurvivedTheWipe", 
    "HCustoms.Shirt_NewPARP", "HCustoms.Shirt_PodPeople", "HCustoms.Shirt_ThisIsBull", "HCustoms.Shirt_SundayDrivers", 
    "HCustoms.Dress_BouffantDress", "HCustoms.Dress_CuteDress", "HCustoms.Dress_FrilledCheongsam", "HCustoms.Dress_DancerDress", 
    "HCustoms.Dress_ApronDress", "HCustoms.Dress_RockabillyDress", "HCustoms.Dress_ShortKimono", "HCustoms.Dress_HalterTopDress", 
    "HCustoms.Dress_ElegantDress", "HCustoms.Skirt_PunkSkirt", "HCustoms.Skirt_SuspendersSkirt", "HCustoms.Skirt_PencilSkirt", 
    "HCustoms.Skirt_SarongWrapSkirt", "HCustoms.Shirt_CorsetFur", "HCustoms.Shirt_TiedFlannel", "HCustoms.Shirt_CroppedFurTop",
    "HCustoms.Shirt_ZipCropShirt", "HCustoms.Shirt_SarongWrapTop", "HCustoms.Shirt_CroppedOffShoulderShirt", 
    "HCustoms.Hoodie_CatHoodie", "HCustoms.Boilersuit_KarateGi", "HCustoms.Shirt_CroppedHolidaySweater", "HCustoms.Shirt_CroppedSportsHoodie",
    "HCustoms.Trousers_SuspendersSingle", "HCustoms.Shorts_ShortJeanShorts", "HCustoms.Shorts_CuffedJeanShorts", "HCustoms.Trousers_CargoPants", 
    "HCustoms.Gloves_CatGloves", "HCustoms.Jacket_SheerJacket", "HCustoms.Jacket_PunkJacket", "HCustoms.Jacket_WeatheredJacket",
    "HCustoms.SpiffoSuit_Stitches", "HCustoms.SpiffoTail_Stitches", "HCustoms.Hat_Spiffo_Stitches"
}

local hCustomsBags = {
    "HCustoms.ModularPackBlackMaxLite", "HCustoms.ModularPackBlueMaxLite", "HCustoms.ModularPackRedMaxLite", "HCustoms.ModularPackLeatherMaxLite", 
    "HCustoms.ModularPackOliveMaxLite", "HCustoms.ModularPackPinkMaxLite", "HCustoms.ModularPackTanMaxLite", "HCustoms.ModularPackWoodlandMaxLite", 
    "HCustoms.Bag_EliteCombatLiteGraffiti", "HCustoms.EliteCombatSmallPackGraffiti", "HCustoms.Bag_EliteCombatLiteRetro", "HCustoms.EliteCombatSmallPackRetro", 
    "HCustoms.Bag_EliteCombatLiteSunrise", "HCustoms.EliteCombatSmallPackSunrise", "HCustoms.Bag_EliteCombatLiteCeladon", "HCustoms.EliteCombatSmallPackCeladon", 
    "HCustoms.Bag_EliteCombatLiteGamboge", "HCustoms.EliteCombatSmallPackGamboge", "HCustoms.Bag_EliteCombatLiteWatchet", "HCustoms.EliteCombatSmallPackWatchet",  
    "HCustoms.Bag_EliteCombatLiteLaguna", "HCustoms.EliteCombatSmallPackLaguna", "HCustoms.Bag_MedicalBackpackNew", "HCustoms.Bag_GolfBagUpgrade"
}

-- Function to get items to remove based on sandbox settings
local function getItemsToRemove()
    local itemsToRemove = {}

    if sVars.RemoveEyewear then
        for _, item in ipairs(hCustomsEyewear) do
            table.insert(itemsToRemove, item)
        end
    end

    if sVars.RemoveHats then
        for _, item in ipairs(hCustomsHats) do
            table.insert(itemsToRemove, item)
        end
    end

    if sVars.RemoveMasks then
        for _, item in ipairs(hCustomsMasks) do
            table.insert(itemsToRemove, item)
        end
    end

    if sVars.RemovePlushies then
        for _, item in ipairs(hCustomsPlushies) do
            table.insert(itemsToRemove, item)
        end
    end

    if sVars.RemoveClothing then
        for _, item in ipairs(hCustomsClothing) do
            table.insert(itemsToRemove, item)
        end
    end

    if sVars.RemoveBags then
        for _, item in ipairs(hCustomsBags) do
            table.insert(itemsToRemove, item)
        end
    end

    return itemsToRemove
end

-- Function to remove items from a distribution table
local function removeItemsFromDistribution(distributions, itemsToRemove)
    for _, dist in pairs(distributions) do
        if type(dist) == "table" then
            if dist.items then
                local i = 1
                while i <= #dist.items do
                    if type(dist.items[i]) == "string" and itemsToRemove[dist.items[i]] then
                        table.remove(dist.items, i)
                        table.remove(dist.items, i)
                    else
                        i = i + 2
                    end
                end
            end
            if dist.junk then
                removeItemsFromDistribution(dist.junk, itemsToRemove)
            end
            for _, subcategory in pairs({"clothingdryer", "clothingdryerbasic", "clothingwasher", "counter", "crate", "freezer", "fridge", "metal_shelves", "shelves"}) do
                if dist[subcategory] then
                    removeItemsFromDistribution(dist[subcategory], itemsToRemove)
                end
            end
        end
    end
end
-- Remove items from all distribution files
Events.OnPreDistributionMerge.Add(function()
    local itemsToRemove = getItemsToRemove()
    local itemSet = {}
    for _, item in ipairs(itemsToRemove) do
        itemSet[item] = true
    end
    
    removeItemsFromDistribution(ProceduralDistributions.list, itemSet)
    removeItemsFromDistribution(Distributions[1], itemSet)
    removeItemsFromDistribution(SuburbsDistributions, itemSet)
    removeItemsFromDistribution(VehicleDistributions, itemSet)
    
    --print("Removed " .. #itemsToRemove .. " items from distributions based on sandbox settings.")
end)

-- Log the removed items after distribution merge
Events.OnPostDistributionMerge.Add(function()
    local itemsRemoved = getItemsToRemove()
    --print("Items removed from distributions:")
    for _, item in ipairs(itemsRemoved) do
        --print("- " .. item)
    end
end)
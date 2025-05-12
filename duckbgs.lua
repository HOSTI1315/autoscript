--[[ 
    Duck Hub Script for Roblox
    Version: 1.0
    Author: Paulvoid & Tungstrong
    Special Thanks: sylentlys
    Language: Vietnamese/English
]]

-- Initial delay for game loading
wait(15)

script_key = "mphAeAwJEPKAbxQEQSWBZQFNsdPdIXOz";

-- Main configuration settings
getgenv().UserConfig = {
    -- Performance Settings
    FPS                 = 15,
    AddFriends          = false,
    
    -- Promo Codes
    RedeemCode = {"RELEASE", "THANKS", "update2", "sylentlyssorry", "update3"},
    
    -- Game Features
    EquipBestFlavorGum  = true,
    BuyFlavorGum        = true,
    AutoMinigames       = true,
    AutoRollDice        = true,
    
    -- Ticket System
    ["Super Ticket"]    = "Robot Claw",
    ["Use Super Ticket"] = true,
    
    -- Game Mechanics
    ["Season Challenges"] = true,
    ["Min tickets"] = "10b",
    ["Min coins"] = "5b",
    
    -- Chest Settings
    ["Giant Chest"] = false,
    ["Void Chest"] = false,
    ["Golden Chest"] = true,
    ["Royal Chest"] = true,
    
    -- Pet Detection System
    ["Detector"] = {
        Enable = true,
        ["Name Needed"] = {"Avernus", "Patronus"},
        ["Rarity Needed"] = {"Legendary", "Mythic", "Secret"}
    },
    
    -- Alien Shop Settings
    ["Alien Shop"] = {
        Enable = false,
        ["Min Gems"] = "1m",
        ["Items Needed"] = {
            "Golden Key", "Mystery Box", 
            "Coins III", "Coins IV",
            "Lucky III", "Lucky IV",
            "Speed III", "Speed IV"
        }
    },
    
    -- Black Market Settings
    ["Black Market"] = {
        Enable = false,
        ["Min Gems"] = "1m",
        ["Items Needed"] = {
            "Lucky Evolved", "Mythic Evolved", 
            "Speed Evolved", "Lucky V", 
            "Mythic V", "Speed V"
        }
    },
    
    -- Potion Crafting
    ["Craft Potions"] = {
        Enable = true,
        MinGems = "100k",
        ["Potion Needed"] = {
            {"Coins", Level = 5}, {"Speed", Level = 5},
            {"Lucky", Level = 5}, {"Mythic", Level = 5}
        }
    },
    
    -- Mastery System
    ["Mastery"] = {
        Pets = 17,  -- +1 Egg per hatch
        Buffs = 21, -- Remote chest opening
        Shops = 11  -- Required for shop purchases
    },
    
    -- Star Shop
    ["Star Shop"] = {
        Enable = true,
        MinStars = 100,
        ["Items Needed"] = {"Speed V", "Lucky V", "Mythic V"}
    },
    
    -- Rift Hunting
    ["Rifts"] = {
        AlwaysFindRifts = true,
        Targets = {"Underworld Egg 3","Underworld Egg 2","Underworld Egg 1","Cyber Egg","Nightmare Egg"},
        Luck = 5
    },
    
    -- Secret Bounty
    ["Secret Bounty"] = {"Prophet", "D0GGY1337", "Queen Kitty"},
    
    -- Egg Farming
    FindDuck = "200M Egg",
    ["Replace FindDuck"] = "Rainbow Egg",
    ["Best Potions Find Duck"] = true,
    
    -- Enchantment Settings
    ["Enchant"] = {
        Enable = true,
        ["Rarity Needed"] = {
            {"Legendary", MinDifficult = "1m"},
            "Mythic",
            "Secret"
        },
        ["Reroll Needed"] = {
            ["Team Up"] = {MinLevel = 2, HigherLevels = true}
        }
    },
    
    -- Resource Coefficients
    ["Gems coefficient"] = 1,
    ["Tickets coefficient"] = 100,

    DailyRewards        = true,
    ClaimIndex          = true,
    ClaimQuests         = true,
    ClaimSeason         = true,
    DoggyJump           = true,
    OpenItemsPowerups   = true,
    ClaimPlayTime       = true,
    ClaimRiftGift       = true,
    UpgradeMastery      = true,
    WheelSpin           = true,
    EquipBestPets       = true,
    ConsumeBestPotions  = true,
    ClaimChallengePass  = true,
  
    -- Auto Restart
    ["Auto Restart"] = true,
    
    -- Webhook Notifications
    ["Webhook"] = {
        Enable = true,
        Note = "Duck",
        ID = "143264667521777664",
        URL = "https://discord.com/api/webhooks/1324719233413943308/D_9DROFOe8RVpQKKndeO3uT762dX4X2uLLE437tg6ctDMQehZzvRfqKDXZjjRiIp8TQ1",
        Rarity = {"Legendary", "Secret"},
        Legendary = "100m",
        ["Special Pets"] = {"Avernus", "Patronus","Dementor","Jackpot","Luminosity"}
    }
}

-- Load the script engine
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/0cf205a620e81d1f3c3d3f75474ab32f.lua "))()
wait(30)

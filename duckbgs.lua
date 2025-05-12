script_key = "mphAeAwJEPKAbxQEQSWBZQFNsdPdIXOz";

getgenv().UserConfig = {
    FPS                 = 5,
    AddFriends          = true,
    RedeemCode = {"RELEASE", "THANKS", "update2", "sylentlyssorry", "update3"},
    EquipBestFlavorGum  = true,
    BuyFlavorGum        = true,
    AutoMinigames       = true,
    AutoRollDice        = true,
    ["Super Ticket"]    = "Robot Claw",
    ["Use Super Ticket"] = true,
    ["Season Challenges"] = true, -- True means there is a chance of getting the secret Luminosity but less hatching xxx false means there is more hatching but no luminosity 
    ["Min tickets"] = "10b", -- Default if not set in UserConfig
    ["Min coins"] = "5b", -- Default if not set in UserConfig
    ["Giant Chest"] = false,
    ["Void Chest"] = false,
    ["Golden Chest"] = false,
    ["Royal Chest"] = false,
    ["Detector"] = {
        Enable = true,
        ["Name Needed"] = {"Avernus", "Patronus"},
        ["Rarity Needed"] = {
            "Legendary",
            "Mythic",
            "Secret"
        }
    },
    ["Alien Shop"] = {
        Enable = false,
        ["Min Gems"] = "1m",
        ["Items Needed"] = {
            "Golden Key",
            "Mystery Box",
            "Coins III",
            "Coins IV",
            "Lucky III",
            "Lucky IV",
            "Speed III",
            "Speed IV"
        }
    },
    ["Black Market"] = {
        Enable = false,
        ["Min Gems"] = "1m",
        ["Items Needed"] = {
            "Lucky Evolved",
            -- "Coins Evolved",
            "Mythic Evolved",
            "Speed Evolved",
            "Lucky V",
            -- "Coins V",
            "Mythic V",
            "Speed V"
        }
    },
    ["Craft Potions"] = {
        Enable = false,
        MinGems = "100k",
        ["Potion Needed"] = {
            {"Coins", Level = 5},
            {"Speed", Level = 5},
            {"Lucky", Level = 5},
            {"Mythic", Level = 5}
        }
    },
    ["Mastery"] = {
        Pets = 15,
        Buffs = 15,
        Shops = 10
    },
    ["Star Shop"] = {
        Enable = true,
        MinStars = 100,
        ["Items Needed"] = {
            "Speed V",
            "Lucky V",
            "Mythic V"
        }
    },
    ["Rifts"] = {
        AlwaysFindRifts = true,
        Targets = {"Underworld Egg 3","Underworld Egg 2","Underworld Egg 1","Cyber Egg","Nightmare Egg"}, -- delete cyber egg and nightmare egg if u want
        Luck = 5 -- dont change
    },
    ["Secret Bounty"] = {"Prophet", "D0GGY1337", "Queen Kitty"}, -- delete pet name if you dont want that pet
    ["Min gems"] = "1m",
    FindDuck = "200M Egg", -- Nightmare Egg, Common Egg, Cyber Egg
    ["Replace FindDuck"] = "Rainbow Egg",
    ["Best Potions Find Duck"] = false, --false if there are only few potions 
    ["Enchant Team 1"] = {enable = true, ["team-up"] = 1},
    ["Gems coefficient"] = 1,
    ["Tickets coefficient"] = 100,
    ["Auto Restart"] = true,

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

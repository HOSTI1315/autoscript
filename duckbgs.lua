-- 🦆 Duck Hub — Финальный конфиг со всеми настройками
-- Все переменные включены по умолчанию, если не нужно — установи false
wait(15)
script_key = "mphAeAwJEPKAbxQEQSWBZQFNsdPdIXOz";
getgenv().UserConfig = {
    FPS                 = 5,
    AddFriends          = true,
    RedeemCode = {
        "Sylentlyssorry",
        "Update3",
        "Whoops",
        "Throwback",
        "Easter",
        "Update2",
        "Lucky",
        "Release",
        "Thanks",
        "update4"
    },
    
    EquipBestFlavorGum  = true,
    BuyFlavorGum        = true,
    AutoMinigames       = true,
    AutoRollDice        = true,
    ["Super Ticket"]    = "Robot Claw",
    ["Use Super Ticket"] = true,
    ["Season Challenges"] = true, -- True means there is a chance of getting the secret Luminosity but less hatching xxx false means there is more hatching but no luminosity 
    ["Min tickets"] = "10b", -- Default if not set in UserConfig
    ["Min coins"] = "5b", -- Default if not set in UserConfig
    ["Giant Chest"] = true,
    ["Void Chest"] = true,
    ["Golden Chest"] = true,
    ["Royal Chest"] = true,
    ["Detector"] = {
        Enable = true,
        ["Name Needed"] = {"Avernus", "Patronus","Queen Kitty","D0GGY1337","Prophet","Wolflord","MAN FACE GOD","King Doggy","The Overlord"}, -- Поиск по имени
        ["Rarity Needed"] = {
            "Legendary",
            "Mythic",
            "Secret"
        }
    },
    ["Alien Shop"] = {
        Enable = true,
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
        Enable = true,
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
        AlwaysFindRifts = false,
        Targets = {"Neon Egg", "Chance Egg", "Underworld Egg 3","Underworld Egg 2","Underworld Egg 1", "Underworld Egg 0"}, -- Поиск по имени
        Luck = 5 -- dont change
    },
    ["Secret Bounty"] = {"Prophet", "D0GGY1337", "Queen Kitty"}, -- delete pet name if you dont want that pet
    ["Min gems"] = "1m",
    FindDuck = "Infinity egg", -- Nightmare Egg, Common Egg, Cyber Egg
    ["Replace FindDuck"] = "Cyber Egg",
    ["Best Potions Find Duck"] = true, --false if there are only few potions 
    ["Enchant Team 1"] = {enable = true, ["team-up"] = 3},
    ["Gems coefficient"] = 1,
    ["Tickets coefficient"] = 100,
    
    Webhook = {
        Enable = true,
        Note = "SkrilyaHub",        -- Подпись
        ID = "143264667521777664",  -- ID пользователя
        URL = "https://discord.com/api/webhooks/1324719233413943308/D_9DROFOe8RVpQKKndeO3uT762dX4X2uLLE437tg6ctDMQehZzvRfqKDXZjjRiIp8TQ1",                   -- URL Discord webhook
        Rarity = {
            "Legendary",
            "Secret"
        },
        Legendary = "100k", -- Только если шанс легендарки >= 1/100k
        SpecialPets = {"Avernus", "Patronus","Queen Kitty","D0GGY1337","Prophet","Wolflord","MAN FACE GOD","King Doggy","The Overlord"}
    },

    -- 🛠️ Дополнительные автоматические функции (по умолчанию все включены)
    DailyRewards        = true, -- Ежедневные награды
    ClaimIndex          = true, -- Награды за индекс питомцев
    ClaimQuests         = true, -- Квестовые награды
    ClaimSeason         = true, -- Награды сезона
    DoggyJump           = true, -- Автоигра в мини-игру Doggy Jump
    OpenItemsPowerups   = true, -- Автооткрытие предметов и усилений
    ClaimPlayTime       = true, -- Награды за время в игре
    ClaimRiftGift       = true, -- Подарки за Rift
    UpgradeMastery      = true, -- Автопрокачка Mastery
    WheelSpin           = true, -- Автоспин колеса
    EquipBestPets       = true, -- Экипировать лучших питомцев
    ConsumeBestPotions  = true, -- Использовать лучшие зелья
    ClaimChallengePass  = true,  -- Забрать награды за Challenge Pass
    EquipBestFlavorGum  = true,
    BuyFlavorGum        = true,
    AutoMinigames       = true,
    AutoRollDice        = true,
    ["Auto Restart"] = true,
    ["Super Ticket"]    = "Robot Claw",
    ["Use Super Ticket"] = true,
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/0cf205a620e81d1f3c3d3f75474ab32f.lua"))()

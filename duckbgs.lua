-- 🦆 Duck Hub — Финальный конфиг со всеми настройками
-- Все переменные включены по умолчанию, если не нужно — установи false
wait(15)
script_key = "mphAeAwJEPKAbxQEQSWBZQFNsdPdIXOz";
getgenv().UserConfig = {
    FPS                 = 5,
    -- 🧑‍🤝‍🧑 Автодобавление друзей (увеличивает удачу вылупления на 10%)
    AddFriends = true,

    -- 🎁 Автоматическое использование кодов
    RedeemCode = {
        "Sylentlyssorry",
        "Update3",
        "Whoops",
        "Throwback",
        "Easter",
        "Update2",
        "Lucky",
        "Release",
        "Thanks"
    },

    -- 🔍 Детектор питомцев по имени или редкости
    Detector = {
        Enable = true,
        NameNeeded = {"Avernus", "Patronus","Queen Kitty","D0GGY1337","Prophet","Wolflord","MAN FACE GOD","King Doggy","The Overlord"}, -- Поиск по имени
        RarityNeeded = {
            "Legendary", -- Легендарные (зелёные)
            "Mythic",    -- Мифические (красные)
            "Secret"     -- Секретные (жёлтые)
        }
    },

    -- 🧪 Автокрафт зелий до заданного уровня
    CraftPotions = {
        Enable = true,
        MinGems = "20m", -- Минимум гемов для крафта
        PotionNeeded = {
            {"Coins", Level = 5},
            {"Speed", Level = 5},
            {"Lucky", Level = 5},
            {"Mythic", Level = 5},
            {"Ticket", Level = 5}
        }
    },

    -- 📈 Прокачка мастерства
    Mastery = {
        Pets = 17,  -- Уровень для автохэч 2 яиц
        Buffs = 21, -- Уровень для удалённого открытия сундуков
        Shops = 11,   -- Уровень магазина (0 если не нужен)
        Minigames = 8 -- Уровень миниигр (?хз ворк)
    },

    -- ✨ Автоочарование питомцев
    Enchant = {
        Enable = true,
        RarityNeeded = {
            {"Legendary", MinDifficult = "1m"},
            "Mythic",
            "Secret"
        },
        RerollNeeded = {
            TeamUp = {MinLevel = 3, HigherLevels = true} -- Только если зачарование >= 2
        }
    },

    -- 👽 Покупка предметов в Alien Shop
    ["Alien Shop"] = {
        Enable = true,
        MinGems = "20m",
        ItemsNeeded = {
            "Golden Key",
            "Mystery Box",
            "Coins III",
            "Coins IV",
            "Lucky III",
            "Speed III",
            "Lucky IV",
            "Speed IV"
        }
    },

    -- 🕶️ Покупка предметов в Black Market
    ["Black Market"] = {
        Enable = true,
        MinGems = "20m",
        ItemsNeeded = {
            "Coins Evolved",
            "Speed V",
            "Lucky V",
            "Coins V",
            "Mythic V",
            "Lucky Evolved",
            "Mythic Evolved",
            "Speed Evolved"
        }
    },

    -- 🏆 Награды в соревнованиях (1 — верхняя, 2 — нижняя)
    Competitive = {
        Choosing = "2,1,1,2,1,1,2,2,1,2"
    },

    -- ⭐ Обмен звёзд в Star Shop (из Daily Rewards)
    ["Star Shop"] = {
        Enable = true,
        MinStars = "300",
        ItemsNeeded = {
            "Mystery Box"
        }
    },

    -- 🌌 Поиск Rifts с определённой удачей
    Rifts = {
        AlwaysFindRifts = true,
        Targets = {"Underworld Egg 3","Underworld Egg 2","Underworld Egg 1","Cyber Egg","Nightmare Egg"},
        Luck = 5 -- Минимальный уровень удачи для поиска Rift
    },

    -- 🥚 Яйцо по умолчанию, если нет нужных Rifts
    FindDuck = "Cyber Egg",

    -- 📬 Настройка webhook для уведомлений
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
    ["Min tickets"] = "10b", -- Default if not set in UserConfig
    ["Min coins"] = "5b", -- Default if not set in UserConfig
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/0cf205a620e81d1f3c3d3f75474ab32f.lua"))()

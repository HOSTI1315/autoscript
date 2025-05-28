-- 🦆 Duck Hub — Финальный конфиг со всеми настройками
-- Все переменные включены по умолчанию, если не нужно — установи false
wait(15)
script_key = "mphAeAwJEPKAbxQEQSWBZQFNsdPdIXOz";
getgenv().UserConfig = {
    AddFriends = true,
    RedeemCode = {"RELEASE", "THANKS", "update2", "sylentlyssorry", "update4"},
    EquipBestFlavorGum = true,
    BuyFlavorGum = true,
    AutoMinigames = true,
    AutoRollDice = true,
    ["Super Ticket"] = "Robot Claw",
    ["Use Super Ticket"] = true,
    ["Season Challenges"] = true,
    ["Secret Bounty x1 Egg"] = true,
    ["Dice Chest"] = false,
    ["Summer Shop"] = true,
    ["Giant Chest"] = false,
    ["Void Chest"] = false,
    ["Golden Chest"] = false,
    ["Royal Chest"] = false,

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
        Targets = {"Neon Egg", "Chance Egg", "Underworld Egg 3", "Underworld Egg 2", "Underworld Egg 1", "Underworld Egg 0"},
        Luck = 5
    },

    ["Secret Bounty"] = {"Prophet", "D0GGY1337", "Queen Kitty"},

    ["Min gems"] = "1m",
    ["Min tickets"] = "10b",
    ["Min coins"] = "5b",
    ["Min seashells"] = "20m",

    ["Gems coefficient"] = 1,
    ["Tickets coefficient"] = 100,
    ["Seashells coefficient"] = 24,

    FindDuck = "Cyber Egg",
    ["Replace FindDuck"] = "Cyber Egg",
    ["Best Potions Find Duck"] = true,

    ["Enchant Team 1"] = {enable = true, ["team-up"] = 3},

    Webhook = {
        Enable = true,
        Note = "SkrilyaHub",
        ID = "143264667521777664",
        URL = "https://discord.com/api/webhooks/1324719233413943308/D_9DROFOe8RVpQKKndeO3uT762dX4X2uLLE437tg6ctDMQehZzvRfqKDXZjjRiIp8TQ1",
        Rarity = {"Legendary", "Secret"},
        Legendary = "100k",
        SpecialPets = {"Avernus", "Patronus", "Queen Kitty", "D0GGY1337", "Prophet", "Wolflord", "MAN FACE GOD", "King Doggy", "The Overlord"}
    },

    DailyRewards = true,
    ClaimIndex = true,
    ClaimQuests = true,
    ClaimSeason = true,
    DoggyJump = true,
    OpenItemsPowerups = true,
    ClaimPlayTime = true,
    ClaimRiftGift = true,
    UpgradeMastery = true,
    WheelSpin = true,
    EquipBestPets = true,
    ConsumeBestPotions = true,
    ClaimChallengePass = true,
    ["Auto Restart"] = true
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/0cf205a620e81d1f3c3d3f75474ab32f.lua"))()

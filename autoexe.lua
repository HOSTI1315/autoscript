--! Configuration
local games = {
-- Код игры
    --- скрипт

    -- Фиш
    [16732694052] = {
        "https://nousigi.com/loader.lua",
    },
    -- АС
    [89438510123061] = {
        "https://raw.githubusercontent.com/ZaRdoOx/Fazium-files/main/Loader"
    },
    -- АР
    [{ 17046374415, 33820338, 1996666471 }] = {
        "https://nousigi.com/loader.lua"
    },
    [18343561950] = {
        "https://raw.githubusercontent.com/couldntBeT/Main/refs/heads/main/BallTowerDefense.lua"
    }
}

--! Global
if not getgenv().SNCO_Scripts then
    getgenv().SNCO_Scripts = {}
end

--

local function urls(id)
    local total = {}
    
    for game, urls in pairs(games) do
        if type(game) == "table" and table.find(game, id) or game == id then
            for _, url in ipairs(urls) do
                table.insert(total, url)
            end
        end
    end

    return total
end

--! Initialize
initialize()
if #getgenv().SNCO_Scripts == 0 then
    populate(urls(game.CreatorId))
end

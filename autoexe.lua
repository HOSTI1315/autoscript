--! Configuration
local games = {
-- Код игры
    --- скрипт
    [16732694052] = {
        "https://nousigi.com/loader.lua",
    },
    [89438510123061] = {
        "https://raw.githubusercontent.com/ZaRdoOx/Fazium-files/main/Loader"
    },
    [17046374415] = {
        "https://nousigi.com/loader.lua"
    },
    [16841929299] = {
        "https://raw.githubusercontent.com/couldntBeT/Main/refs/heads/main/BallTowerDefense.lua"
    }
}

--! Global
if not getgenv().SNCO_Scripts then
    getgenv().SNCO_Scripts = {}
end

--! Functions
local function execute(script)
    task.spawn(function ()
        local success, error = pcall(loadstring(script))

        if not success then
            warn("Failed loading script:", error)
        end
    end)
end

local function fetch(url)
    local response = request({ Url = url, Method = "GET" })
    return response.Success, response.Body
end

local function populate(urls)
    for _, url in ipairs(urls) do
        local success, script = fetch(url)
    
        if success then
            table.insert(getgenv().SNCO_Scripts, script)
        end
    end
end

local function initialize()
    repeat task.wait() until game:IsLoaded()

    for _, script in ipairs(getgenv().SNCO_Scripts) do
        execute(script)
    end
end

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

--! Set-up
if #getgenv().SNCO_Scripts == 0 then
    populate(urls(game.PlaceId))
end

--! Initialize
initialize()

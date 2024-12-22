-- Определение таблицы с CreatorId и URL для загрузки скриптов
local scripts = {
	-- Фиш
	[16732694052] = "https://nousigi.com/loader.lua",  -- Замените на реальные ссылки
	-- АС
	[89438510123061] = "https://raw.githubusercontent.com/ZaRdoOx/Fazium-files/main/Loader",
	-- АР
	[{ 17046374415, 33820338, 1996666471 }] = "https://nousigi.com/loader.lua"
	-- Шары
	[18343561950] = "https://raw.githubusercontent.com/couldntBeT/Main/refs/heads/main/BallTowerDefense.lua"
}

-- Функция для загрузки и выполнения скрипта по URL
local function loadAndRunScript(url)
    local success, script = pcall(function()
        return game:HttpGet(url)
    end)
    
    if success then
        -- Выполнение скрипта
        loadstring(script)()
    else
        warn("Ошибка при загрузке скрипта: " .. script)
    end
end

-- Основной блок для проверки текущего CreatorId и выполнения соответствующего скрипта
local function runScriptForCreator()
    local currentCreatorId = game.CreatorId
    local scriptUrl = scripts[currentCreatorId]

    if scriptUrl then
        -- Если для данного CreatorId есть соответствующий скрипт, загружаем и выполняем его
        loadAndRunScript(scriptUrl)
    else
        warn("Для данного CreatorId (" .. currentCreatorId .. ") не найдено подходящего скрипта.")
    end
end

-- Запуск основной функции
runScriptForCreator()

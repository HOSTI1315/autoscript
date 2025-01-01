local script_key = "kxbgmrXSxYYcjhtwESDAiXOjgQkBbUAz"

local function loadScript()
    local success, errorMessage = pcall(function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/485daf6c6c96201027b51ae694a508d0.lua"))()
    end)

    if not success then
        warn("Ошибка при загрузке скрипта: " .. errorMessage)
        return false
    end
    return true
end

-- Попытка загрузить скрипт, пока он не загрузится успешно
local scriptLoaded = false
while not scriptLoaded do
    scriptLoaded = loadScript()
    if not scriptLoaded then
        wait(2)  -- Пауза перед новой попыткой загрузки
    end
end

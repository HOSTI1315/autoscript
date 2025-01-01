local function loadScript()
    local success, errorMessage = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HOSTI1315/autoscript/refs/heads/main/CartiBeta.lua"))()
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

-- Скрипт с задержкой и минимальной обработкой ошибок (без лишних логов)

local DELAY_SECONDS = 3 -- Установите желаемое время задержки в секундах

-- Ожидаем указанное количество секунд
task.wait(DELAY_SECONDS)

-- Попытка загрузки и выполнения скрипта с обработкой ошибок
-- Используем pcall, чтобы избежать полного краша скрипта в случае ошибки
local success, errorMessage = pcall(function()
    local scriptContent = game:HttpGet("https://nousigi.com/loader.lua")
    -- Простая проверка, что содержимое скрипта не пустое, прежде чем выполнять
    if type(scriptContent) == "string" and string.len(scriptContent) > 0 then
        loadstring(scriptContent)() -- Выполнение скрипта
    else
        -- Если скрипт не загрузился или пустой, pcall вернет success=true, но loadstring(nil) или loadstring("") вызовет ошибку внутри
        -- Добавим явную ошибку, если контент пуст
        error("Загруженное содержимое скрипта пустое или некорректное.")
    end
end)

-- Опционально: вывести предупреждение ТОЛЬКО в случае ошибки
if not success then
    warn("Произошла ошибка при загрузке или выполнении скрипта с https://nousigi.com/loader.lua: " .. (errorMessage or "Неизвестная ошибка"))
end

-- Этот скрипт завершает свою работу тихо, если нет ошибок.

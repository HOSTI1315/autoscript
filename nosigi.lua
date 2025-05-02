-- Минискрипт отладки для загрузки скрипта по CreatorId с полным логированием

local TARGET_CREATOR_ID = 3333298
local SCRIPT_URL = "https://nousigi.com/loader.lua"

print("--- Запуск минискрипта отладки ---")

-- 1. Ожидание загрузки игры
print("Шаг 1: Ожидание загрузки игры (game.Loaded:Wait())...")
local successWait, errorWait = pcall(function()
    game.Loaded:Wait()
end) -- Используем pcall на Wait на всякий случай

if successWait then
    print("Шаг 1 завершен: Игра, предположительно, загружена.")
else
    warn("Шаг 1 ПРОВАЛЕН: Ошибка при ожидании загрузки игры: " .. (errorWait or "Неизвестная ошибка"))
    -- Продолжаем выполнение, так как game.Loaded:Wait редко дает сбой, но ошибка могла быть
end


-- 2. Получение и проверка CreatorId
print("Шаг 2: Получение текущего CreatorId игры...")
local currentCreatorId = game.CreatorId
print("Шаг 2 завершен: Получен CreatorId: " .. tostring(currentCreatorId))

-- Проверка условия CreatorId
if currentCreatorId == TARGET_CREATOR_ID then
    print("Шаг 3: CreatorId (" .. currentCreatorId .. ") СОВПАДАЕТ с целевым (" .. TARGET_CREATOR_ID .. "). Переход к загрузке скрипта.")

    -- 4. Попытка загрузки скрипта
    print("Шаг 4: Попытка загрузки скрипта с URL: " .. SCRIPT_URL .. " ...")
    local successHttpGet, scriptContent = pcall(function()
        return game:HttpGet(SCRIPT_URL)
    end)

    if successHttpGet then
        print("Шаг 4 завершен: Скрипт успешно загружен (успех = true).")
        -- Показываем начало содержимого скрипта для подтверждения загрузки
        print("Часть содержимого скрипта (первые 200 символов): " .. string.sub(scriptContent or "", 1, 200) .. (string.len(scriptContent or "") > 200 and "..." or ""))

        -- Добавляем небольшую задержку перед выполнением загруженного скрипта
        -- Иногда это помогает, если скрипту нужны дополнительные объекты игры, которые появляются чуть позже Loaded
        local DELAY_BEFORE_EXECUTION = 2 -- Задержка в секундах
        print("Добавление задержки в " .. DELAY_BEFORE_EXECUTION .. " секунд перед выполнением скрипта...")
        task.wait(DELAY_BEFORE_EXECUTION)
        print("Задержка завершена.")


        -- 5. Попытка выполнения скрипта
        print("Шаг 5: Попытка выполнения загруженного скрипта через loadstring()...")
        local successLoadstring, errorMessage = pcall(function()
            loadstring(scriptContent)() -- Выполнение скрипта
        end)

        if successLoadstring then
            print("Шаг 5 завершен: Скрипт успешно выполнен (успех = true).")
            print("--- Минискрипт отладки завершен успешно ---")
        else
            warn("Шаг 5 ПРОВАЛЕН: Ошибка при выполнении скрипта loadstring().")
            warn("Сообщение об ошибке выполнения: " .. (errorMessage or "Отсутствует сообщение об ошибке"))
            print("--- Минискрипт отладки завершен с ошибкой выполнения скрипта ---")
        end

    else
        warn("Шаг 4 ПРОВАЛЕН: Ошибка при загрузке скрипта с URL '" .. SCRIPT_URL .. "'.")
        warn("Возвращенная ошибка/результат: " .. (scriptContent or "nil")) -- scriptContent в случае ошибки содержит сообщение об ошибке
        print("--- Минискрипт отладки завершен с ошибкой загрузки ---")
    end

else
    print("Шаг 3: CreatorId (" .. currentCreatorId .. ") НЕ СОВПАДАЕТ с целевым (" .. TARGET_CREATOR_ID .. "). Скрипт не будет загружен.")
    print("--- Минискрипт отладки завершен (условие CreatorId не выполнено) ---")
end

print("--- Конец выполнения минискрипта отладки ---")

wait(5)

-- 1) Ссылки
local loader_url = "https://api.luarmor.net/files/v3/loaders/180154ec7abc246752b60603a7adc12d.lua"
local webhook_url = "https://raw.githubusercontent.com/rosel4k/scripts/refs/heads/main/AEwebhook.lua"

-- 2) Функция для безопасного запуска первого лоадера
local function injectLoaderWithKey(key)
    task.spawn(function()
        local ok, err = pcall(function()
            -- Объявляем глобальную переменную script_key (без local),
            -- чтобы загружаемый лоадер увидел её в своей среде.
            script_key = key
            local src = game:HttpGet(loader_url, true)
            local fn = loadstring(src)
            if type(fn) ~= "function" then error("loader: loadstring не вернул функцию") end
            fn()
        end)
        if not ok then
            warn("Loader injection failed: "..tostring(err))
        else
            print("Loader injected successfully")
        end
    end)
end

-- 3) Функция для безопасного запуска вебхука (с конфигом)
local function injectWebhook(values_table)
    task.spawn(function()
        local ok, err = pcall(function()
            getgenv().Values = values_table
            local src = game:HttpGet(webhook_url, true)
            local fn = loadstring(src)
            if type(fn) ~= "function" then error("webhook: loadstring не вернул функцию") end
            fn()
        end)
        if not ok then
            warn("Webhook injection failed: "..tostring(err))
        else
            print("Webhook injected successfully")
        end
    end)
end

-- 4) Ваши данные (поменяйте при необходимости)
local my_key = "KymqrRBVfNOAaIkSmDuyWcvaYDDOyPXT"
local webhook_values = {
    WebhookURL = 'https://discord.com/api/webhooks/1318903663900758138/PLn49ETi-2VP0wNiM1fT6-RQXl5YTZ7-4xK0rEgd5VLDMlEA1_AGD7WqDIoc4cJFE7WO',
    WebhookMode = true,
    WebhookTimer = 5,
    GameNotifications = true,
    UserId = '143264667521777664',
}

-- 5) Ожидаем полной загрузки игры и появления игрока/персонажа
local Players = game:GetService("Players")

-- Дождаться, пока game пометит себя как загруженный
if not game:IsLoaded() then
    -- событие Loaded сработает когда игра полностью загрузится
    game.Loaded:Wait()
end

-- Дождаться появления LocalPlayer (в некоторых средах он может появляться с задержкой)
local player = Players.LocalPlayer
if not player then
    repeat
        task.wait()
        player = Players.LocalPlayer
    until player
end

-- Дождаться персонажа (Character) — полезно если ваш лоадер ожидает наличия Character
if not player.Character or not player.Character.Parent then
    player.CharacterAdded:Wait()
end

-- (Опционально) Небольшая дополнительная пауза, чтобы всё окончательно инициализировалось
task.wait(0.5)

-- 6) Выполняем инжекты (уже после загрузки)
injectLoaderWithKey(my_key)
injectWebhook(webhook_values)

print("Injection started after game load.")

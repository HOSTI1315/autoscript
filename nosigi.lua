--=====================================================--
--            KAITUN LOADER + DISCORD WEBHOOK          --
--=====================================================--

--== НАСТРОЙКИ ==--
local WEBHOOK_URL   = "https://discord.com/api/webhooks/ТВОЙ_ID/ТВОЙ_TOKEN"
local WEBHOOK_NAME  = "Kaitun Loader"
local LOAD_TIMEOUT  = 120   -- сек, через сколько считать загрузку провальной

--=====================================================--
--                      СЕРВИСЫ                        --
--=====================================================--
local HttpService       = game:GetService("HttpService")
local Players           = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local LP = Players.LocalPlayer

--== HTTP-функция экзекьютора ==--
local httpRequest = (syn and syn.request)
    or (http and http.request)
    or http_request
    or (fluxus and fluxus.request)
    or request

--=====================================================--
--                        HWID                         --
--=====================================================--
local function GetHWID()
    local candidates = {
        function() return gethwid() end,
        function() return syn.get_hwid() end,
        function() return fluxus.get_hwid() end,
        function() return getexecutorhwid() end,
        function() return game:GetService("RbxAnalyticsService"):GetClientId() end,
    }
    for _, fn in ipairs(candidates) do
        local ok, res = pcall(fn)
        if ok and type(res) == "string" and #res > 0 then
            return res
        end
    end
    return "Unknown"
end

--== кешируем один раз ==--
local HWID     = GetHWID()
local EXECUTOR = (identifyexecutor and select(1, pcall(identifyexecutor)) and identifyexecutor()) or "Unknown"
local GAMENAME = "PlaceId " .. tostring(game.PlaceId)
pcall(function()
    GAMENAME = MarketplaceService:GetProductInfo(game.PlaceId).Name
end)

--=====================================================--
--                      WEBHOOK                        --
--=====================================================--
local function SendWebhook(title, desc, color)
    if not httpRequest then
        warn("[Webhook] Экзекьютор не поддерживает request()")
        return
    end
    if WEBHOOK_URL == "" or WEBHOOK_URL:find("ТВОЙ_ID") then
        warn("[Webhook] Не указана ссылка на вебхук")
        return
    end

    task.spawn(function()
        local ok, err = pcall(function()
            httpRequest({
                Url     = WEBHOOK_URL,
                Method  = "POST",
                Headers = { ["Content-Type"] = "application/json" },
                Body    = HttpService:JSONEncode({
                    username = WEBHOOK_NAME,
                    embeds = {{
                        title       = title,
                        description = desc,
                        color       = color or 3447003,
                        fields = {
                            { name = "Player",   value = ("%s (@%s)"):format(LP.DisplayName, LP.Name), inline = true },
                            { name = "UserId",   value = tostring(LP.UserId), inline = true },
                            { name = "Executor", value = EXECUTOR, inline = true },
                            { name = "Game",     value = GAMENAME, inline = true },
                            { name = "PlaceId",  value = tostring(game.PlaceId), inline = true },
                            { name = "HWID",     value = "`" .. HWID .. "`", inline = false },
                            { name = "Join", value = ("```lua\ngame:GetService('TeleportService'):TeleportToPlaceInstance(%d, '%s')```")
                                :format(game.PlaceId, game.JobId), inline = false },
                        },
                        footer = { text = os.date("%Y-%m-%d %H:%M:%S") },
                    }},
                }),
            })
        end)
        if not ok then
            warn("[Webhook] Ошибка отправки: " .. tostring(err))
        end
    end)
end

--=====================================================--
--                   КОНФИГ KAITUN                     --
--=====================================================--
getgenv().Key = "aKePbveqzrlcmAGOTHTwvPpNjpYUgseh "
getgenv().KaitunConfig = {
    ["Method"] = "Full Progresstion",
    ["Performance"] = {
        ["FPS Cap"] = 15,
        ["Black Screen"] = true,
    },
}

--=====================================================--
--                       ЗАПУСК                        --
--=====================================================--

-- защита от повторной отправки, если скрипт выполнят дважды
if not getgenv().__WebhookFired then
    getgenv().__WebhookFired = true

    SendWebhook("🚀 Запуск скрипта", "Начинаю загрузку лоадера...", 16776960) -- жёлтый

    -- сторож: если за LOAD_TIMEOUT сек не поднялся — шлём алерт
    task.delay(LOAD_TIMEOUT, function()
        if not getgenv().Joebiden then
            SendWebhook("❌ Не загрузился",
                ("Прошло %d сек, `getgenv().Joebiden` так и не появился."):format(LOAD_TIMEOUT),
                16711680) -- красный
        end
    end)
end

repeat
    task.wait()
    task.spawn(function()
        loadstring(game:HttpGet("https://nousigi.com/loader.lua"))()
    end)
    task.wait(20)
until getgenv().Joebiden

SendWebhook("✅ Скрипт загружен", "Kaitun успешно запустился и работает", 65280) -- зелёный

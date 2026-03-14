if not getgenv().scriptExecuted then
    local scripts = {
        [7381705]  = { url = "https://nousigi.com/loader.lua",                                                            name = "Fisch"                  },
        [33781793] = { url = "https://raw.githubusercontent.com/ZaRdoOx/Fazium-files/main/Loader",                        name = "Anime Spirits"          },
        [33820338] = { url = "https://nousigi.com/loader.lua",                                                            name = "Anime Rangers"          },
        [33799733] = { url = "https://raw.githubusercontent.com/0vma/Strelizia/refs/heads/main/Loader.lua",               name = "Floppy Fighters"        },
        [10611639] = { url = "https://raw.githubusercontent.com/HOSTI1315/autoscript/refs/heads/main/buang.lua",          name = "Anime Adventures"       },
        [4372130]  = { url = "https://raw.githubusercontent.com/HOSTI1315/autoscript/refs/heads/main/BF.lua",             name = "Blox Fruits"            },
        [15557357] = { url = "https://raw.githubusercontent.com/HOSTI1315/autoscript/refs/heads/main/JoJoINF.lua",        name = "JoJo Infinite"          },
        [34990762] = { url = "https://raw.githubusercontent.com/couldntBeT/Main/refs/heads/main/Main.lua",                name = "SpongeBob Tower Defense" },
        [32380537] = { url = "https://raw.githubusercontent.com/couldntBeT/Main/refs/heads/main/BallTowerDefense.lua",    name = "Ball Tower Defense"     },
    }

    -- Скрипты привязанные к конкретному аккаунту + игре.
    -- Ключ: "НикИгрока_CreatorId"
    -- Приоритет выше чем у основной таблицы scripts.
    local specialScripts = {
        -- ["PlayerName_7381705"]  = { url = "https://example.com/special.lua", name = "Fisch (special)" },
    }

    local function loadAndRunScript(entry)
        if not entry.url or entry.url == "" then
            warn("[AutoExe] URL не задан для: " .. entry.name)
            return false
        end

        local fetchOk, source = pcall(game.HttpGet, game, entry.url)
        if not fetchOk then
            warn("[AutoExe] Ошибка загрузки (" .. entry.name .. "): " .. tostring(source))
            return false
        end

        local fn, compileErr = loadstring(source)
        if not fn then
            warn("[AutoExe] Синтаксическая ошибка (" .. entry.name .. "): " .. tostring(compileErr))
            return false
        end

        local runOk, runtimeErr = pcall(fn)
        if not runOk then
            warn("[AutoExe] Ошибка выполнения (" .. entry.name .. "): " .. tostring(runtimeErr))
            return false
        end

        return true
    end

    local function run()
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end

        local creatorId = game.CreatorId
        local player = game.Players.LocalPlayer
        local playerName = player and player.Name or "Unknown"
        local specialKey = playerName .. "_" .. creatorId

        local special = specialScripts[specialKey]
        if special then
            print("[AutoExe] Спец. скрипт: " .. special.name .. " (аккаунт " .. playerName .. ", CreatorId " .. creatorId .. ")")
            loadAndRunScript(special)
            return
        end

        local entry = scripts[creatorId]
        if entry then
            print("[AutoExe] Игра: " .. entry.name .. " (CreatorId " .. creatorId .. ")")
            loadAndRunScript(entry)
        else
            warn("[AutoExe] Нет скрипта для CreatorId " .. creatorId .. " (игрок " .. playerName .. ")")
            warn("[AutoExe] Нажми F4 — CreatorId скопируется в буфер обмена")
            local uis = game:GetService("UserInputService")
            local conn
            conn = uis.InputBegan:Connect(function(input, processed)
                if processed then return end
                if input.KeyCode == Enum.KeyCode.F4 then
                    local id = tostring(game.CreatorId)
                    setclipboard(id)
                    print("[AutoExe] CreatorId " .. id .. " скопирован в буфер обмена")
                end
            end)
        end
    end

    run()
    getgenv().scriptExecuted = true
else
    warn("[AutoExe] Скрипт уже был выполнен.")
end

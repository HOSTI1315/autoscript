-- Получаем Service
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Ждём, пока в ReplicatedStorage не появится объект "Client"
-- (если вам нужно ждать какой‑то другой объект — замените "Client" на его имя)
local clientFolder = ReplicatedStorage:WaitForChild("Client")

-- Можете при желании проверить, что это действительно нужный объект
-- print("Client найден:", clientFolder and true or false)

-- Теперь можно безопасно запускать скрипт‑загрузчик
local script_key = "ZpfbhzvLcOxkjaSdLDgTUALbfKEHerfr"
loadstring(game:HttpGet("https://zekehub.com/scripts/Loader.lua"))()

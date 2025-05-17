local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Ждём появления "Library" (до 15 секунд)
local success = pcall(function()
    ReplicatedStorage:WaitForChild("Library", 15)
end)

if success then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/0vma/Strelizia/refs/heads/main/Loader.lua"))()
else
    warn("❌ Объект 'Library' не найден в течение 15 секунд.")
end

# autoscript

Авто-загрузчик Lua-скриптов для Roblox. Определяет текущую игру по `CreatorId` и запускает соответствующий скрипт автоматически.

## Как работает

1. `AutoExe.lua` загружается через executor при входе в любую игру
2. Скрипт получает `game.CreatorId` текущей игры
3. Ищет совпадение в таблице `scripts`
4. Если найдено — загружает и исполняет скрипт с удалённого URL
5. Флаг `getgenv().scriptExecuted` предотвращает повторный запуск

## Поддерживаемые игры (AutoExe.lua)

| CreatorId | Игра | Источник скрипта |
|-----------|------|-----------------|
| 7381705 | Fisch | nousigi.com |
| 33781793 | Anime Spirits | Fazium (GitHub) |
| 33820338 | Anime Rangers | nousigi.com |
| 33799733 | Floppy Fighters | Strelizia (GitHub) |
| 10611639 | Anime Adventures | buang.lua (этот репо) |
| 4372130 | Blox Fruits | BF.lua (этот репо) |
| 15557357 | JoJo Infinite | JoJoINF.lua (этот репо) |
| 34990762 | SpongeBob Tower Defense | couldntBeT (GitHub) |
| 32380537 | Ball Tower Defense | couldntBeT (GitHub) |

## Файлы

### Основной загрузчик

| Файл | Описание |
|------|----------|
| `AutoExe.lua` | Авто-загрузчик по CreatorId. Ставится в auto-execute папку executor'а. |

### Скрипты для конкретных игр

| Файл | Игра / Хаб | Ключ / Защита |
|------|-----------|---------------|
| `buang.lua` | Anime Adventures (BuangHub Premium) | Luarmor key |
| `nosigi.lua` | Fisch / Anime Rangers (Nousigi) | Luarmor key |
| `BD.lua` | ZekeHub | Luarmor key |
| `123.lua` | Anime Eternal (Luarmor) | Luarmor key |
| `ARX.lua` | ARX (KazounVN) | Без ключа |

### Утилиты / Отдельные скрипты

| Файл | Описание |
|------|----------|
| `ZapHub` | ZapHub loader (PS99 и др.) — ключ Luarmor |
| `sniper` | ZapHub Booths Sniper для PS99 — автоснайп петов из будок с настройками цен, ServerHop, Discord webhook |
| `SimpleSpy` | SimpleSpy — перехват RemoteEvent / RemoteFunction вызовов для отладки |

## Добавление новой игры

Добавить запись в таблицу `scripts` в `AutoExe.lua`:

```lua
[CREATOR_ID] = { url = "https://...", name = "Game Name" },
```

`CreatorId` можно узнать через SimpleSpy или `print(game.CreatorId)` в консоли executor'а.

## Привязка скрипта к аккаунту

Таблица `specialScripts` позволяет назначить отдельный скрипт конкретному аккаунту в конкретной игре. Приоритет выше чем у основной таблицы `scripts`.

Ключ — `"НикИгрока_CreatorId"`:

```lua
local specialScripts = {
    ["MyAlt_7381705"]  = { url = "https://example.com/alt-fisch.lua",  name = "Fisch (alt)" },
    ["MainAcc_4372130"] = { url = "https://example.com/main-bf.lua",   name = "BF (main)" },
}
```

Логика: если для текущего ника + игры есть запись в `specialScripts` — запускается она. Иначе — обычный скрипт из `scripts`.

## Использование

1. Скопировать `AutoExe.lua` в папку auto-execute executor'а
2. При входе в поддерживаемую игру скрипт запустится автоматически
3. Отдельные файлы (`sniper`, `ZapHub` и т.д.) запускать вручную через executor

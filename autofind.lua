local args = {
    [1] = "christmas_event"
}

coroutine.resume(coroutine.create(function()
    wait(5) -- Задержка перед запуском скрипта на 5 секунд
    game:GetService("ReplicatedStorage").endpoints.client_to_server.request_matchmaking:InvokeServer(unpack(args))
    
    while true do
        wait(10) -- Повторять скрипт каждые 10 секунд
        game:GetService("ReplicatedStorage").endpoints.client_to_server.request_matchmaking:InvokeServer(unpack(args))
    end
end))

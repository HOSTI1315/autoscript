if not game:IsLoaded() then
	game.Loaded:Wait()
end

task.wait( math.random() )

local games = {
	[4386104527] = 'https://raw.githubusercontent.com/ZaRdoOx/Fazium-files/main/Loader', -- AS
	[5292947] =  'https://api.luarmor.net/files/v3/loaders/eef1f2c7ccd0aaf83d95f052ef2e934a.lua',
	
}

if games[game.CreatorId] then
	task.wait( math.random() )
	if game.CreatorId == 4386104527 or game.CreatorId == 12229756 or game.CreatorId == 15762744 or game.CreatorId == 33859442 then
		print('Loaded')
		repeat 
			loadstring(game:HttpGet(games[game.CreatorId]))()
			task.wait(10)
		until getgenv().buanghub ~= nil;
	else
		loadstring(game:HttpGet(games[game.CreatorId]))()
	end
end

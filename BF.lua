script_key = "iOBQIRwEZvnsKtZaGrYWPhbTmqYQXoFI"
getgenv().FpsCap = 10
getgenv().OneClickUi = true -- Only Open Necessacry Ui For One Click
getgenv().FpsBoost1 = false
    getgenv().WhiteScreen = true
    getgenv().UiCheckItems = false
    getgenv().OneClickSetting = {
        Enable=true,
        UnlimitGetQuest=true,
        TripleQuest=true,
        AutoAddStats=true,
        RedeemCode=true,
        Sea2KeyHop=true,
        FruitEat = { --Priority, Name, 
            [1] = {"Magma-Magma"},
            [2] = {"Magma-Magma"}
        },
        EatFruitFromStorage = true,
        SnipeFruit = true,
        SnipeFruitMirage = true,
        HopIfFoundNearExploiter = false,
        HopHakiColor =false,
        HopTushita = false,
        HopValkyriehelm = true,
        HopMirrorFractal=true,
        FarmPole = false, -- Turn off If Want Focus Level
        FarmItems = false, --Turn off If Want Focus Level And CDK, THis Only get After You Get God Human
        DisableSoulGuitar = false,
        DisableCDK = false,
         RollRace={
            Enable = false,
            Races = {"Mink","Fishman","Human","Skypiea"}
        },
               Mastery = false,
        SwanFruitHop=false
    }
    getgenv().OneClickFarms = {
        ["Shark Anchor"] = false,
    }
getgenv().Team = "Pirates"
getgenv().AutoLoad = false --Will Load Script On Server Hop

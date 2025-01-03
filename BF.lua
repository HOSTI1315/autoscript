getgenv().Team = "Pirates"
getgenv().WebhookSetting = {
    Enable = true,
    Url = "https://discord.com/api/webhooks/1324719233413943308/D_9DROFOe8RVpQKKndeO3uT762dX4X2uLLE437tg6ctDMQehZzvRfqKDXZjjRiIp8TQ1",
    Embed = true,
    StoredFruit = true,
    ImageEmbed = true,
    CustomImage = true,
    CustomImageUrl = "https://cdn.discordapp.com/attachments/1162810322181173309/1324719084289527808/cbdac3d0-874f-4430-89b5-4316b8d7ad54.jpg?ex=67792c49&is=6777dac9&hm=182f067acd8e217f51a58a462a3a932926423d0589b5696616d384f7ba4473f2&", --cf by eric
    OnServerHop = false,
    BountyChanged = true,
}
getgenv().PlayerSetting = {
    SafeMode = true,
    SafeModeHealth = {4300,40},--Number And %, Start Safe Mode And Stop Safe Mode
    UseRaceV3 = true,
    SmartUseRaceV3= true,
    DashIfV4 = true,
    Dash= false,
    IgnoreInCombat = true, --Turn This Off When Reseting Or Hop You Lost Bounty (Rare, Happens On Some Accounts) cf by eric
    ChatKillEnable = false,
    Chat = {"gg","gg"},
    IgnoreFriends = false, --true neu muon co ban be vao no hop sv
}
getgenv().AttackSetting = {
    ForceMelee = true,
    ForceMeleeTime = 3.5,
    StopAttack =true, --When Meet Below Condition
    StopAttackAtHealth = 50,--%
    FastAttack=true, -- Toggle Fast Attack
}
getgenv().UseSkillSetting = {
    -- Three Methods: "Normal", "Fast", "Spam", "SpamAll"
    MethodIfTargetOnV4 = "Fast",
    MethodIfPlayerOnV4 = "SpamAll",
    MethodIfTargetUseFruit = {Fruits={buddha},Method="Spam"},
    NormalMethod = "Fast",
    LowHealthPlayerCondition = { --Player Can Attack Us, No Need For Slow Attack
        Enable = true,
        Health = 70,--%Health That Are Low
        Method = "Fast",
    },
    LowHealthTargetCondition = {
        Enable = true,
        Health = 20,--%Health That Are Low
        DelayFirstTime = {true,2}, --1 Is Enable, 2 Is Second To Delay Before Attack Again
        Method = "Fast",
        WaitTime = 0.5,-- If Normal Method, Wait Every Skill If It Hits Target
    }
}
getgenv().WeaponsSetting = {
    ["Melee"] = {
        ["Enable"] = true,
        ["Delay"] = 1, 
        ["SwitchNextWeaponIfCooldown"] = true,
        ["Skills"] = {
            ["Z"] = {
                ["Enable"] = true,
                ["NoPredict"] = false, -- For Dragon Tailon, Disable it 
                ["HoldTime"] = 0.2,
                ["TimeToNextSkill"] = 0, -- cf by eric
            },
        [ "X"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.14,
                ["TimeToNextSkill"] = 0,
            },

            ["C"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.5,
                ["TimeToNextSkill"] = 0,
            },
        },
    },
    ["Blox Fruit"] = {
        ["Enable"] = false,
        ["Delay"] = 1,
        ["SwitchNextWeaponIfCooldown"] = true,
        ["Skills"] = {
            ["Z"] = {
                ["Enable"] = true,
                ["HoldTime"] = 2,
                ["TimeToNextSkill"] = 0,
            },
            ["X"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.2,
                ["TimeToNextSkill"] = 0,
            },

            ["C"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.3,
                ["TimeToNextSkill"] = 0,
            },
            ["V"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.2,
                ["TimeToNextSkill"] = 0,
            },
            ["F"] = {
                ["Enable"] = false,
                ["HoldTime"] = 0,
                ["TimeToNextSkill"] = 0,
            },
        },
    },
    ["Sword"] = {
        ["Enable"] = false,
        ["Delay"] = 0.5,
        ["Skills"] = {
            ["Z"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.1,
                ["TimeToNextSkill"] = 0,
            },
            ["X"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.2,
                ["TimeToNextSkill"] = 0,
            },
        },
    },
    ["Gun"] = {
        ["Enable"] = true,
        ["Delay"] = 1.3,
        ["Skills"] = {
            ["Z"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.14,
                ["TimeToNextSkill"] = 0,
            },
            ["X"] = {
                ["Enable"] = true,
                ["HoldTime"] = 0.1,
                ["TimeToNextSkill"] = 0,
            },
        },
    },
}
getgenv().Theme = { -- getgenv().Theme = false if you want to disable
    OldTheme = false,
    Name="Raiden", --"Raiden","Ayaka","Hutao","Yelan","Miko","Nahida","Ganyu","Keqing","Nilou","Barbara","Zhongli","Layla"
    Custom={
            ["Enable"] = false,
            ['char_size'] = UDim2.new(0.668, 0, 1.158, 0),
            ['char_pos'] = UDim2.new(0.463, 0, -0.105, 0),
            ['title_color'] = Color3.fromRGB(255, 221, 252),
            ['titleback_color'] = Color3.fromRGB(169, 20, 255),
            ['list_color'] = Color3.fromRGB(255, 221, 252),
            ['liststroke_color'] = Color3.fromRGB(151, 123, 207),
            ['button_color'] = Color3.fromRGB(255, 221, 252)
       }
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/248f97d7a28a4d09c641d8279a935333.lua"))()

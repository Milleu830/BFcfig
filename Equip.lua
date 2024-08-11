repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer

function GetMelee(NameMelee)
    if NameMelee == "" then
        return true
    end
    if NameMelee == "Godhuman" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    elseif NameMelee == "Electric Claw" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    elseif NameMelee == "Sharkman Karate" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    elseif NameMelee == "Death Step" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    elseif NameMelee == "Dragon Talon" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    else
        return false
    end
    if game.Players.LocalPlayer.Backpack:FindFirstChild(NameMelee) or game.Players.LocalPlayer.Character:FindFirstChild(NameMelee) then
        return true
    else
        return false
    end
end
function GetSword(NameSword)
    if NameSword == "" then
        return true
    end
    for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
        if v.Type == "Sword" and v.Name == NameSword then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem", NameSword)
            return true
        end
    end
    return false
end
function GetWear(NameWear)
    if NameWear == "" then
        return true
    end
    for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
        if v.Type == "Wear" and v.Name == NameWear then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem", NameWear)
            return true
        end
    end
    return false
end

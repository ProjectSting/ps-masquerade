local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = false
PlayerJob = {}

local onDuty = false

function DrawText3Ds(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end


RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function ()
    QBCore.Functions.GetPlayerData(function (PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == "masquerade" then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore.Client:OnJobUpdate', function (JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)

CreateThread(function()
    for k, station in pairs(Config.Locations["stations"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 362)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.70)
        SetBlipColour(blip, 0)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
end)

CreateThread(function()
    for k, station in pairs(Config.Locations1["stations1"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 362)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.70)
        SetBlipColour(blip, 0)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
end)

CreateThread(function()
    for k, station in pairs(Config.Locations2["stations2"]) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 362)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.70)
        SetBlipColour(blip, 0)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
end)

RegisterNetEvent("ps-masquerade:DutyB")
AddEventHandler("ps-masquerade:DutyB", function ()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent("ps-masquerade:Package")
AddEventHandler("ps-masquerade:Package", function ()
    TriggerEvent("inventory:client:SetCurrentStash", "masqueradepackage")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "masqueradepackage", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("ps-masquerade:Storage")
AddEventHandler("ps-masquerade:Storage", function ()
    TriggerEvent("inventory:client:SetCurrentStash", "masqueradestorage")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "masqueradestorage", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("ps-masquerade:Storage0ne")
AddEventHandler("ps-masquerade:Storage0ne", function ()
    TriggerEvent("inventory:client:SetCurrentStash", "masqueradestorage0ne")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "masqueradestorage0ne", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("ps-masquerade:Storagetwo")
AddEventHandler("ps-masquerade:Storagetwo", function ()
    TriggerEvent("inventory:client:SetCurrentStash", "masqueradestoragetwo")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "masqueradestoragetwo", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("ps-masquerade:shop")
AddEventHandler("ps-masquerade:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "masquerade", Config.Items)
end)
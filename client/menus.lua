local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = true
PlayerJob = {}

local onDuty = false
------------Duty Targets----------
Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("masqueradeDuty", vector3(-1196.74, -1513.76, 4.37), 0.5, 0.5,{
        name = "masqueradeDuty",
		heading = 215,
		debugPoly = false,
        minZ=0.37,
        maxZ=4.37
    }, {
        options = {
            {
                event = "ps-masquerade:dutymenu",
                icon = "far fa-clipboard",
                label = "Options",
                job = "masquerade",
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("masqueradeDuty1", vector3(-1220.85, -1428.53, 4.37), 0.5, 0.5,{
        name = "masqueradeDuty1",
		heading = 305,
		debugPoly = false,
        minZ=0.57,
        maxZ=4.57
    }, {
        options = {
            {
                event = "ps-masquerade:dutymenu",
                icon = "far fa-clipboard",
                label = "Options",
                job = "masquerade",
            },
        },
        distance = 1.5
    })    
    exports['qb-target']:AddBoxZone("masqueradeDuty2", vector3(-1260.45, -1422.68, 4.37), 0.6, 0.6,{
        name = "masqueradeDuty2",
		heading = 305,
		debugPoly = false,
        minZ=0.57,
        maxZ=4.57
    }, {
        options = {
            {
                event = "ps-masquerade:dutymenu",
                icon = "far fa-clipboard",
                label = "Options",
                job = "masquerade",
            },
        },
        distance = 1.5
    }) 
	---------Package Targets-----------
    exports['qb-target']:AddBoxZone("masquerade", vector3(-1199.44, -1515.77, 4.38), 0.5, 0.5,{
        name = "masquerade",
        heading = 215,
        debugPoly = false,
        minZ=0.58,
        maxZ=4.58
    },{
        options = {
            {
                event = "ps-masquerade:Package",
                icon = "far fa-clipboard",
                label = "Your Order",
            },
        },
        distance = 1.5
    })   	
    exports['qb-target']:AddBoxZone("masquerade1", vector3(-1218.8, -1431.29, 4.37), 0.5, 0.2,{
        name = "masquerade1",
        heading = 200,
        debugPoly = false,
        minZ=0.57,
        maxZ=4.57
    },{
        options = {
            {
                event = "ps-masquerade:Package",
                icon = "far fa-clipboard",
                label = "Your Order",
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("masquerade2", vector3(-1263.17, -1424.83, 4.37), 0.5, 0.2,{
        name = "masquerade2",
        heading = 295,
        debugPoly = false,
        minZ=0.57,
        maxZ=4.57
    },{
        options = {
            {
                event = "ps-masquerade:Package",
                icon = "far fa-clipboard",
                label = "Your Order",
            },
        },
        distance = 1.5
    })   
    ------------Customermenu Targets--------------
    exports['qb-target']:AddBoxZone("masquerade_Customermenu", vector3(-1198.7, -1519.82, 4.37), 2, 1,{
        name = "masquerade_Customermenu",
        heading = 305,
        debugPoly = false,
        minZ=1.97,
        maxZ=5.97
    },{
        options = {
            {
                event = "qb-menu:masqueradeMenu",
                icon = "far fa-clipboard",
                label = "Mask Menu",
            },
        },
        distance = 1.5
    
    })
	exports['qb-target']:AddBoxZone("masquerade_Customermenu1", vector3(-1201.71, -1515.92, 4.37), 2, 1,{
        name = "masquerade_Customermenu1",
        heading = 125,
        debugPoly = false,
        minZ=1.97,
        maxZ=5.97
    },{
        options = {
            {
                event = "qb-menu:masqueradeMenu",
                icon = "far fa-clipboard",
                label = "Mask Menu",
            },
        },
        distance = 1.5
    
    })
	exports['qb-target']:AddBoxZone("masquerade_Customermenu2", vector3(-1218.57, -1433.54, 4.37), 1, 2,{
        name = "masquerade_Customermenu2",
        heading = 305,
        debugPoly = false,
        minZ=2.17,
        maxZ=6.17
    },{
        options = {
            {
                event = "qb-menu:masqueradeMenu",
                icon = "far fa-clipboard",
                label = "Mask Menu",
            },
        },
        distance = 1.5
    
    })
	exports['qb-target']:AddBoxZone("masquerade_Customermenu3", vector3(-1214.74, -1430.36, 4.37), 1, 2,{
        name = "masquerade_Customermenu3",
        heading = 305,
        debugPoly = false,
        minZ=1.97,
        maxZ=5.97
    },{
        options = {
            {
                event = "qb-menu:masqueradeMenu",
                icon = "far fa-clipboard",
                label = "Mask Menu",
            },
        },
        distance = 1.5
    
    })
    exports['qb-target']:AddBoxZone("masquerade_Customermenu4", vector3(-1265.51, -1424.98, 4.37), 1, 2,{
        name = "masquerade_Customermenu4",
        heading = 215,
        debugPoly = false,
        minZ=1.97,
        maxZ=5.97
    },{
        options = {
            {
                event = "qb-menu:masqueradeMenu",
                icon = "far fa-clipboard",
                label = "Mask Menu",
            },
        },
        distance = 1.5
    
    })
    exports['qb-target']:AddBoxZone("masquerade_Customermenu5", vector3(-1262.34, -1428.87, 4.37), 1, 2,{
        name = "masquerade_Customermenu5",
        heading = 215,
        debugPoly = false,
        minZ=1.97,
        maxZ=5.97
    },{
        options = {
            {
                event = "qb-menu:masqueradeMenu",
                icon = "far fa-clipboard",
                label = "Mask Menu",
            },
        },
        distance = 1.5
    
    })	
	---------Charge Customer Targets---------
    exports['qb-target']:AddBoxZone("masquerade_Bill", vector3(-1198.73, -1516.8, 4.38), 0.5, 0.6,{
        name = "masquerade_Bill",
        heading = 215,
        debugPoly = false,
        minZ=0.78,
        maxZ=4.78
    },{
        options = {
            {
                event = "ps-masquerade:bill",
                icon = "far fa-clipboard",
                label = "Charge Customer",
                job = "masquerade",
            },
        },
        distance = 1.5
    
    })
    exports['qb-target']:AddBoxZone("masquerade_Bill1", vector3(-1217.8, -1430.45, 4.37), 0.5, 0.5,{
        name = "masquerade_Bill1",
        heading = 305,
        debugPoly = false,
        minZ=0.77,
        maxZ=4.77
    },{
        options = {
            {
                event = "ps-masquerade:bill",
                icon = "far fa-clipboard",
                label = "Charge Customer",
                job = "masquerade",
            },
        },
        distance = 1.5
    
    })
    exports['qb-target']:AddBoxZone("masquerade_Bill2", vector3(-1262.43, -1425.76, 4.37), 0.5, 0.5,{
        name = "masquerade_Bill2",
        heading = 300,
        debugPoly = false,
        minZ=0.77,
        maxZ=4.77
    },{
        options = {
            {
                event = "ps-masquerade:bill",
                icon = "far fa-clipboard",
                label = "Charge Customer",
                job = "masquerade",
            },
        },
        distance = 1.5
    
    })    
    -----------Shop Items Target-------------
    exports['qb-target']:AddBoxZone("masquerade_Orders", vector3(-1199.88, -1515.12, 4.38), 1, 0.5,{
        name = "masquerade_Orders",
        heading = 125,
        debugPoly = false,
        minZ=0.97,
        maxZ=4.97
    },{
        options = {
            {
                event = "ps-masquerade:MaskOrders",
                icon = "far fa-clipboard",
                label = "Order Items",
                job = "masquerade",
            },
        },
        distance = 1.5
    
    })
    exports['qb-target']:AddBoxZone("masquerade_Orders1", vector3(-1219.29, -1431.54, 4.37), 0.5, 0.5,{
        name = "masquerade_Orders1",
        heading = 210,
        debugPoly = false,
        minZ=0.78,
        maxZ=4.78
    },{
        options = {
            {
                event = "ps-masquerade:MaskOrders",
                icon = "far fa-clipboard",
                label = "Order Items",
                job = "masquerade",
            },
        },
        distance = 1.5
    
    })
    exports['qb-target']:AddBoxZone("masquerade_Orders2", vector3(-1263.49, -1424.31, 4.37), 0.5, 0.5,{
        name = "masquerade_Orders2",
        heading = 210,
        debugPoly = false,
        minZ=0.77,
        maxZ=4.77
    },{
        options = {
            {
                event = "ps-masquerade:MaskOrders",
                icon = "far fa-clipboard",
                label = "Order Items",
                job = "masquerade",
            },
        },
        distance = 1.5
    
    })    
    -------------Storage-------------
    exports['qb-target']:AddBoxZone("masquerade_Storage", vector3(-1197.6, -1515.32, 4.38), 1, 2,{
        name = "masquerade_Storage",
        heading = 305,
        debugPoly = false,
        minZ=1.98,
        maxZ=5.98
    },{
        options = {
            {
                event = "ps-masquerade:Storage",
                icon = "far fa-clipboard",
                label = "Storage",
                job = "masquerade",
            },
        },
        distance = 1.5
    
    })
    exports['qb-target']:AddBoxZone("masquerade_Storageone", vector3(-1219.41, -1429.31, 4.37), 1, 2,{
        name = "masquerade_Storage0ne",
        heading = 305,
        debugPoly = false,
        minZ=1.97,
        maxZ=5.97
    },{
        options = {
            {
                event = "ps-masquerade:Storage0ne",
                icon = "far fa-clipboard",
                label = "Storage",
                job = "masquerade",
            },
        },
        distance = 1.5
    
    })
    exports['qb-target']:AddBoxZone("masquerade_Storagetwo", vector3(-1261.35, -1424.27, 4.37), 1, 2,{
        name = "masquerade_Storagetwo",
        heading = 310,
        debugPoly = false,
        minZ=1.77,
        maxZ=5.77
    },{
        options = {
            {
                event = "ps-masquerade:Storagetwo",
                icon = "far fa-clipboard",
                label = "Storage",
                job = "masquerade",
            },
        },
        distance = 1.5
    
    })

end)

-- MENU - CONTCT ---

RegisterNetEvent('ps-masquerade:dutymenu', function(data)

    exports['qb-menu']:openMenu({
       {
           header = "Manage Options",
           isMenuHeader = true, -- Set to true to make a nonclickable title
       },
       {
           header = "Clock On or Off",
           txt = "Duty On/Off",
           params = {
               event = "ps-masquerade:DutyB", 
               args = {
                   number = 0,
               }
           }
       },
       {
           header = "• Manage Business",
           txt = "Manage masquerade",
           params = {
               event = "qb-bossmenu:client:OpenMenu", 
               args = {
                   number = 1,
               }
           }
       },
	   {
           header = "close",
           txt = "",
           params = {
               event = "",
               args = {
                   number = 2,
               }
           }
       },
   })
   end)

RegisterNetEvent('ps-masquerade:MaskOrders', function(data)

    exports['qb-menu']:openMenu({
       {
           header = "Orders",
           isMenuHeader = true, -- Set to true to make a nonclickable title
       },
       {
           header = "• Order Items",
           txt = "Order Items",
           params = {
               event = "ps-masquerade:shop", 
               args = {
                   number = 0,
               }
           }
       },
       {
           header = "close",
           txt = "",
           params = {
               event = "",
               args = {
                   number = 1,
               }
           }
       },
   })
   end)

RegisterNetEvent('ps-masquerade:Storage', function(data)

    exports['qb-menu']:openMenu({
       {
           header = "Mask Menu",
           isMenuHeader = true, -- Set to true to make a nonclickable title
       },
       {
           header = "• Storage",
           txt = "",
           params = {
               event = "ps-masquerade:Storage", 
               args = {
                   number = 0,
               }
           }
       },
       {
           header = "close",
           txt = "",
           params = {
               event = "",
               args = {
                   number = 1,
               }
           }
       },
   
   })
   end)

RegisterNetEvent('ps-masquerade:Storage0ne', function(data)

    exports['qb-menu']:openMenu({
       {
           header = "Mask Menu",
           isMenuHeader = true, -- Set to true to make a nonclickable title
       },
       {
           header = "• Storage",
           txt = "",
           params = {
               event = "ps-masquerade:Storage0ne", 
               args = {
                   number = 0,
               }
           }
       },
       {
           header = "close",
           txt = "",
           params = {
               event = "",
               args = {
                   number = 1,
               }
           }
       },
   
   })
   end)

RegisterNetEvent('ps-masquerade:Storagetwo', function(data)

    exports['qb-menu']:openMenu({
       {
           header = "Mask Menu",
           isMenuHeader = true, -- Set to true to make a nonclickable title
       },
       {
           header = "• Storage",
           txt = "",
           params = {
               event = "ps-masquerade:Storagetwo", 
               args = {
                   number = 0,
               }
           }
       },
       {
           header = "close",
           txt = "",
           params = {
               event = "",
               args = {
                   number = 1,
               }
           }
       },
   
   })
   end)

RegisterNetEvent('qb-menu:masqueradeMenu', function(data)
    
	exports['qb-menu']:openMenu({
        {
            
            header = "| Masks Menu |",
            isMenuHeader = true, 
        },
        {
            
            header = "•1 Skull Mask",
            txt = "",
            isMenuHeader = true,
        },
        {
            
            header = "•2 Monkey Mask",
            txt = "",
            isMenuHeader = true,
        },  
        {
            
            header = "•3 Balaclava",
            txt = "",
            isMenuHeader = true,
        },
        {
            
            header = "•4 Scarecrow Mask",
            txt = "",
           isMenuHeader = true,
        },
        {
            
            header = "•5 Pig Mask",
            txt = "",
            isMenuHeader = true,
        },
		{
            
            header = "•6 Hockey Mask",
            txt = "",
            isMenuHeader = true,
        },
        {
            
            header = "•7 Red Sock Mask",
            txt = "",
            isMenuHeader = true,
        },
		{
            
            header = "•8 Clown Mask",
            txt = "",
            isMenuHeader = true,
        },
		{
            
            header = "•9 Long Nose",
            txt = "",
            isMenuHeader = true,
        },
		{
            
            header = "•10 Tshirtmask",
            txt = "",
            isMenuHeader = true,
        },
		{
            
            header = "•11 Bag Mask",
            txt = "",
            isMenuHeader = true,
        },
		{
            
            header = "•12 Gorilla Mask",
            txt = "",
            isMenuHeader = true,
        },		
		{
            
            header = "•12 Horse Mask",
            txt = "",
            isMenuHeader = true,
        },		
		{
            
            header = "•13 Uinicorn Mask",
            txt = "",
            isMenuHeader = true,
        },		
		{
            
            header = "•14 No Skin Mask",
            txt = "",
            isMenuHeader = true,
        },		
		{
           header = "close",
           txt = "",
           params = {
               event = "",
               args = {
                   number = 10,
               }
           }
       },
    })
    end)

-- Till Stuff --
RegisterNetEvent("ps-masquerade:bill", function()
    local bill = exports['qb-input']:ShowInput({
        header = "Cash Register",
        submitText = "Charge Customer",
        inputs = {
            {
                type = 'number',
                name = 'id',
                text = 'Citizen Id',
                isRequired = true

            },
            {
                type = 'number',
                name = 'amount',
                text = '$0.00',
                isRequired = true

            }
        }
    })
    if bill then
        if not bill.id or not bill.amount then return end
        TriggerServerEvent("ps-masquerade:bill:player", bill.id, bill.amount)
    end
end)

-- Drawtext -
function DrawText3D(x, y, z, text)
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


Citizen.CreateThread(function()
    if Config.Eye == "false" then
    local PlayerData = QBCore.Functions.GetPlayerData()
    while true do
        local sleep = 100
        if isLoggedIn then
            local pos = GetEntityCoords(PlayerPedId())
            if PlayerJob.name == 'masquerade' then
                for k, v in pairs(Config.Locations["duty"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 5 then
                        if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                            if onDuty then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ - Get off duty")
                            else
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~r~E~w~ - Get on duty")
                            end
                            if IsControlJustReleased(0, 38) then
                                onDuty = not onDuty
                                TriggerServerEvent("QBCore:ToggleDuty")
                            end
                        elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                            sleep = 5
                            DrawText3D(v.x, v.y, v.z, "on/off duty")
                        end
                    end
                end

                for k, v in pairs(Config.Locations["mask"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if onDuty then
                            if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Make Mask")
                                if IsControlJustReleased(0, 38) then
                                    TriggerEvent("ps-masquerade:Storage")
                                end
                            elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "Make mask")
                            end  
                        end
                    end
                end

                for k, v in pairs(Config.Locations["Orders"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if onDuty then
                            if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Open Orders")
                                if IsControlJustReleased(0, 38) then
                                    TriggerEvent("ps-masquerade:shop")
                                end
                            elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "Open Orders")
                            end  
                        end
                    end
                end

                for k, v in pairs(Config.Locations["storage"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if onDuty then
                            if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Open Storage")
                                if IsControlJustReleased(0, 38) then
                                    TriggerEvent("ps-masquerade:Storage")
                                end
                            elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "Open Storage")
                            end  
                        end
                    end
                end

                for k, v in pairs(Config.Locations["cashregister"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if onDuty then
                            if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Cash Register")
                                if IsControlJustReleased(0, 38) then
                                    TriggerEvent("ps-masquerade:bill")
                                end
                            elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "Cash Register")
                            end  
                        end
                    end
                end

                for k, v in pairs(Config.Locations["garage"]) do
                    if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if onDuty then
                            if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Garage")
                                if IsControlJustReleased(0, 38) then
                                    TriggerEvent("garage:masqueradeGarage")
                                end
                            elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                                sleep = 5
                                DrawText3D(v.x, v.y, v.z, "Garage")
                            end  
                        end
                    end
                end
            else
                Citizen.Wait(2000)
            end
            
            for k, v in pairs(Config.Locations["package"]) do
                if #(pos - vector3(v.x, v.y, v.z)) < 4.5 then
                        if #(pos - vector3(v.x, v.y, v.z)) < 1.5 then
                            sleep = 5
                            DrawText3D(v.x, v.y, v.z, "~g~E~w~ -  Package")
                            if IsControlJustReleased(0, 38) then
                                TriggerEvent("ps-masquerade:package")
                            end
                        elseif #(pos - vector3(v.x, v.y, v.z)) < 2.5 then
                            sleep = 5
                            DrawText3D(v.x, v.y, v.z, "Package")
                        end  
                end
            end

        end
        Citizen.Wait(sleep)
    end
end
end)
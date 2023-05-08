local isOn = true

RegisterNetEvent("QBCore:Client:OnPlayerLoaded", function()
    SendNUIMessage({
        action = "open"
    })
    isOn = true
end)

RegisterNetEvent("QBCore:Client:OnPlayerUnload", function()
    SendNUIMessage({
        action = "close"
    })
    isOn = false
end)

RegisterNetEvent('mb-shortcut:client:triggerShortcut', function()
    if isOn then
        SendNUIMessage({
            action = "close"
        })
        isOn = false
    else
        SendNUIMessage({
            action = "open"
        })
        isOn = true
    end
end)

RegisterCommand('shortcut', function()
    TriggerEvent('mb-shortcut:client:triggerShortcut')
end)
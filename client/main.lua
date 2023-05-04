local isOn = true

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
function SetQueueMax(queue, max)
    local tmp = {
        queue = tostring(queue),
        max = tonumber(max)
    }

    SendNUIMessage({maxNotifications = tmp})
end

function SendNotification(options)
    options.animation = options.animation or {}
    options.sounds = options.sounds or {}
    options.docTitle = options.docTitle or {}

    local options = {
        type = options.type or "info",
        layout = options.layout or "centerLeft",
        theme = options.theme or "gta",
        text = options.text or "Powiadomienie Testowe",
        timeout = options.timeout or 5000,
        progressBar = options.progressBar ~= false and true or false,
        closeWith = options.closeWith or {},
        animation = {
            open = options.animation.open or "gta_effects_open",
            close = options.animation.close or "gta_effects_close"
        },
        sounds = {
            volume = options.sounds.volume or 0.5,
            conditions = options.sounds.conditions or {"docVisible"},
            sources = options.sounds.sources or {"notif.wav"}
        },
        docTitle = {
            conditions = options.docTitle.conditions or {}
        },
        modal = options.modal or false,
        id = options.id or false,
        force = options.force or false,
        queue = options.queue or "global",
        killer = options.killer or false,
        container = options.container or false,
        buttons = options.button or false
    }

    SendNUIMessage({options = options})
end

RegisterNetEvent("hw_notify:SendNotification")
AddEventHandler("hw_notify:SendNotification", function(options)
    SendNotification(options)
end)

RegisterNetEvent("hw_notify:SetQueueMax")
AddEventHandler("hw_notify:SetQueueMax", function(queue, max)
    SetQueueMax(queue, max)
end)

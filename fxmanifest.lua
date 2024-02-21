fx_version 'adamant'
games { 'gta5' }

version '1.0.2'
author 'HenkW'
description "Simple Notification Script"

ui_page "html/index.html"

client_script "cl_notify.lua"
server_script "version.lua"

export "SetQueueMax"
export "SendNotification"

files {
    "html/index.html",
    "html/hw_notify.js",
    "html/noty.js",
    "html/noty.css",
    "html/themes.css"
}




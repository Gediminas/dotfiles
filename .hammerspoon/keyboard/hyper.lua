local status, hyperModeAppMappings = pcall(require, 'keyboard.hyper-apps')

if not status then
  hyperModeAppMappings = require('keyboard.hyper-apps-defaults')
end

local hyper = {"shift", "cmd", "alt", "ctrl"}

for i, mapping in ipairs(hyperModeAppMappings) do
  local key = mapping[1]
  local app = mapping[2]
  hs.hotkey.bind(hyper, key, function()
    if (type(app) == 'string') then
      hs.application.open(app)
    elseif (type(app) == 'function') then
      app()
    else
      hs.logger.new('hyper'):e('Invalid mapping for Hyper +', key)
    end
  end)
end

local WifiMsgShown = ""
local WifiMsg = ""

function showWifiMsg()
    if WifiMsgShown ~= WifiMsg then
      -- hs.alert.show(msg)
      hs.notify.new({title='Hammerspoon', informativeText=WifiMsg}):send()
      WifiMsgShown = WifiMsg
    end
end

function pingWifi(object, message, seqnum, error)
    if message == "didFinish" then
        SSID = hs.wifi.currentNetwork()
        avg = tonumber(string.match(object:summary(), '/(%d+.%d+)/'))
        if avg == 0.0 then
            WifiMsg = "🏖️  NO-NETWORK"     .. "  [" .. SSID .. "]"
        elseif avg < 200.0 then
            WifiMsg = "🐇 " .. avg .. "ms" .. "  [" .. SSID .. "]"
        elseif avg < 500.0 then
            WifiMsg = "🐢 " .. avg .. "ms" .. "  [" .. SSID .. "]"
        else
            WifiMsg = "💩 " .. avg .. "ms" .. "  [" .. SSID .. "]"
        end
        showWifiMsg()
    end
    --hs.notify.new({title='Hammerspoon111', informativeText=object}):send()
end
function ssidChangedCallback()
    SSID = hs.wifi.currentNetwork()
    if SSID == nil then
        WifiMsg = "🏖️🏖️   DISCONNECTED"
        showWifiMsg()
    else
        hs.network.ping.ping("8.8.8.8", 1, 0.01, 1.0, "any", pingWifi)
    end
end

hs.hotkey.bind(hyper, "0", function()
   WifiMsgShown = ""  -- Force show message
   ssidChangedCallback()
end)


wifiWatcher = hs.wifi.watcher.new(ssidChangedCallback)
wifiWatcher:watchingFor({ "SSIDChange", "BSSIDChange", "linkChange", "linkQualityChange", "powerChange" }) --
wifiWatcher:start()
ssidChangedCallback()



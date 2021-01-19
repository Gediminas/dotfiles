-- ReloadConfiguration

hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start() 

-- Caffeine

caffeine = hs.menubar.new()
if caffeine then
  function setCaffeineDisplay(state)
    if state then
      caffeine:setTitle("🟢")
    else
      caffeine:setTitle("⚫️")
    end
  end

  function caffeineClicked()
    setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
  end

  caffeine:setClickCallback(caffeineClicked)
  setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end

-- wifiWatcher

function ssidChangedCallback()
    newSSID = hs.wifi.currentNetwork()
    hs.alert.show(newSSID)
end

wifiWatcher = hs.wifi.watcher.new(ssidChangedCallback)
wifiWatcher:start()

-- HoldToQuit

hs.loadSpoon("HoldToQuit")
spoon.HoldToQuit:start()

-- Test

local hyper = { "cmd", "alt", "ctrl" }
--local hyper = { "F15" }

local applicationHotkeys = {
  s = 'Safari',
  a = 'iTerm',
}

for key, app in pairs(applicationHotkeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end

-- END

hs.alert.show("Hammerspoon loaded")

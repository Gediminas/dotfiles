-- ReloadConffor iguration

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
require('Hyper1')

hs.alert.show("Ready to rock 🤘")

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

-- if you want to use a different keyboard combo, define it here.
local hyper       = {"shift", "ctrl", "alt"}
local hyper_shift = {"shift", "ctrl", "alt", "cmd"}

-- define your own shortcut list here
local windows = {
	Q = "Anki",                     -- Questionaire
	W = "Messenger",                -- Write BS
	E = "Emacs",                    -- Editor
	R = "Double Commander",
	T = "Microsoft Remote Desktop", -- Teleport
	Y = "Y not assigned",           -- Y

	A = "A not assigned",           -- A
  --S                             -- Switch app window
	D = "Emacs",                    -- Editor
	F = "Safari",                   -- First Browser
	G = "Google Chrome",            -- Google Browser

	Z = "Mail",
	X = "XCode",                    -- Dev Environment
	C = "iTerm2",
	V = "Google Chrome",            -- View Result
	-- V = "Code",                     -- V = "Visual Studio Code",
	B = "B not assigned",           -- B

	M = "Messenger",
	N = "nvALT",
	['\\'] = "Hammerspoon", -- opens the Hammerspoon console. useful
}

-- if the app has to be launched by a different name
-- than the one the windows are found by, this list
-- will take precedence when opening the app.
local windowLaunchNames = {
	-- currently just VS Code
	-- V = "Visual Studio Code",
}

local prevApp = nil
local currAppWindowIndex = 1
local currAppWindows = nil

-- set up the binding for each key combo
for key, appName in pairs(windows) do
  hs.hotkey.bind(hyper, key, function()
    local frontApp = hs.application.frontmostApplication();
    local frontName = frontApp:name()
    -- hs.alert.show(" AA.  " .. frontName .. " => " .. appName, hs.alert.defaultStyle, hs.screen.mainScreen(), 60)
    if frontName == appName then
      if prevApp then
        prevApp:activate()
      end
    else
      local app = hs.application.get(appName)
      if app then
        app:activate()
        prevApp = frontApp
        currAppWindows = nil
        currAppWindowIndex = 1
      else
        local launchName = windowLaunchNames[key] or appName
        hs.alert.show("'" .. launchName .. "' not launched")
      end
    end
  end)

  hs.hotkey.bind(hyper_shift, key, function()
    --prevApp = hs.application.frontmostApplication()
    local launchName = windowLaunchNames[key] or appName
    hs.alert.show("Launching " .. launchName)
    hs.application.open(launchName)

    currAppWindows = nil
    currAppWindowIndex = 1
  end)
end
-- END

hs.hotkey.bind(hyper, "S", function()

    frontAppName = hs.application.frontmostApplication()
    if currAppWindows == nil then
      local app = hs.application.find(frontAppName)
      if app then
        currAppWindows = hs.fnutils.filter(app:allWindows(), function(w)
            return w:isStandard()
        end)
      end
    end

    hs.alert.show(#currAppWindows)

    if currAppWindows and #currAppWindows > 0 then
      currAppWindowIndex = currAppWindowIndex % #currAppWindows + 1
      currAppWindows[currAppWindowIndex]:focus()
    end
end)

hs.alert.show("Ready to rock 🤘")
